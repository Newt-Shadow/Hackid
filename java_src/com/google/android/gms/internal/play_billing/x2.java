package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class x2 implements d3 {

    /* renamed from: a  reason: collision with root package name */
    private final d3[] f7167a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x2(d3... d3VarArr) {
        this.f7167a = d3VarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.d3
    public final c3 a(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            d3 d3Var = this.f7167a[i10];
            if (d3Var.b(cls)) {
                return d3Var.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.d3
    public final boolean b(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.f7167a[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
