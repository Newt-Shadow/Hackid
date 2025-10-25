package io.sentry.cache;

import io.sentry.a4;
import io.sentry.f6;
import io.sentry.i5;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.util.m;
import io.sentry.x4;
import io.sentry.y0;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: e  reason: collision with root package name */
    protected static final Charset f22927e = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    protected s5 f22928a;

    /* renamed from: b  reason: collision with root package name */
    protected final io.sentry.util.m f22929b = new io.sentry.util.m(new m.a() { // from class: io.sentry.cache.a
        @Override // io.sentry.util.m.a
        public final Object a() {
            y0 r10;
            r10 = c.this.r();
            return r10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    protected final File f22930c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22931d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(s5 s5Var, String str, int i10) {
        io.sentry.util.q.c(str, "Directory is required.");
        this.f22928a = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required.");
        this.f22930c = new File(str);
        this.f22931d = i10;
    }

    private f6 A(x4 x4Var) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(x4Var.E()), f22927e));
            f6 f6Var = (f6) ((y0) this.f22929b.a()).c(bufferedReader, f6.class);
            bufferedReader.close();
            return f6Var;
        } catch (Throwable th) {
            this.f22928a.getLogger().b(j5.ERROR, "Failed to deserialize the session.", th);
            return null;
        }
    }

    private void C(a4 a4Var, File file, long j10) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            ((y0) this.f22929b.a()).b(a4Var, fileOutputStream);
            file.setLastModified(j10);
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f22928a.getLogger().b(j5.ERROR, "Failed to serialize the new envelope to the disk.", th);
        }
    }

    private void D(File[] fileArr) {
        if (fileArr.length > 1) {
            Arrays.sort(fileArr, new Comparator() { // from class: io.sentry.cache.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int s10;
                    s10 = c.s((File) obj, (File) obj2);
                    return s10;
                }
            });
        }
    }

    private a4 i(a4 a4Var, x4 x4Var) {
        ArrayList arrayList = new ArrayList();
        for (x4 x4Var2 : a4Var.c()) {
            arrayList.add(x4Var2);
        }
        arrayList.add(x4Var);
        return new a4(a4Var.b(), arrayList);
    }

    private f6 l(a4 a4Var) {
        for (x4 x4Var : a4Var.c()) {
            if (n(x4Var)) {
                return A(x4Var);
            }
        }
        return null;
    }

    private boolean n(x4 x4Var) {
        if (x4Var == null) {
            return false;
        }
        return x4Var.G().b().equals(i5.Session);
    }

    private boolean o(a4 a4Var) {
        if (!a4Var.c().iterator().hasNext()) {
            return false;
        }
        return true;
    }

    private boolean p(f6 f6Var) {
        if (!f6Var.l().equals(f6.b.Ok) || f6Var.j() == null) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ y0 r() {
        return this.f22928a.getSerializer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int s(File file, File file2) {
        return Long.compare(file.lastModified(), file2.lastModified());
    }

    private void t(File file, File[] fileArr) {
        Boolean g10;
        int i10;
        File file2;
        a4 y10;
        x4 x4Var;
        f6 A;
        a4 y11 = y(file);
        if (y11 != null && o(y11)) {
            this.f22928a.getClientReportRecorder().b(io.sentry.clientreport.f.CACHE_OVERFLOW, y11);
            f6 l10 = l(y11);
            if (l10 != null && p(l10) && (g10 = l10.g()) != null && g10.booleanValue()) {
                int length = fileArr.length;
                for (i10 = 0; i10 < length; i10++) {
                    file2 = fileArr[i10];
                    y10 = y(file2);
                    if (y10 != null && o(y10)) {
                        Iterator it = y10.c().iterator();
                        while (true) {
                            x4Var = null;
                            if (!it.hasNext()) {
                                break;
                            }
                            x4 x4Var2 = (x4) it.next();
                            if (n(x4Var2) && (A = A(x4Var2)) != null && p(A)) {
                                Boolean g11 = A.g();
                                if (g11 != null && g11.booleanValue()) {
                                    this.f22928a.getLogger().c(j5.ERROR, "Session %s has 2 times the init flag.", l10.j());
                                    return;
                                } else if (l10.j() != null && l10.j().equals(A.j())) {
                                    A.n();
                                    try {
                                        x4Var = x4.C((y0) this.f22929b.a(), A);
                                        it.remove();
                                        break;
                                    } catch (IOException e10) {
                                        this.f22928a.getLogger().a(j5.ERROR, e10, "Failed to create new envelope item for the session %s", l10.j());
                                    }
                                }
                            }
                        }
                    }
                }
                return;
            }
            return;
        }
        return;
        if (x4Var != null) {
            a4 i11 = i(y10, x4Var);
            long lastModified = file2.lastModified();
            if (!file2.delete()) {
                this.f22928a.getLogger().c(j5.WARNING, "File can't be deleted: %s", file2.getAbsolutePath());
            }
            C(i11, file2, lastModified);
            return;
        }
    }

    private a4 y(File file) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            a4 d10 = ((y0) this.f22929b.a()).d(bufferedInputStream);
            bufferedInputStream.close();
            return d10;
        } catch (IOException e10) {
            this.f22928a.getLogger().b(j5.ERROR, "Failed to deserialize the envelope.", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(File[] fileArr) {
        int length = fileArr.length;
        if (length >= this.f22931d) {
            this.f22928a.getLogger().c(j5.WARNING, "Cache folder if full (respecting maxSize). Rotating files", new Object[0]);
            int i10 = (length - this.f22931d) + 1;
            D(fileArr);
            File[] fileArr2 = (File[]) Arrays.copyOfRange(fileArr, i10, length);
            for (int i11 = 0; i11 < i10; i11++) {
                File file = fileArr[i11];
                t(file, fileArr2);
                if (!file.delete()) {
                    this.f22928a.getLogger().c(j5.WARNING, "File can't be deleted: %s", file.getAbsolutePath());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean m() {
        if (this.f22930c.isDirectory() && this.f22930c.canWrite() && this.f22930c.canRead()) {
            return true;
        }
        this.f22928a.getLogger().c(j5.ERROR, "The directory for caching files is inaccessible.: %s", this.f22930c.getAbsolutePath());
        return false;
    }
}
