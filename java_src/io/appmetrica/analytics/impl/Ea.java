package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ea extends K2 {
    public Ea(int i10) {
        super(i10);
    }

    @Override // io.appmetrica.analytics.impl.K2, io.appmetrica.analytics.impl.Fa
    public final C1503sn a(String str) {
        int i10 = 0;
        if (str != null) {
            int length = str.length();
            int i11 = this.f18473a;
            if (length > i11) {
                String substring = str.substring(0, i11);
                i10 = str.getBytes().length - substring.getBytes().length;
                str = substring;
            }
        }
        return new C1503sn(str, new C1483s3(i10));
    }
}
