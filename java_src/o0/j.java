package o0;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.m;
import n0.f;
import n0.g;
import n0.h;
import o0.f;
import xc.t;
import yc.w;
/* loaded from: classes.dex */
public final class j implements l0.c {

    /* renamed from: a  reason: collision with root package name */
    public static final j f26919a = new j();

    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f26920a;

        static {
            int[] iArr = new int[h.b.values().length];
            try {
                iArr[h.b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[h.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[h.b.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[h.b.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[h.b.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[h.b.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[h.b.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[h.b.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[h.b.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f26920a = iArr;
        }
    }

    private j() {
    }

    private final void d(String str, n0.h hVar, c cVar) {
        int i10;
        Set o02;
        h.b g02 = hVar.g0();
        if (g02 == null) {
            i10 = -1;
        } else {
            i10 = a.f26920a[g02.ordinal()];
        }
        switch (i10) {
            case -1:
                throw new j0.d("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new xc.i();
            case 1:
                cVar.j(h.a(str), Boolean.valueOf(hVar.X()));
                return;
            case 2:
                cVar.j(h.d(str), Float.valueOf(hVar.b0()));
                return;
            case 3:
                cVar.j(h.c(str), Double.valueOf(hVar.a0()));
                return;
            case 4:
                cVar.j(h.e(str), Integer.valueOf(hVar.c0()));
                return;
            case 5:
                cVar.j(h.f(str), Long.valueOf(hVar.d0()));
                return;
            case 6:
                f.a g10 = h.g(str);
                String e02 = hVar.e0();
                m.d(e02, "value.string");
                cVar.j(g10, e02);
                return;
            case 7:
                f.a h10 = h.h(str);
                List T = hVar.f0().T();
                m.d(T, "value.stringSet.stringsList");
                o02 = w.o0(T);
                cVar.j(h10, o02);
                return;
            case 8:
                f.a b10 = h.b(str);
                byte[] B = hVar.Y().B();
                m.d(B, "value.bytes.toByteArray()");
                cVar.j(b10, B);
                return;
            case 9:
                throw new j0.d("Value not set.", null, 2, null);
        }
    }

    private final n0.h f(Object obj) {
        if (obj instanceof Boolean) {
            androidx.datastore.preferences.protobuf.w j10 = n0.h.h0().r(((Boolean) obj).booleanValue()).j();
            m.d(j10, "newBuilder().setBoolean(value).build()");
            return (n0.h) j10;
        } else if (obj instanceof Float) {
            androidx.datastore.preferences.protobuf.w j11 = n0.h.h0().v(((Number) obj).floatValue()).j();
            m.d(j11, "newBuilder().setFloat(value).build()");
            return (n0.h) j11;
        } else if (obj instanceof Double) {
            androidx.datastore.preferences.protobuf.w j12 = n0.h.h0().u(((Number) obj).doubleValue()).j();
            m.d(j12, "newBuilder().setDouble(value).build()");
            return (n0.h) j12;
        } else if (obj instanceof Integer) {
            androidx.datastore.preferences.protobuf.w j13 = n0.h.h0().w(((Number) obj).intValue()).j();
            m.d(j13, "newBuilder().setInteger(value).build()");
            return (n0.h) j13;
        } else if (obj instanceof Long) {
            androidx.datastore.preferences.protobuf.w j14 = n0.h.h0().x(((Number) obj).longValue()).j();
            m.d(j14, "newBuilder().setLong(value).build()");
            return (n0.h) j14;
        } else if (obj instanceof String) {
            androidx.datastore.preferences.protobuf.w j15 = n0.h.h0().y((String) obj).j();
            m.d(j15, "newBuilder().setString(value).build()");
            return (n0.h) j15;
        } else if (obj instanceof Set) {
            h.a h02 = n0.h.h0();
            g.a U = n0.g.U();
            m.c(obj, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            androidx.datastore.preferences.protobuf.w j16 = h02.z(U.r((Set) obj)).j();
            m.d(j16, "newBuilder().setStringSe…                ).build()");
            return (n0.h) j16;
        } else if (obj instanceof byte[]) {
            androidx.datastore.preferences.protobuf.w j17 = n0.h.h0().t(androidx.datastore.preferences.protobuf.g.m((byte[]) obj)).j();
            m.d(j17, "newBuilder().setBytes(By….copyFrom(value)).build()");
            return (n0.h) j17;
        } else {
            throw new IllegalStateException("PreferencesSerializer does not support type: " + obj.getClass().getName());
        }
    }

    @Override // l0.c
    public Object b(af.f fVar, ad.e eVar) {
        n0.f a10 = n0.d.f26081a.a(fVar.S0());
        c b10 = g.b(new f.b[0]);
        Map R = a10.R();
        m.d(R, "preferencesProto.preferencesMap");
        for (Map.Entry entry : R.entrySet()) {
            String name = (String) entry.getKey();
            n0.h value = (n0.h) entry.getValue();
            j jVar = f26919a;
            m.d(name, "name");
            m.d(value, "value");
            jVar.d(name, value, b10);
        }
        return b10.d();
    }

    @Override // l0.c
    /* renamed from: e */
    public f a() {
        return g.a();
    }

    @Override // l0.c
    /* renamed from: g */
    public Object c(f fVar, af.e eVar, ad.e eVar2) {
        Map a10 = fVar.a();
        f.a U = n0.f.U();
        for (Map.Entry entry : a10.entrySet()) {
            U.r(((f.a) entry.getKey()).a(), f(entry.getValue()));
        }
        ((n0.f) U.j()).h(eVar.P0());
        return t.f32733a;
    }
}
