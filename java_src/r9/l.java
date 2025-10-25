package r9;

import java.util.Map;
/* loaded from: classes.dex */
public final class l extends p {

    /* renamed from: i  reason: collision with root package name */
    private final p f29023i = new e();

    private static d9.n t(d9.n nVar) {
        String f10 = nVar.f();
        if (f10.charAt(0) == '0') {
            d9.n nVar2 = new d9.n(f10.substring(1), null, nVar.e(), d9.a.UPC_A);
            if (nVar.d() != null) {
                nVar2.g(nVar.d());
            }
            return nVar2;
        }
        throw d9.f.a();
    }

    @Override // r9.k, d9.l
    public d9.n b(d9.c cVar, Map map) {
        return t(this.f29023i.b(cVar, map));
    }

    @Override // r9.k, d9.l
    public d9.n c(d9.c cVar) {
        return t(this.f29023i.c(cVar));
    }

    @Override // r9.p, r9.k
    public d9.n d(int i10, j9.a aVar, Map map) {
        return t(this.f29023i.d(i10, aVar, map));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r9.p
    public int m(j9.a aVar, int[] iArr, StringBuilder sb2) {
        return this.f29023i.m(aVar, iArr, sb2);
    }

    @Override // r9.p
    public d9.n n(int i10, j9.a aVar, int[] iArr, Map map) {
        return t(this.f29023i.n(i10, aVar, iArr, map));
    }

    @Override // r9.p
    d9.a r() {
        return d9.a.UPC_A;
    }
}
