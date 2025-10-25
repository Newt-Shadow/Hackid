package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class g1 extends i1 {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f6988b;

    /* renamed from: c  reason: collision with root package name */
    private int f6989c;

    /* renamed from: d  reason: collision with root package name */
    private int f6990d;

    /* renamed from: e  reason: collision with root package name */
    private int f6991e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ g1(byte[] bArr, int i10, int i11, boolean z10, f1 f1Var) {
        super(null);
        this.f6991e = Integer.MAX_VALUE;
        this.f6988b = bArr;
        this.f6989c = 0;
    }

    public final int c(int i10) {
        int i11 = this.f6991e;
        this.f6991e = 0;
        int i12 = this.f6989c + this.f6990d;
        this.f6989c = i12;
        if (i12 > 0) {
            this.f6990d = i12;
            this.f6989c = i12 - i12;
        } else {
            this.f6990d = 0;
        }
        return i11;
    }
}
