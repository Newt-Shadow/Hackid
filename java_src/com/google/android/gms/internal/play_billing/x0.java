package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class x0 extends a1 {

    /* renamed from: f  reason: collision with root package name */
    private final int f7165f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(byte[] bArr, int i10, int i11) {
        super(bArr);
        e1.r(0, i11, bArr.length);
        this.f7165f = i11;
    }

    @Override // com.google.android.gms.internal.play_billing.a1
    protected final int A() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.a1, com.google.android.gms.internal.play_billing.e1
    public final byte d(int i10) {
        int i11 = this.f7165f;
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
        return this.f6951e[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.a1, com.google.android.gms.internal.play_billing.e1
    public final byte g(int i10) {
        return this.f6951e[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.a1, com.google.android.gms.internal.play_billing.e1
    public final int i() {
        return this.f7165f;
    }
}
