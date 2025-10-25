package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a0 implements f0 {
    @Override // com.google.android.gms.internal.play_billing.f0
    public final e0 a(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = length + length;
        if (i10 >= 0) {
            g0 e10 = e();
            int length2 = charSequence.length();
            for (int i11 = 0; i11 < length2; i11++) {
                ((c0) e10).a(charSequence.charAt(i11));
            }
            return e10.f();
        }
        throw new IllegalArgumentException(c.a("expectedInputSize must be >= 0 but was %s", Integer.valueOf(i10)));
    }
}
