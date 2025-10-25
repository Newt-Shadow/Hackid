package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ja extends ia {

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f6458c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.f6458c = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public byte d(int i10) {
        return this.f6458c[i10];
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ka) || i() != ((ka) obj).i()) {
            return false;
        }
        if (i() == 0) {
            return true;
        }
        if (obj instanceof ja) {
            ja jaVar = (ja) obj;
            int p10 = p();
            int p11 = jaVar.p();
            if (p10 != 0 && p11 != 0 && p10 != p11) {
                return false;
            }
            int i10 = i();
            if (i10 <= jaVar.i()) {
                if (i10 <= jaVar.i()) {
                    byte[] bArr = this.f6458c;
                    byte[] bArr2 = jaVar.f6458c;
                    jaVar.s();
                    int i11 = 0;
                    int i12 = 0;
                    while (i11 < i10) {
                        if (bArr[i11] != bArr2[i12]) {
                            return false;
                        }
                        i11++;
                        i12++;
                    }
                    return true;
                }
                int i13 = jaVar.i();
                StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 27 + String.valueOf(i13).length());
                sb2.append("Ran off end of other: 0, ");
                sb2.append(i10);
                sb2.append(", ");
                sb2.append(i13);
                throw new IllegalArgumentException(sb2.toString());
            }
            int i14 = i();
            StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 18 + String.valueOf(i14).length());
            sb3.append("Length too large: ");
            sb3.append(i10);
            sb3.append(i14);
            throw new IllegalArgumentException(sb3.toString());
        }
        return obj.equals(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.ka
    public byte g(int i10) {
        return this.f6458c[i10];
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public int i() {
        return this.f6458c.length;
    }

    @Override // com.google.android.gms.internal.measurement.ka
    public final ka l(int i10, int i11) {
        int r10 = ka.r(0, i11, i());
        if (r10 == 0) {
            return ka.f6472b;
        }
        return new fa(this.f6458c, 0, r10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.ka
    public final void m(ba baVar) {
        ((na) baVar).F(this.f6458c, 0, i());
    }

    @Override // com.google.android.gms.internal.measurement.ka
    protected final int n(int i10, int i11, int i12) {
        return ob.c(i10, this.f6458c, 0, i12);
    }

    protected int s() {
        return 0;
    }
}
