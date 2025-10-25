package p2;

import java.util.Set;
/* loaded from: classes.dex */
final class q implements n2.j {

    /* renamed from: a  reason: collision with root package name */
    private final Set f27775a;

    /* renamed from: b  reason: collision with root package name */
    private final p f27776b;

    /* renamed from: c  reason: collision with root package name */
    private final t f27777c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Set set, p pVar, t tVar) {
        this.f27775a = set;
        this.f27776b = pVar;
        this.f27777c = tVar;
    }

    @Override // n2.j
    public n2.i a(String str, Class cls, n2.c cVar, n2.h hVar) {
        if (this.f27775a.contains(cVar)) {
            return new s(this.f27776b, str, cVar, hVar, this.f27777c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cVar, this.f27775a));
    }
}
