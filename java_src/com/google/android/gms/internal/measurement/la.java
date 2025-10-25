package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class la extends ma {

    /* renamed from: b  reason: collision with root package name */
    private int f6487b;

    /* renamed from: c  reason: collision with root package name */
    private int f6488c;

    /* renamed from: d  reason: collision with root package name */
    private int f6489d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ la(byte[] bArr, int i10, int i11, boolean z10, byte[] bArr2) {
        super(null);
        this.f6489d = Integer.MAX_VALUE;
        this.f6487b = 0;
    }

    public final int c(int i10) {
        int i11 = this.f6489d;
        this.f6489d = 0;
        int i12 = this.f6487b + this.f6488c;
        this.f6487b = i12;
        if (i12 > 0) {
            this.f6488c = i12;
            this.f6487b = i12 - i12;
        } else {
            this.f6488c = 0;
        }
        return i11;
    }
}
