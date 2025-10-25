package ie;

import he.c;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.h0;
/* loaded from: classes2.dex */
public abstract class l extends a {

    /* renamed from: a  reason: collision with root package name */
    private final ee.b f17431a;

    /* renamed from: b  reason: collision with root package name */
    private final ee.b f17432b;

    public /* synthetic */ l(ee.b bVar, ee.b bVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, bVar2);
    }

    @Override // ee.b, ee.e, ee.a
    public abstract ge.d a();

    @Override // ee.e
    public void e(he.f encoder, Object obj) {
        kotlin.jvm.internal.m.e(encoder, "encoder");
        int j10 = j(obj);
        ge.d a10 = a();
        he.d h10 = encoder.h(a10, j10);
        Iterator i10 = i(obj);
        int i11 = 0;
        while (i10.hasNext()) {
            Map.Entry entry = (Map.Entry) i10.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i12 = i11 + 1;
            h10.c(a(), i11, r(), key);
            h10.c(a(), i12, s(), value);
            i11 = i12 + 1;
        }
        h10.a(a10);
    }

    public final ee.b r() {
        return this.f17431a;
    }

    public final ee.b s() {
        return this.f17432b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: t */
    public final void l(he.c decoder, Map builder, int i10, int i11) {
        boolean z10;
        od.c k10;
        od.a i12;
        kotlin.jvm.internal.m.e(decoder, "decoder");
        kotlin.jvm.internal.m.e(builder, "builder");
        if (i11 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            k10 = od.i.k(0, i11 * 2);
            i12 = od.i.i(k10, 2);
            int g10 = i12.g();
            int i13 = i12.i();
            int l10 = i12.l();
            if ((l10 <= 0 || g10 > i13) && (l10 >= 0 || i13 > g10)) {
                return;
            }
            while (true) {
                m(decoder, i10 + g10, builder, false);
                if (g10 != i13) {
                    g10 += l10;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.a
    /* renamed from: u */
    public final void m(he.c decoder, int i10, Map builder, boolean z10) {
        int i11;
        Object c10;
        Object f10;
        kotlin.jvm.internal.m.e(decoder, "decoder");
        kotlin.jvm.internal.m.e(builder, "builder");
        Object c11 = c.a.c(decoder, a(), i10, this.f17431a, null, 8, null);
        boolean z11 = true;
        if (z10) {
            i11 = decoder.n(a());
            if (i11 != i10 + 1) {
                z11 = false;
            }
            if (!z11) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i10 + ", returned index for value: " + i11).toString());
            }
        } else {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (builder.containsKey(c11) && !(this.f17432b.a().e() instanceof ge.c)) {
            ge.d a10 = a();
            ee.b bVar = this.f17432b;
            f10 = h0.f(builder, c11);
            c10 = decoder.j(a10, i12, bVar, f10);
        } else {
            c10 = c.a.c(decoder, a(), i12, this.f17432b, null, 8, null);
        }
        builder.put(c11, c10);
    }

    private l(ee.b bVar, ee.b bVar2) {
        super(null);
        this.f17431a = bVar;
        this.f17432b = bVar2;
    }
}
