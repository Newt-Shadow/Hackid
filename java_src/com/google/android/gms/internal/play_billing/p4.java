package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public final class p4 extends b2 implements g3 {
    private static final p4 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private z4 zzh;

    static {
        p4 p4Var = new p4();
        zzb = p4Var;
        b2.v(p4.class, p4Var);
    }

    private p4() {
    }

    public static p4 C(byte[] bArr, q1 q1Var) {
        return (p4) b2.n(zzb, bArr, q1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D(p4 p4Var, z4 z4Var) {
        z4Var.getClass();
        p4Var.zzh = z4Var;
        p4Var.zzd |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E(p4 p4Var, r5 r5Var) {
        r5Var.getClass();
        p4Var.zzf = r5Var;
        p4Var.zze = 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F(p4 p4Var, int i10) {
        p4Var.zzg = i10 - 1;
        p4Var.zzd |= 1;
    }

    public static o4 G() {
        return (o4) zzb.g();
    }

    @Override // com.google.android.gms.internal.play_billing.b2
    protected final Object z(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new o4(null);
                }
                return new p4();
            }
            return b2.s(zzb, "\u0001\u0003\u0001\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", q4.f7099a, "zzh", r5.class});
        }
        return (byte) 1;
    }
}
