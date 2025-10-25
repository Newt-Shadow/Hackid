package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class zb implements uc {

    /* renamed from: b  reason: collision with root package name */
    private static final gc f6922b = new xb();

    /* renamed from: a  reason: collision with root package name */
    private final gc f6923a;

    public zb() {
        gc gcVar = f6922b;
        int i10 = qc.f6714d;
        yb ybVar = new yb(eb.c(), gcVar);
        byte[] bArr = ob.f6616b;
        this.f6923a = ybVar;
    }

    @Override // com.google.android.gms.internal.measurement.uc
    public final tc a(Class cls) {
        va vaVar;
        int i10 = vc.f6852b;
        if (!hb.class.isAssignableFrom(cls)) {
            int i11 = qc.f6714d;
        }
        fc b10 = this.f6923a.b(cls);
        if (!b10.zza()) {
            int i12 = qc.f6714d;
            nc a10 = oc.a();
            tb a11 = ub.a();
            ed a12 = vc.a();
            if (b10.f() - 1 != 1) {
                vaVar = xa.a();
            } else {
                vaVar = null;
            }
            return lc.A(cls, b10, a10, a11, a12, vaVar, ec.a());
        }
        int i13 = qc.f6714d;
        return mc.i(vc.a(), xa.a(), b10.e());
    }
}
