package wa;

import android.content.Context;
/* loaded from: classes.dex */
enum l {
    AES_CBC_PKCS7Padding(new n() { // from class: wa.j
        @Override // wa.n
        public final i a(Context context, a aVar) {
            return new h(context, aVar);
        }
    }, 1),
    AES_GCM_NoPadding(new n() { // from class: wa.k
        @Override // wa.n
        public final i a(Context context, a aVar) {
            return new o(context, aVar);
        }
    }, 23);
    

    /* renamed from: a  reason: collision with root package name */
    final n f32013a;

    /* renamed from: b  reason: collision with root package name */
    final int f32014b;

    l(n nVar, int i10) {
        this.f32013a = nVar;
        this.f32014b = i10;
    }
}
