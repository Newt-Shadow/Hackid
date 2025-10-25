package n5;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class i1 extends s0 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ c f26330g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(c cVar, int i10, Bundle bundle) {
        super(cVar, i10, bundle);
        this.f26330g = cVar;
    }

    @Override // n5.s0
    protected final void f(l5.b bVar) {
        if (this.f26330g.t() && c.h0(this.f26330g)) {
            c.d0(this.f26330g, 16);
            return;
        }
        this.f26330g.f26252p.d(bVar);
        this.f26330g.L(bVar);
    }

    @Override // n5.s0
    protected final boolean g() {
        this.f26330g.f26252p.d(l5.b.f25260e);
        return true;
    }
}
