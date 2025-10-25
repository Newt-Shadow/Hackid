package td;
/* loaded from: classes2.dex */
public final class p2 extends i0 {

    /* renamed from: c  reason: collision with root package name */
    public static final p2 f30681c = new p2();

    private p2() {
    }

    @Override // td.i0
    public i0 A0(int i10, String str) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        android.support.v4.media.session.b.a(iVar.a(t2.f30697b));
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // td.i0
    public boolean t0(ad.i iVar) {
        return false;
    }

    @Override // td.i0
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
