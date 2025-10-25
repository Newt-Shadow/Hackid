package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class i1 extends m1 {

    /* renamed from: f  reason: collision with root package name */
    private final int f6068f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(byte[] bArr, int i10, int i11) {
        super(bArr);
        p1.p(0, i11, bArr.length);
        this.f6068f = i11;
    }

    @Override // com.google.android.gms.internal.auth.m1, com.google.android.gms.internal.auth.p1
    public final byte d(int i10) {
        int i11 = this.f6068f;
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
        return this.f6113e[i10];
    }

    @Override // com.google.android.gms.internal.auth.m1, com.google.android.gms.internal.auth.p1
    final byte g(int i10) {
        return this.f6113e[i10];
    }

    @Override // com.google.android.gms.internal.auth.m1, com.google.android.gms.internal.auth.p1
    public final int i() {
        return this.f6068f;
    }

    @Override // com.google.android.gms.internal.auth.m1
    protected final int y() {
        return 0;
    }
}
