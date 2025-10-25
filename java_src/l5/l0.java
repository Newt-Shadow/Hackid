package l5;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l0 {

    /* renamed from: e  reason: collision with root package name */
    private static final l0 f25311e = new l0(true, 3, 1, null, null);

    /* renamed from: a  reason: collision with root package name */
    final boolean f25312a;

    /* renamed from: b  reason: collision with root package name */
    final String f25313b;

    /* renamed from: c  reason: collision with root package name */
    final Throwable f25314c;

    /* renamed from: d  reason: collision with root package name */
    final int f25315d;

    private l0(boolean z10, int i10, int i11, String str, Throwable th) {
        this.f25312a = z10;
        this.f25315d = i10;
        this.f25313b = str;
        this.f25314c = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 b() {
        return f25311e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 c(String str) {
        return new l0(false, 1, 5, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 d(String str, Throwable th) {
        return new l0(false, 1, 5, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 f(int i10) {
        return new l0(true, i10, 1, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l0 g(int i10, int i11, String str, Throwable th) {
        return new l0(false, i10, i11, str, th);
    }

    String a() {
        return this.f25313b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (!this.f25312a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f25314c != null) {
                Log.d("GoogleCertificatesRslt", a(), this.f25314c);
            } else {
                Log.d("GoogleCertificatesRslt", a());
            }
        }
    }
}
