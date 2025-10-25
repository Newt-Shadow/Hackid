package kotlin.jvm.internal;

import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class n implements i, Serializable {
    private final int arity;

    public n(int i10) {
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.i
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String i10 = d0.i(this);
        m.d(i10, "renderLambdaToString(...)");
        return i10;
    }
}
