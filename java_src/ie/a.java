package ie;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class a implements ee.b {
    private a() {
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void n(a aVar, he.c cVar, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 8) != 0) {
                z10 = true;
            }
            aVar.m(cVar, i10, obj, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
    }

    private final int o(he.c cVar, Object obj) {
        int q10 = cVar.q(a());
        h(obj, q10);
        return q10;
    }

    @Override // ee.a
    public Object c(he.e decoder) {
        kotlin.jvm.internal.m.e(decoder, "decoder");
        return k(decoder, null);
    }

    protected abstract Object f();

    protected abstract int g(Object obj);

    protected abstract void h(Object obj, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Iterator i(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int j(Object obj);

    public final Object k(he.e decoder, Object obj) {
        Object f10;
        kotlin.jvm.internal.m.e(decoder, "decoder");
        if (obj == null || (f10 = p(obj)) == null) {
            f10 = f();
        }
        int g10 = g(f10);
        he.c b10 = decoder.b(a());
        if (!b10.o()) {
            while (true) {
                int n10 = b10.n(a());
                if (n10 == -1) {
                    break;
                }
                n(this, b10, g10 + n10, f10, false, 8, null);
            }
        } else {
            l(b10, f10, g10, o(b10, f10));
        }
        b10.a(a());
        return q(f10);
    }

    protected abstract void l(he.c cVar, Object obj, int i10, int i11);

    protected abstract void m(he.c cVar, int i10, Object obj, boolean z10);

    protected abstract Object p(Object obj);

    protected abstract Object q(Object obj);
}
