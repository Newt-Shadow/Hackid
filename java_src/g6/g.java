package g6;

import m5.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g extends l {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m5.j f16276b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b f16277c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(b bVar, m5.j jVar) {
        this.f16277c = bVar;
        this.f16276b = jVar;
    }

    @Override // m5.q
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
        d6.n nVar = (d6.n) obj;
        m6.l lVar = (m6.l) obj2;
        if (b()) {
            h hVar = new h(this.f16277c, lVar);
            try {
                j.a b10 = this.f16276b.b();
                if (b10 != null) {
                    nVar.o0(b10, hVar);
                }
            } catch (RuntimeException e10) {
                lVar.d(e10);
            }
        }
    }
}
