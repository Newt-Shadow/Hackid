package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class w0 extends d1 {

    /* renamed from: c  reason: collision with root package name */
    private final String f6858c;

    /* renamed from: d  reason: collision with root package name */
    private final int f6859d;

    /* renamed from: e  reason: collision with root package name */
    private final int f6860e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w0(String str, boolean z10, int i10, t0 t0Var, u0 u0Var, int i11, byte[] bArr) {
        this.f6858c = str;
        this.f6859d = i10;
        this.f6860e = i11;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final String a() {
        return this.f6858c;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final t0 c() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final u0 d() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final int e() {
        return this.f6859d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d1) {
            d1 d1Var = (d1) obj;
            if (this.f6858c.equals(d1Var.a())) {
                d1Var.b();
                int i10 = this.f6859d;
                int e10 = d1Var.e();
                if (i10 != 0) {
                    if (i10 == e10) {
                        d1Var.c();
                        d1Var.d();
                        int i11 = this.f6860e;
                        int f10 = d1Var.f();
                        if (i11 != 0) {
                            if (f10 == 1) {
                                return true;
                            }
                        } else {
                            throw null;
                        }
                    }
                } else {
                    throw null;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.d1
    public final int f() {
        return this.f6860e;
    }

    public final int hashCode() {
        int hashCode = this.f6858c.hashCode() ^ 1000003;
        int i10 = this.f6859d;
        if (i10 != 0) {
            int i11 = (((hashCode * 1000003) ^ 1237) * 1000003) ^ i10;
            if (this.f6860e != 0) {
                return (i11 * 583896283) ^ 1;
            }
            throw null;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i10 = this.f6859d;
        String str2 = "null";
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        str = "null";
                    } else {
                        str = "NO_CHECKS";
                    }
                } else {
                    str = "SKIP_SECURITY_CHECK";
                }
            } else {
                str = "SKIP_COMPLIANCE_CHECK";
            }
        } else {
            str = "ALL_CHECKS";
        }
        if (this.f6860e == 1) {
            str2 = "READ_AND_WRITE";
        }
        String str3 = this.f6858c;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 73 + str.length() + 91 + str2.length() + 1);
        sb2.append("FileComplianceOptions{fileOwner=");
        sb2.append(str3);
        sb2.append(", hasDifferentDmaOwner=false, fileChecks=");
        sb2.append(str);
        sb2.append(", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        sb2.append(str2);
        sb2.append("}");
        return sb2.toString();
    }
}
