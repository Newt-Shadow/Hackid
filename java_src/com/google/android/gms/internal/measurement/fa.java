package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class fa extends ja {

    /* renamed from: d  reason: collision with root package name */
    private final int f6390d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(byte[] bArr, int i10, int i11) {
        super(bArr);
        ka.r(0, i11, bArr.length);
        this.f6390d = i11;
    }

    @Override // com.google.android.gms.internal.measurement.ja, com.google.android.gms.internal.measurement.ka
    public final byte d(int i10) {
        int i11 = this.f6390d;
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 11);
                sb2.append("Index < 0: ");
                sb2.append(i10);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 18 + String.valueOf(i11).length());
            sb3.append("Index > length: ");
            sb3.append(i10);
            sb3.append(", ");
            sb3.append(i11);
            throw new ArrayIndexOutOfBoundsException(sb3.toString());
        }
        return this.f6458c[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.ja, com.google.android.gms.internal.measurement.ka
    public final byte g(int i10) {
        return this.f6458c[i10];
    }

    @Override // com.google.android.gms.internal.measurement.ja, com.google.android.gms.internal.measurement.ka
    public final int i() {
        return this.f6390d;
    }

    @Override // com.google.android.gms.internal.measurement.ja
    protected final int s() {
        return 0;
    }
}
