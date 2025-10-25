package ae;

import td.i0;
import yd.n;
/* loaded from: classes2.dex */
final class k extends i0 {

    /* renamed from: c  reason: collision with root package name */
    public static final k f343c = new k();

    private k() {
    }

    @Override // td.i0
    public i0 A0(int i10, String str) {
        n.a(i10);
        if (i10 >= j.f340d) {
            return n.b(this, str);
        }
        return super.A0(i10, str);
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        c.f327i.T0(runnable, true, false);
    }

    @Override // td.i0
    public String toString() {
        return "Dispatchers.IO";
    }
}
