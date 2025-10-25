package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class k extends d implements kotlin.jvm.internal.i {
    private final int arity;

    public k(int i10, ad.e eVar) {
        super(eVar);
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.i
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public String toString() {
        if (getCompletion() == null) {
            String h10 = d0.h(this);
            m.d(h10, "renderLambdaToString(...)");
            return h10;
        }
        return super.toString();
    }
}
