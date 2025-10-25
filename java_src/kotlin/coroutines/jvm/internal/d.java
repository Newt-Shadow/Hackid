package kotlin.coroutines.jvm.internal;

import ad.i;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class d extends a {
    private final ad.i _context;
    private transient ad.e intercepted;

    public d(ad.e eVar, ad.i iVar) {
        super(eVar);
        this._context = iVar;
    }

    @Override // ad.e
    public ad.i getContext() {
        ad.i iVar = this._context;
        m.b(iVar);
        return iVar;
    }

    public final ad.e intercepted() {
        ad.e eVar = this.intercepted;
        if (eVar == null) {
            ad.f fVar = (ad.f) getContext().a(ad.f.f293h0);
            if (fVar == null || (eVar = fVar.d0(this)) == null) {
                eVar = this;
            }
            this.intercepted = eVar;
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.coroutines.jvm.internal.a
    public void releaseIntercepted() {
        ad.e eVar = this.intercepted;
        if (eVar != null && eVar != this) {
            i.b a10 = getContext().a(ad.f.f293h0);
            m.b(a10);
            ((ad.f) a10).s(eVar);
        }
        this.intercepted = c.f24953a;
    }

    public d(ad.e eVar) {
        this(eVar, eVar != null ? eVar.getContext() : null);
    }
}
