package vd;

import kotlin.jvm.internal.d0;
import vd.k;
import yd.r0;
/* loaded from: classes2.dex */
public class s extends e {

    /* renamed from: m  reason: collision with root package name */
    private final int f31413m;

    /* renamed from: n  reason: collision with root package name */
    private final a f31414n;

    public s(int i10, a aVar, id.l lVar) {
        super(i10, lVar);
        boolean z10;
        this.f31413m = i10;
        this.f31414n = aVar;
        if (aVar != a.f31354a) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 >= 1) {
                return;
            }
            throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
        }
        throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + d0.b(e.class).b() + " instead").toString());
    }

    static /* synthetic */ Object d1(s sVar, Object obj, ad.e eVar) {
        r0 c10;
        Object f12 = sVar.f1(obj, true);
        if (f12 instanceof k.a) {
            k.e(f12);
            id.l lVar = sVar.f31374b;
            if (lVar != null && (c10 = yd.y.c(lVar, obj, null, 2, null)) != null) {
                xc.b.a(c10, sVar.c0());
                throw c10;
            }
            throw sVar.c0();
        }
        return xc.t.f32733a;
    }

    private final Object e1(Object obj, boolean z10) {
        id.l lVar;
        r0 c10;
        Object t10 = super.t(obj);
        if (!k.i(t10) && !k.h(t10)) {
            if (z10 && (lVar = this.f31374b) != null && (c10 = yd.y.c(lVar, obj, null, 2, null)) != null) {
                throw c10;
            }
            return k.f31403b.c(xc.t.f32733a);
        }
        return t10;
    }

    private final Object f1(Object obj, boolean z10) {
        if (this.f31414n == a.f31356c) {
            return e1(obj, z10);
        }
        return T0(obj);
    }

    @Override // vd.e
    protected boolean q0() {
        if (this.f31414n == a.f31355b) {
            return true;
        }
        return false;
    }

    @Override // vd.e, vd.x
    public Object t(Object obj) {
        return f1(obj, false);
    }

    @Override // vd.e, vd.x
    public Object y(Object obj, ad.e eVar) {
        return d1(this, obj, eVar);
    }
}
