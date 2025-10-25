package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public abstract class j extends d implements i, pd.f {
    private final int arity;
    private final int flags;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j(int r9, java.lang.Object r10, java.lang.Class r11, java.lang.String r12, java.lang.String r13, int r14) {
        /*
            r8 = this;
            r0 = r14 & 1
            r1 = 1
            if (r0 != r1) goto L7
            r7 = r1
            goto L9
        L7:
            r0 = 0
            r7 = r0
        L9:
            r2 = r8
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r2.<init>(r3, r4, r5, r6, r7)
            r8.arity = r9
            int r9 = r14 >> 1
            r8.flags = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.j.<init>(int, java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int):void");
    }

    @Override // kotlin.jvm.internal.d
    protected pd.b computeReflected() {
        return d0.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (getName().equals(jVar.getName()) && getSignature().equals(jVar.getSignature()) && this.flags == jVar.flags && this.arity == jVar.arity && m.a(getBoundReceiver(), jVar.getBoundReceiver()) && m.a(getOwner(), jVar.getOwner())) {
                return true;
            }
            return false;
        } else if (!(obj instanceof pd.f)) {
            return false;
        } else {
            return obj.equals(compute());
        }
    }

    @Override // kotlin.jvm.internal.i
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        int hashCode;
        if (getOwner() == null) {
            hashCode = 0;
        } else {
            hashCode = getOwner().hashCode() * 31;
        }
        return ((hashCode + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // pd.f
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // pd.f
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // pd.f
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // pd.f
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // pd.f
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        pd.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.d
    public pd.f getReflected() {
        return (pd.f) super.getReflected();
    }
}
