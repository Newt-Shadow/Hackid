package kotlin.coroutines.jvm.internal;
/* loaded from: classes2.dex */
public abstract class j extends a {
    public j(ad.e eVar) {
        super(eVar);
        boolean z10;
        if (eVar != null) {
            if (eVar.getContext() == ad.j.f295a) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // ad.e
    public ad.i getContext() {
        return ad.j.f295a;
    }
}
