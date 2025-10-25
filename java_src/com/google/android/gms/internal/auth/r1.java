package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class r1 extends t1 {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f6155b;

    /* renamed from: c  reason: collision with root package name */
    private int f6156c;

    /* renamed from: d  reason: collision with root package name */
    private int f6157d;

    /* renamed from: e  reason: collision with root package name */
    private int f6158e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r1(byte[] bArr, int i10, int i11, boolean z10, q1 q1Var) {
        super(null);
        this.f6158e = Integer.MAX_VALUE;
        this.f6155b = bArr;
        this.f6156c = 0;
    }

    public final int c(int i10) {
        int i11 = this.f6158e;
        this.f6158e = 0;
        int i12 = this.f6156c + this.f6157d;
        this.f6156c = i12;
        if (i12 > 0) {
            this.f6157d = i12;
            this.f6156c = i12 - i12;
        } else {
            this.f6157d = 0;
        }
        return i11;
    }
}
