package j4;

import java.util.List;
import x4.g0;
/* loaded from: classes.dex */
public final class e implements k {

    /* renamed from: a  reason: collision with root package name */
    private final k f24354a;

    /* renamed from: b  reason: collision with root package name */
    private final List f24355b;

    public e(k kVar, List list) {
        this.f24354a = kVar;
        this.f24355b = list;
    }

    @Override // j4.k
    public g0.a a(h hVar, g gVar) {
        return new c4.b(this.f24354a.a(hVar, gVar), this.f24355b);
    }

    @Override // j4.k
    public g0.a b() {
        return new c4.b(this.f24354a.b(), this.f24355b);
    }
}
