package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class j3 implements v2 {

    /* renamed from: a  reason: collision with root package name */
    private final y2 f6075a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6076b = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a";

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f6077c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6078d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(y2 y2Var, String str, Object[] objArr) {
        this.f6075a = y2Var;
        this.f6077c = objArr;
        char charAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0);
        if (charAt < 55296) {
            this.f6078d = charAt;
            return;
        }
        int i10 = charAt & 8191;
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char charAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i11);
            if (charAt2 >= 55296) {
                i10 |= (charAt2 & 8191) << i12;
                i12 += 13;
                i11 = i13;
            } else {
                this.f6078d = (charAt2 << i12) | i10;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f6076b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f6077c;
    }

    @Override // com.google.android.gms.internal.auth.v2
    public final boolean e() {
        return (this.f6078d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.auth.v2
    public final int f() {
        return (this.f6078d & 1) != 0 ? 1 : 2;
    }

    @Override // com.google.android.gms.internal.auth.v2
    public final y2 zza() {
        return this.f6075a;
    }
}
