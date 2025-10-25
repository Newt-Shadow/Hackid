package io.sentry.cache;

import io.sentry.ILogger;
import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.a4;
import io.sentry.c0;
import io.sentry.f6;
import io.sentry.i5;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.x3;
import io.sentry.x4;
import io.sentry.y0;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class f extends c implements g {

    /* renamed from: f  reason: collision with root package name */
    private final CountDownLatch f22933f;

    /* renamed from: g  reason: collision with root package name */
    private final Map f22934g;

    public f(s5 s5Var, String str, int i10) {
        super(s5Var, str, i10);
        this.f22934g = new WeakHashMap();
        this.f22933f = new CountDownLatch(1);
    }

    private File[] G() {
        File[] listFiles;
        if (m() && (listFiles = this.f22930c.listFiles(new FilenameFilter() { // from class: io.sentry.cache.e
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean N;
                N = f.N(file, str);
                return N;
            }
        })) != null) {
            return listFiles;
        }
        return new File[0];
    }

    public static g I(s5 s5Var) {
        String cacheDirPath = s5Var.getCacheDirPath();
        int maxCacheItems = s5Var.getMaxCacheItems();
        if (cacheDirPath == null) {
            s5Var.getLogger().c(j5.WARNING, "cacheDirPath is null, returning NoOpEnvelopeCache", new Object[0]);
            return io.sentry.transport.s.d();
        }
        return new f(s5Var, cacheDirPath, maxCacheItems);
    }

    public static File K(String str) {
        return new File(str, "session.json");
    }

    private synchronized File L(a4 a4Var) {
        String str;
        if (this.f22934g.containsKey(a4Var)) {
            str = (String) this.f22934g.get(a4Var);
        } else {
            String str2 = UUID.randomUUID() + ".envelope";
            this.f22934g.put(a4Var, str2);
            str = str2;
        }
        return new File(this.f22930c.getAbsolutePath(), str);
    }

    public static File M(String str) {
        return new File(str, "previous_session.json");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean N(File file, String str) {
        return str.endsWith(".envelope");
    }

    private void O(c0 c0Var) {
        Date date;
        Object g10 = io.sentry.util.j.g(c0Var);
        if (g10 instanceof io.sentry.hints.a) {
            File M = M(this.f22930c.getAbsolutePath());
            if (M.exists()) {
                ILogger logger = this.f22928a.getLogger();
                j5 j5Var = j5.WARNING;
                logger.c(j5Var, "Previous session is not ended, we'd need to end it.", new Object[0]);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(M), c.f22927e));
                    f6 f6Var = (f6) ((y0) this.f22929b.a()).c(bufferedReader, f6.class);
                    if (f6Var != null) {
                        io.sentry.hints.a aVar = (io.sentry.hints.a) g10;
                        Long c10 = aVar.c();
                        if (c10 != null) {
                            date = io.sentry.j.d(c10.longValue());
                            Date k10 = f6Var.k();
                            if (k10 == null || date.before(k10)) {
                                this.f22928a.getLogger().c(j5Var, "Abnormal exit happened before previous session start, not ending the session.", new Object[0]);
                                bufferedReader.close();
                                return;
                            }
                        } else {
                            date = null;
                        }
                        f6Var.q(f6.b.Abnormal, null, true, aVar.g());
                        f6Var.d(date);
                        U(M, f6Var);
                    }
                    bufferedReader.close();
                    return;
                } catch (Throwable th) {
                    this.f22928a.getLogger().b(j5.ERROR, "Error processing previous session.", th);
                    return;
                }
            }
            this.f22928a.getLogger().c(j5.DEBUG, "No previous session file to end.", new Object[0]);
        }
    }

    private void Q(File file, a4 a4Var) {
        Iterable c10 = a4Var.c();
        if (c10.iterator().hasNext()) {
            x4 x4Var = (x4) c10.iterator().next();
            if (i5.Session.equals(x4Var.G().b())) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(x4Var.E()), c.f22927e));
                    f6 f6Var = (f6) ((y0) this.f22929b.a()).c(bufferedReader, f6.class);
                    if (f6Var == null) {
                        this.f22928a.getLogger().c(j5.ERROR, "Item of type %s returned null by the parser.", x4Var.G().b());
                    } else {
                        U(file, f6Var);
                    }
                    bufferedReader.close();
                    return;
                } catch (Throwable th) {
                    this.f22928a.getLogger().b(j5.ERROR, "Item failed to process.", th);
                    return;
                }
            }
            this.f22928a.getLogger().c(j5.INFO, "Current envelope has a different envelope type %s", x4Var.G().b());
            return;
        }
        this.f22928a.getLogger().c(j5.INFO, "Current envelope %s is empty", file.getAbsolutePath());
    }

    private void S() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.f22928a.getCacheDirPath(), "last_crash"));
            fileOutputStream.write(io.sentry.j.g(io.sentry.j.c()).getBytes(c.f22927e));
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f22928a.getLogger().b(j5.ERROR, "Error writing the crash marker file to the disk", th);
        }
    }

    private void T(File file, a4 a4Var) {
        if (file.exists()) {
            this.f22928a.getLogger().c(j5.DEBUG, "Overwriting envelope to offline storage: %s", file.getAbsolutePath());
            if (!file.delete()) {
                this.f22928a.getLogger().c(j5.ERROR, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            ((y0) this.f22929b.a()).b(a4Var, fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f22928a.getLogger().a(j5.ERROR, th, "Error writing Envelope %s to offline storage", file.getAbsolutePath());
        }
    }

    private void U(File file, f6 f6Var) {
        if (file.exists()) {
            this.f22928a.getLogger().c(j5.DEBUG, "Overwriting session to offline storage: %s", f6Var.j());
            if (!file.delete()) {
                this.f22928a.getLogger().c(j5.ERROR, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, c.f22927e));
            ((y0) this.f22929b.a()).a(f6Var, bufferedWriter);
            bufferedWriter.close();
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f22928a.getLogger().a(j5.ERROR, th, "Error writing Session to offline storage: %s", f6Var.j());
        }
    }

    public void J() {
        this.f22933f.countDown();
    }

    public boolean R() {
        try {
            return this.f22933f.await(this.f22928a.getSessionFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            this.f22928a.getLogger().c(j5.DEBUG, "Timed out waiting for previous session to flush.", new Object[0]);
            return false;
        }
    }

    public void W(a4 a4Var, c0 c0Var) {
        io.sentry.util.q.c(a4Var, "Envelope is required.");
        B(G());
        File K = K(this.f22930c.getAbsolutePath());
        File M = M(this.f22930c.getAbsolutePath());
        if (io.sentry.util.j.h(c0Var, io.sentry.hints.l.class) && !K.delete()) {
            this.f22928a.getLogger().c(j5.WARNING, "Current envelope doesn't exist.", new Object[0]);
        }
        if (io.sentry.util.j.h(c0Var, io.sentry.hints.a.class)) {
            O(c0Var);
        }
        if (io.sentry.util.j.h(c0Var, io.sentry.hints.n.class)) {
            if (K.exists()) {
                this.f22928a.getLogger().c(j5.WARNING, "Current session is not ended, we'd need to end it.", new Object[0]);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(K), c.f22927e));
                    f6 f6Var = (f6) ((y0) this.f22929b.a()).c(bufferedReader, f6.class);
                    if (f6Var != null) {
                        U(M, f6Var);
                    }
                    bufferedReader.close();
                } catch (Throwable th) {
                    this.f22928a.getLogger().b(j5.ERROR, "Error processing session.", th);
                }
            }
            Q(K, a4Var);
            boolean exists = new File(this.f22928a.getCacheDirPath(), ".sentry-native/last_crash").exists();
            if (!exists) {
                File file = new File(this.f22928a.getCacheDirPath(), "last_crash");
                if (file.exists()) {
                    this.f22928a.getLogger().c(j5.INFO, "Crash marker file exists, crashedLastRun will return true.", new Object[0]);
                    if (!file.delete()) {
                        this.f22928a.getLogger().c(j5.ERROR, "Failed to delete the crash marker file. %s.", file.getAbsolutePath());
                    }
                    exists = true;
                }
            }
            x3.a().b(exists);
            J();
        }
        File L = L(a4Var);
        if (L.exists()) {
            this.f22928a.getLogger().c(j5.WARNING, "Not adding Envelope to offline storage because it already exists: %s", L.getAbsolutePath());
            return;
        }
        this.f22928a.getLogger().c(j5.DEBUG, "Adding Envelope to offline storage: %s", L.getAbsolutePath());
        T(L, a4Var);
        if (io.sentry.util.j.h(c0Var, UncaughtExceptionHandlerIntegration.a.class)) {
            S();
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        File[] G = G();
        ArrayList arrayList = new ArrayList(G.length);
        for (File file : G) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                arrayList.add(((y0) this.f22929b.a()).d(bufferedInputStream));
                bufferedInputStream.close();
            } catch (FileNotFoundException unused) {
                this.f22928a.getLogger().c(j5.DEBUG, "Envelope file '%s' disappeared while converting all cached files to envelopes.", file.getAbsolutePath());
            } catch (IOException e10) {
                this.f22928a.getLogger().b(j5.ERROR, String.format("Error while reading cached envelope from file %s", file.getAbsolutePath()), e10);
            }
        }
        return arrayList.iterator();
    }

    @Override // io.sentry.cache.g
    public void z(a4 a4Var) {
        io.sentry.util.q.c(a4Var, "Envelope is required.");
        File L = L(a4Var);
        if (L.exists()) {
            this.f22928a.getLogger().c(j5.DEBUG, "Discarding envelope from cache: %s", L.getAbsolutePath());
            if (!L.delete()) {
                this.f22928a.getLogger().c(j5.ERROR, "Failed to delete envelope: %s", L.getAbsolutePath());
                return;
            }
            return;
        }
        this.f22928a.getLogger().c(j5.DEBUG, "Envelope was not cached: %s", L.getAbsolutePath());
    }
}
