package sd;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
abstract class e {
    public static final long a(long j10, d sourceUnit, d targetUnit) {
        m.e(sourceUnit, "sourceUnit");
        m.e(targetUnit, "targetUnit");
        return targetUnit.b().convert(j10, sourceUnit.b());
    }

    public static final long b(long j10, d sourceUnit, d targetUnit) {
        m.e(sourceUnit, "sourceUnit");
        m.e(targetUnit, "targetUnit");
        return targetUnit.b().convert(j10, sourceUnit.b());
    }
}
