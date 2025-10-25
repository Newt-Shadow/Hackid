package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.y;
import com.google.gson.u;
import com.google.gson.v;
import com.google.gson.w;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class ObjectTypeAdapter extends TypeAdapter {

    /* renamed from: c  reason: collision with root package name */
    private static final w f9184c = g(u.f9367a);

    /* renamed from: a  reason: collision with root package name */
    private final Gson f9185a;

    /* renamed from: b  reason: collision with root package name */
    private final v f9186b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9188a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f9188a = iArr;
            try {
                iArr[c9.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9188a[c9.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9188a[c9.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9188a[c9.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9188a[c9.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9188a[c9.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static w f(v vVar) {
        if (vVar == u.f9367a) {
            return f9184c;
        }
        return g(vVar);
    }

    private static w g(final v vVar) {
        return new w() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter.1
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                if (aVar.c() != Object.class) {
                    return null;
                }
                return new ObjectTypeAdapter(gson, v.this);
            }
        };
    }

    private Object h(c9.a aVar, c9.b bVar) {
        int i10 = a.f9188a[bVar.ordinal()];
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 5) {
                    if (i10 == 6) {
                        aVar.H();
                        return null;
                    }
                    throw new IllegalStateException("Unexpected token: " + bVar);
                }
                return Boolean.valueOf(aVar.z());
            }
            return this.f9186b.a(aVar);
        }
        return aVar.C();
    }

    private Object i(c9.a aVar, c9.b bVar) {
        int i10 = a.f9188a[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return null;
            }
            aVar.t();
            return new y();
        }
        aVar.b();
        return new ArrayList();
    }

    @Override // com.google.gson.TypeAdapter
    public Object c(c9.a aVar) {
        String str;
        boolean z10;
        c9.b X = aVar.X();
        Object i10 = i(aVar, X);
        if (i10 == null) {
            return h(aVar, X);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.u()) {
                if (i10 instanceof Map) {
                    str = aVar.f0();
                } else {
                    str = null;
                }
                c9.b X2 = aVar.X();
                Object i11 = i(aVar, X2);
                if (i11 != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (i11 == null) {
                    i11 = h(aVar, X2);
                }
                if (i10 instanceof List) {
                    ((List) i10).add(i11);
                } else {
                    ((Map) i10).put(str, i11);
                }
                if (z10) {
                    arrayDeque.addLast(i10);
                    i10 = i11;
                }
            } else {
                if (i10 instanceof List) {
                    aVar.g();
                } else {
                    aVar.r();
                }
                if (arrayDeque.isEmpty()) {
                    return i10;
                }
                i10 = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public void e(c cVar, Object obj) {
        if (obj == null) {
            cVar.x();
            return;
        }
        TypeAdapter p10 = this.f9185a.p(obj.getClass());
        if (p10 instanceof ObjectTypeAdapter) {
            cVar.f();
            cVar.j();
            return;
        }
        p10.e(cVar, obj);
    }

    private ObjectTypeAdapter(Gson gson, v vVar) {
        this.f9185a = gson;
        this.f9186b = vVar;
    }
}
