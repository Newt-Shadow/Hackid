package ae;

import td.k1;
/* loaded from: classes2.dex */
public abstract class f extends k1 {

    /* renamed from: d  reason: collision with root package name */
    private final int f329d;

    /* renamed from: e  reason: collision with root package name */
    private final int f330e;

    /* renamed from: f  reason: collision with root package name */
    private final long f331f;

    /* renamed from: g  reason: collision with root package name */
    private final String f332g;

    /* renamed from: h  reason: collision with root package name */
    private a f333h = J0();

    public f(int i10, int i11, long j10, String str) {
        this.f329d = i10;
        this.f330e = i11;
        this.f331f = j10;
        this.f332g = str;
    }

    private final a J0() {
        return new a(this.f329d, this.f330e, this.f331f, this.f332g);
    }

    public final void T0(Runnable runnable, boolean z10, boolean z11) {
        this.f333h.h(runnable, z10, z11);
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        a.j(this.f333h, runnable, false, false, 6, null);
    }
}
