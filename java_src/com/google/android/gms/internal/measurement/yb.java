package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class yb implements gc {

    /* renamed from: a  reason: collision with root package name */
    private final gc[] f6899a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yb(gc... gcVarArr) {
        this.f6899a = gcVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final boolean a(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.f6899a[i10].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final fc b(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            gc gcVar = this.f6899a[i10];
            if (gcVar.a(cls)) {
                return gcVar.b(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
