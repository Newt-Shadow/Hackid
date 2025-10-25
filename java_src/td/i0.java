package td;

import ad.f;
import ad.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import td.i0;
/* loaded from: classes2.dex */
public abstract class i0 extends ad.a implements ad.f {

    /* renamed from: b  reason: collision with root package name */
    public static final a f30653b = new a(null);

    /* loaded from: classes2.dex */
    public static final class a extends ad.b {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final i0 d(i.b bVar) {
            if (bVar instanceof i0) {
                return (i0) bVar;
            }
            return null;
        }

        private a() {
            super(ad.f.f293h0, new id.l() { // from class: td.h0
                @Override // id.l
                public final Object invoke(Object obj) {
                    i0 d10;
                    d10 = i0.a.d((i.b) obj);
                    return d10;
                }
            });
        }
    }

    public i0() {
        super(ad.f.f293h0);
    }

    public static /* synthetic */ i0 D0(i0 i0Var, int i10, String str, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                str = null;
            }
            return i0Var.A0(i10, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
    }

    public i0 A0(int i10, String str) {
        yd.n.a(i10);
        return new yd.m(this, i10, str);
    }

    @Override // ad.a, ad.i.b, ad.i
    public i.b a(i.c cVar) {
        return f.a.a(this, cVar);
    }

    @Override // ad.f
    public final ad.e d0(ad.e eVar) {
        return new yd.h(this, eVar);
    }

    @Override // ad.a, ad.i
    public ad.i g(i.c cVar) {
        return f.a.b(this, cVar);
    }

    public abstract void q0(ad.i iVar, Runnable runnable);

    @Override // ad.f
    public final void s(ad.e eVar) {
        kotlin.jvm.internal.m.c(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((yd.h) eVar).s();
    }

    public boolean t0(ad.i iVar) {
        return true;
    }

    public String toString() {
        return p0.a(this) + '@' + p0.b(this);
    }
}
