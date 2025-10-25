package d9;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final float f15127a;

    /* renamed from: b  reason: collision with root package name */
    private final float f15128b;

    public p(float f10, float f11) {
        this.f15127a = f10;
        this.f15128b = f11;
    }

    private static float a(p pVar, p pVar2, p pVar3) {
        float f10 = pVar2.f15127a;
        float f11 = pVar2.f15128b;
        return ((pVar3.f15127a - f10) * (pVar.f15128b - f11)) - ((pVar3.f15128b - f11) * (pVar.f15127a - f10));
    }

    public static float b(p pVar, p pVar2) {
        return k9.a.a(pVar.f15127a, pVar.f15128b, pVar2.f15127a, pVar2.f15128b);
    }

    public static void e(p[] pVarArr) {
        p pVar;
        p pVar2;
        p pVar3;
        float b10 = b(pVarArr[0], pVarArr[1]);
        float b11 = b(pVarArr[1], pVarArr[2]);
        float b12 = b(pVarArr[0], pVarArr[2]);
        if (b11 >= b10 && b11 >= b12) {
            pVar = pVarArr[0];
            pVar2 = pVarArr[1];
            pVar3 = pVarArr[2];
        } else if (b12 >= b11 && b12 >= b10) {
            pVar = pVarArr[1];
            pVar2 = pVarArr[0];
            pVar3 = pVarArr[2];
        } else {
            pVar = pVarArr[2];
            pVar2 = pVarArr[0];
            pVar3 = pVarArr[1];
        }
        if (a(pVar2, pVar, pVar3) < 0.0f) {
            p pVar4 = pVar3;
            pVar3 = pVar2;
            pVar2 = pVar4;
        }
        pVarArr[0] = pVar2;
        pVarArr[1] = pVar;
        pVarArr[2] = pVar3;
    }

    public final float c() {
        return this.f15127a;
    }

    public final float d() {
        return this.f15128b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f15127a != pVar.f15127a || this.f15128b != pVar.f15128b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f15127a) * 31) + Float.floatToIntBits(this.f15128b);
    }

    public final String toString() {
        return "(" + this.f15127a + ',' + this.f15128b + ')';
    }
}
