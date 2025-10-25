package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class sc implements fc {

    /* renamed from: a  reason: collision with root package name */
    private final ic f6786a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6787b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f6788c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6789d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sc(ic icVar, String str, Object[] objArr) {
        this.f6786a = icVar;
        this.f6787b = str;
        this.f6788c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f6789d = charAt;
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
                this.f6789d = i10 | (charAt2 << i12);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f6787b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f6788c;
    }

    @Override // com.google.android.gms.internal.measurement.fc
    public final ic e() {
        return this.f6786a;
    }

    @Override // com.google.android.gms.internal.measurement.fc
    public final int f() {
        int i10 = this.f6789d;
        if ((i10 & 1) != 0) {
            return 1;
        }
        return (i10 & 4) == 4 ? 3 : 2;
    }

    @Override // com.google.android.gms.internal.measurement.fc
    public final boolean zza() {
        return (this.f6789d & 2) == 2;
    }
}
