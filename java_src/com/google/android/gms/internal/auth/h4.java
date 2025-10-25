package com.google.android.gms.internal.auth;

import java.util.List;
/* loaded from: classes.dex */
public final class h4 extends b2 implements z2 {
    private static final h4 zzb;
    private d2 zzd = b2.e();

    static {
        h4 h4Var = new h4();
        zzb = h4Var;
        b2.l(h4.class, h4Var);
    }

    private h4() {
    }

    public static h4 r(byte[] bArr) {
        return (h4) b2.d(zzb, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.auth.b2
    public final Object o(int i10, Object obj, Object obj2) {
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
                    return new g4(null);
                }
                return new h4();
            }
            return b2.i(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
        }
        return (byte) 1;
    }

    public final List s() {
        return this.zzd;
    }
}
