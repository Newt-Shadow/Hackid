package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class p3 implements c3 {

    /* renamed from: a  reason: collision with root package name */
    private final f3 f7087a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7088b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f7089c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7090d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p3(f3 f3Var, String str, Object[] objArr) {
        this.f7087a = f3Var;
        this.f7088b = str;
        this.f7089c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f7090d = charAt;
            return;
        }
        int i10 = charAt & 8191;
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char charAt2 = str.charAt(i11);
            if (charAt2 >= 55296) {
                i10 |= (charAt2 & 8191) << i12;
                i12 += 13;
                i11 = i13;
            } else {
                this.f7090d = i10 | (charAt2 << i12);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f7088b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f7089c;
    }

    @Override // com.google.android.gms.internal.play_billing.c3
    public final boolean e() {
        return (this.f7090d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.play_billing.c3
    public final int f() {
        int i10 = this.f7090d;
        if ((i10 & 1) != 0) {
            return 1;
        }
        return (i10 & 4) == 4 ? 3 : 2;
    }

    @Override // com.google.android.gms.internal.play_billing.c3
    public final f3 zza() {
        return this.f7087a;
    }
}
