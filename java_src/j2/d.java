package j2;

import android.content.Context;
import android.util.Log;
import j2.c;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import k2.i;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected final Set f24294a;

    /* renamed from: b  reason: collision with root package name */
    protected final c.b f24295b;

    /* renamed from: c  reason: collision with root package name */
    protected final c.a f24296c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f24297d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f24298e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f24299a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f24300b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f24301c;

        a(Context context, String str, String str2, c.InterfaceC0225c interfaceC0225c) {
            this.f24299a = context;
            this.f24300b = str;
            this.f24301c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d.this.g(this.f24299a, this.f24300b, this.f24301c);
                throw null;
            } catch (j2.b unused) {
                throw null;
            } catch (UnsatisfiedLinkError unused2) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f24303a;

        b(String str) {
            this.f24303a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f24303a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d() {
        this(new e(), new j2.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Context context, String str, String str2) {
        i iVar;
        if (this.f24294a.contains(str) && !this.f24297d) {
            i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f24295b.b(str);
            this.f24294a.add(str);
            i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e10) {
            i("Loading the library normally failed: %s", Log.getStackTraceString(e10));
            i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File d10 = d(context, str, str2);
            if (!d10.exists() || this.f24297d) {
                if (this.f24297d) {
                    i("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                this.f24296c.a(context, this.f24295b.d(), this.f24295b.a(str), d10, this);
            }
            try {
                if (this.f24298e) {
                    i iVar2 = null;
                    try {
                        iVar = new i(d10);
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        List<String> c10 = iVar.c();
                        iVar.close();
                        for (String str3 : c10) {
                            e(context, this.f24295b.c(str3));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        iVar2 = iVar;
                        if (iVar2 != null) {
                            iVar2.close();
                        }
                        throw th;
                    }
                }
            } catch (IOException unused) {
            }
            this.f24295b.e(d10.getAbsolutePath());
            this.f24294a.add(str);
            i("%s (%s) was re-linked!", str, str2);
        }
    }

    protected void b(Context context, String str, String str2) {
        File c10 = c(context);
        File d10 = d(context, str, str2);
        File[] listFiles = c10.listFiles(new b(this.f24295b.a(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f24297d || !file.getAbsolutePath().equals(d10.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    protected File c(Context context) {
        return context.getDir("lib", 0);
    }

    protected File d(Context context, String str, String str2) {
        String a10 = this.f24295b.a(str);
        if (f.a(str2)) {
            return new File(c(context), a10);
        }
        File c10 = c(context);
        return new File(c10, a10 + "." + str2);
    }

    public void e(Context context, String str) {
        f(context, str, null, null);
    }

    public void f(Context context, String str, String str2, c.InterfaceC0225c interfaceC0225c) {
        if (context != null) {
            if (!f.a(str)) {
                i("Beginning load of %s...", str);
                if (interfaceC0225c == null) {
                    g(context, str, str2);
                    return;
                } else {
                    new Thread(new a(context, str, str2, interfaceC0225c)).start();
                    return;
                }
            }
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        throw new IllegalArgumentException("Given context is null");
    }

    public void h(String str) {
    }

    public void i(String str, Object... objArr) {
        h(String.format(Locale.US, str, objArr));
    }

    protected d(c.b bVar, c.a aVar) {
        this.f24294a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar != null) {
            this.f24295b = bVar;
            this.f24296c = aVar;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library installer");
    }
}
