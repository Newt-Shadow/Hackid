package wa;

import android.content.Context;
/* loaded from: classes.dex */
enum d {
    RSA_ECB_PKCS1Padding(new e() { // from class: wa.b
        @Override // wa.e
        public final a a(Context context) {
            return new f(context);
        }
    }, 1),
    RSA_ECB_OAEPwithSHA_256andMGF1Padding(new e() { // from class: wa.c
        @Override // wa.e
        public final a a(Context context) {
            return new g(context);
        }
    }, 23);
    

    /* renamed from: a  reason: collision with root package name */
    final e f32003a;

    /* renamed from: b  reason: collision with root package name */
    final int f32004b;

    d(e eVar, int i10) {
        this.f32003a = eVar;
        this.f32004b = i10;
    }
}
