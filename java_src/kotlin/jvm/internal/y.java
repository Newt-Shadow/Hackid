package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public abstract class y extends d implements pd.k {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f24986a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public y(java.lang.Object r10, java.lang.Class r11, java.lang.String r12, java.lang.String r13, int r14) {
        /*
            r9 = this;
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L8
            r8 = r2
            goto L9
        L8:
            r8 = r1
        L9:
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r3.<init>(r4, r5, r6, r7, r8)
            r10 = 2
            r11 = r14 & 2
            if (r11 != r10) goto L17
            r1 = r2
        L17:
            r9.f24986a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.y.<init>(java.lang.Object, java.lang.Class, java.lang.String, java.lang.String, int):void");
    }

    @Override // kotlin.jvm.internal.d
    public pd.b compute() {
        if (this.f24986a) {
            return this;
        }
        return super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            if (getOwner().equals(yVar.getOwner()) && getName().equals(yVar.getName()) && getSignature().equals(yVar.getSignature()) && m.a(getBoundReceiver(), yVar.getBoundReceiver())) {
                return true;
            }
            return false;
        } else if (!(obj instanceof pd.k)) {
            return false;
        } else {
            return obj.equals(compute());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.d
    /* renamed from: f */
    public pd.k getReflected() {
        if (!this.f24986a) {
            return (pd.k) super.getReflected();
        }
        throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    public String toString() {
        pd.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}
