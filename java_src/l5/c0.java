package l5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import n5.x0;
import n5.y0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: e  reason: collision with root package name */
    private static volatile y0 f25273e;

    /* renamed from: g  reason: collision with root package name */
    private static Context f25275g;

    /* renamed from: a  reason: collision with root package name */
    static final a0 f25269a = new u(y.k("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b  reason: collision with root package name */
    static final a0 f25270b = new v(y.k("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c  reason: collision with root package name */
    static final a0 f25271c = new w(y.k("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d  reason: collision with root package name */
    static final a0 f25272d = new x(y.k("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f  reason: collision with root package name */
    private static final Object f25274f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 a(String str, y yVar, boolean z10, boolean z11) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return f(str, yVar, z10, z11);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 b(String str, boolean z10, boolean z11, boolean z12) {
        return g(str, z10, false, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String c(boolean z10, String str, y yVar) {
        String str2;
        boolean z11 = false;
        if (!z10 && f(str, yVar, true, false).f25312a) {
            z11 = true;
        }
        if (true != z11) {
            str2 = "not allowed";
        } else {
            str2 = "debug cert rejected";
        }
        MessageDigest b10 = com.google.android.gms.common.util.a.b("SHA-256");
        n5.q.k(b10);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, com.google.android.gms.common.util.i.a(b10.digest(yVar.e1())), Boolean.valueOf(z10), "12451000.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void d(Context context) {
        synchronized (c0.class) {
            if (f25275g == null) {
                if (context != null) {
                    f25275g = context.getApplicationContext();
                    return;
                }
                return;
            }
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        boolean z10;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                h();
                z10 = f25273e.j();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.a e10) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            z10 = false;
        }
        return z10;
    }

    private static l0 f(final String str, final y yVar, final boolean z10, boolean z11) {
        try {
            h();
            n5.q.k(f25275g);
            try {
                if (f25273e.H0(new h0(str, yVar, z10, z11), u5.b.e1(f25275g.getPackageManager()))) {
                    return l0.b();
                }
                return new j0(new Callable() { // from class: l5.t
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return c0.c(z10, str, yVar);
                    }
                }, null);
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return l0.d("module call", e10);
            }
        } catch (DynamiteModule.a e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return l0.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [u5.a, android.os.IBinder] */
    private static l0 g(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        l0 d10;
        f0 j02;
        PackageManager.NameNotFoundException nameNotFoundException;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            n5.q.k(f25275g);
            try {
                h();
                d0 d0Var = new d0(str, z10, false, u5.b.e1(f25275g), false, true);
                try {
                    if (z13) {
                        j02 = f25273e.q0(d0Var);
                    } else {
                        j02 = f25273e.j0(d0Var);
                    }
                    if (j02.i()) {
                        d10 = l0.f(j02.l());
                    } else {
                        String g10 = j02.g();
                        if (j02.m() == 4) {
                            nameNotFoundException = new PackageManager.NameNotFoundException();
                        } else {
                            nameNotFoundException = null;
                        }
                        if (g10 == null) {
                            g10 = "error checking package certificate";
                        }
                        d10 = l0.g(j02.l(), j02.m(), g10, nameNotFoundException);
                    }
                } catch (RemoteException e10) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                    d10 = l0.d("module call", e10);
                }
            } catch (DynamiteModule.a e11) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
                d10 = l0.d("module init: ".concat(String.valueOf(e11.getMessage())), e11);
            }
            return d10;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static void h() {
        if (f25273e != null) {
            return;
        }
        n5.q.k(f25275g);
        synchronized (f25274f) {
            if (f25273e == null) {
                f25273e = x0.d(DynamiteModule.d(f25275g, DynamiteModule.f5939f, "com.google.android.gms.googlecertificates").c("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
