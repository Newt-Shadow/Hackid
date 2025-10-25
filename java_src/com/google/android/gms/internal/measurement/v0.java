package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class v0 extends b1 {

    /* renamed from: a  reason: collision with root package name */
    private String f6842a;

    /* renamed from: b  reason: collision with root package name */
    private byte f6843b;

    /* renamed from: c  reason: collision with root package name */
    private int f6844c;

    /* renamed from: d  reason: collision with root package name */
    private int f6845d;

    @Override // com.google.android.gms.internal.measurement.b1
    public final b1 a(boolean z10) {
        this.f6843b = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final d1 b() {
        if (this.f6843b == 1 && this.f6842a != null && this.f6844c != 0 && this.f6845d != 0) {
            return new w0(this.f6842a, false, this.f6844c, null, null, this.f6845d, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f6842a == null) {
            sb2.append(" fileOwner");
        }
        if (this.f6843b == 0) {
            sb2.append(" hasDifferentDmaOwner");
        }
        if (this.f6844c == 0) {
            sb2.append(" fileChecks");
        }
        if (this.f6845d == 0) {
            sb2.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.b1
    public final b1 c(int i10) {
        this.f6844c = i10;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final b1 d(int i10) {
        this.f6845d = 1;
        return this;
    }

    public final b1 e(String str) {
        this.f6842a = "";
        return this;
    }
}
