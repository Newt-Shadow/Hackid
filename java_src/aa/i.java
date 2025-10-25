package aa;

import d9.p;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f261a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(boolean z10) {
        this.f261a = z10;
    }

    public void a(p[] pVarArr) {
        if (this.f261a && pVarArr != null && pVarArr.length >= 3) {
            p pVar = pVarArr[0];
            pVarArr[0] = pVarArr[2];
            pVarArr[2] = pVar;
        }
    }
}
