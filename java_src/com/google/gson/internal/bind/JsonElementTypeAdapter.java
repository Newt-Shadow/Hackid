package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.TypeAdapter;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.internal.x;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.n;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
class JsonElementTypeAdapter extends TypeAdapter {

    /* renamed from: a  reason: collision with root package name */
    static final JsonElementTypeAdapter f9172a = new JsonElementTypeAdapter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9173a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f9173a = iArr;
            try {
                iArr[c9.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9173a[c9.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9173a[c9.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9173a[c9.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9173a[c9.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9173a[c9.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private JsonElementTypeAdapter() {
    }

    private i g(c9.a aVar, c9.b bVar) {
        int i10 = a.f9173a[bVar.ordinal()];
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 5) {
                    if (i10 == 6) {
                        aVar.H();
                        return k.f9349a;
                    }
                    throw new IllegalStateException("Unexpected token: " + bVar);
                }
                return new n(Boolean.valueOf(aVar.z()));
            }
            return new n(new x(aVar.C()));
        }
        return new n(aVar.C());
    }

    private i h(c9.a aVar, c9.b bVar) {
        int i10 = a.f9173a[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return null;
            }
            aVar.t();
            return new l();
        }
        aVar.b();
        return new f();
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: f */
    public i c(c9.a aVar) {
        String str;
        boolean z10;
        if (aVar instanceof com.google.gson.internal.bind.a) {
            return ((com.google.gson.internal.bind.a) aVar).X0();
        }
        c9.b X = aVar.X();
        i h10 = h(aVar, X);
        if (h10 == null) {
            return g(aVar, X);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.u()) {
                if (h10 instanceof l) {
                    str = aVar.f0();
                } else {
                    str = null;
                }
                c9.b X2 = aVar.X();
                i h11 = h(aVar, X2);
                if (h11 != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (h11 == null) {
                    h11 = g(aVar, X2);
                }
                if (h10 instanceof f) {
                    ((f) h10).t(h11);
                } else {
                    ((l) h10).t(str, h11);
                }
                if (z10) {
                    arrayDeque.addLast(h10);
                    h10 = h11;
                }
            } else {
                if (h10 instanceof f) {
                    aVar.g();
                } else {
                    aVar.r();
                }
                if (arrayDeque.isEmpty()) {
                    return h10;
                }
                h10 = (i) arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: i */
    public void e(c cVar, i iVar) {
        if (iVar != null && !iVar.p()) {
            if (iVar.s()) {
                n m10 = iVar.m();
                if (m10.G()) {
                    cVar.D0(m10.C());
                    return;
                } else if (m10.D()) {
                    cVar.T0(m10.d());
                    return;
                } else {
                    cVar.J0(m10.n());
                    return;
                }
            } else if (iVar.o()) {
                cVar.e();
                Iterator it = iVar.i().iterator();
                while (it.hasNext()) {
                    e(cVar, (i) it.next());
                }
                cVar.h();
                return;
            } else if (iVar.r()) {
                cVar.f();
                for (Map.Entry entry : iVar.l().y()) {
                    cVar.v((String) entry.getKey());
                    e(cVar, (i) entry.getValue());
                }
                cVar.j();
                return;
            } else {
                throw new IllegalArgumentException("Couldn't write " + iVar.getClass());
            }
        }
        cVar.x();
    }
}
