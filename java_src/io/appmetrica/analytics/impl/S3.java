package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class S3 extends AbstractC1040a8 {
    @Override // io.appmetrica.analytics.impl.AbstractC1040a8
    public final boolean a(J3 j32, J3 j33) {
        if (!Rn.a(j33.f18422a)) {
            if (Rn.a(j32.f18422a)) {
                return false;
            }
            EnumC1065b8 enumC1065b8 = j32.f18423b;
            if (enumC1065b8 == EnumC1065b8.f19425c) {
                if (((Number) this.f19376a.a(enumC1065b8)).intValue() < ((Number) this.f19376a.a(j33.f18423b)).intValue()) {
                    return false;
                }
            } else if (((Number) this.f19376a.a(enumC1065b8)).intValue() <= ((Number) this.f19376a.a(j33.f18423b)).intValue()) {
                return false;
            }
        }
        return true;
    }
}
