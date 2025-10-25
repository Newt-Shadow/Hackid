package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.q1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class s {

    /* renamed from: d  reason: collision with root package name */
    private static final s f2303d = new s(true);

    /* renamed from: a  reason: collision with root package name */
    private final h1 f2304a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2305b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2306c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2307a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2308b;

        static {
            int[] iArr = new int[q1.b.values().length];
            f2308b = iArr;
            try {
                iArr[q1.b.f2265c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2308b[q1.b.f2266d.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2308b[q1.b.f2267e.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2308b[q1.b.f2268f.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2308b[q1.b.f2269g.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2308b[q1.b.f2270h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2308b[q1.b.f2271i.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2308b[q1.b.f2272j.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2308b[q1.b.f2274l.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2308b[q1.b.f2275m.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2308b[q1.b.f2273k.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2308b[q1.b.f2276n.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2308b[q1.b.f2277o.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2308b[q1.b.f2279q.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2308b[q1.b.f2280r.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2308b[q1.b.f2281s.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2308b[q1.b.f2282t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f2308b[q1.b.f2278p.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[q1.c.values().length];
            f2307a = iArr2;
            try {
                iArr2[q1.c.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f2307a[q1.c.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f2307a[q1.c.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f2307a[q1.c.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f2307a[q1.c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f2307a[q1.c.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f2307a[q1.c.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f2307a[q1.c.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f2307a[q1.c.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b extends Comparable {
        int c();

        boolean d();

        q1.b h();

        boolean k();
    }

    private s() {
        this.f2304a = h1.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(q1.b bVar, int i10, Object obj) {
        int O = j.O(i10);
        if (bVar == q1.b.f2274l) {
            O *= 2;
        }
        return O + c(bVar, obj);
    }

    static int c(q1.b bVar, Object obj) {
        switch (a.f2308b[bVar.ordinal()]) {
            case 1:
                return j.i(((Double) obj).doubleValue());
            case 2:
                return j.q(((Float) obj).floatValue());
            case 3:
                return j.x(((Long) obj).longValue());
            case 4:
                return j.S(((Long) obj).longValue());
            case 5:
                return j.v(((Integer) obj).intValue());
            case 6:
                return j.o(((Long) obj).longValue());
            case 7:
                return j.m(((Integer) obj).intValue());
            case 8:
                return j.d(((Boolean) obj).booleanValue());
            case 9:
                return j.s((p0) obj);
            case 10:
                return j.A((p0) obj);
            case 11:
                if (obj instanceof g) {
                    return j.g((g) obj);
                }
                return j.N((String) obj);
            case 12:
                if (obj instanceof g) {
                    return j.g((g) obj);
                }
                return j.e((byte[]) obj);
            case 13:
                return j.Q(((Integer) obj).intValue());
            case 14:
                return j.F(((Integer) obj).intValue());
            case 15:
                return j.H(((Long) obj).longValue());
            case 16:
                return j.J(((Integer) obj).intValue());
            case 17:
                return j.L(((Long) obj).longValue());
            case 18:
                return j.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int d(b bVar, Object obj) {
        q1.b h10 = bVar.h();
        int c10 = bVar.c();
        if (bVar.d()) {
            List list = (List) obj;
            int size = list.size();
            int i10 = 0;
            if (bVar.k()) {
                if (list.isEmpty()) {
                    return 0;
                }
                int i11 = 0;
                while (i10 < size) {
                    i11 += c(h10, list.get(i10));
                    i10++;
                }
                return j.O(c10) + i11 + j.Q(i11);
            }
            int i12 = 0;
            while (i10 < size) {
                i12 += b(h10, c10, list.get(i10));
                i10++;
            }
            return i12;
        }
        return b(h10, c10, obj);
    }

    private int g(Map.Entry entry) {
        android.support.v4.media.session.b.a(entry.getKey());
        entry.getValue();
        throw null;
    }

    static int i(q1.b bVar, boolean z10) {
        if (z10) {
            return 2;
        }
        return bVar.b();
    }

    private static boolean l(Map.Entry entry) {
        android.support.v4.media.session.b.a(entry.getKey());
        throw null;
    }

    private static boolean m(q1.b bVar, Object obj) {
        y.a(obj);
        switch (a.f2307a[bVar.a().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                if ((obj instanceof g) || (obj instanceof byte[])) {
                    return true;
                }
                return false;
            case 8:
                if (obj instanceof Integer) {
                    return true;
                }
                return false;
            case 9:
                if (obj instanceof p0) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    private void q(Map.Entry entry) {
        android.support.v4.media.session.b.a(entry.getKey());
        entry.getValue();
        throw null;
    }

    public static s r() {
        return new s();
    }

    private void t(b bVar, Object obj) {
        if (m(bVar.h(), obj)) {
            return;
        }
        throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(bVar.c()), bVar.h().a(), obj.getClass().getName()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void u(j jVar, q1.b bVar, int i10, Object obj) {
        if (bVar == q1.b.f2274l) {
            jVar.q0(i10, (p0) obj);
            return;
        }
        jVar.M0(i10, i(bVar, false));
        v(jVar, bVar, obj);
    }

    static void v(j jVar, q1.b bVar, Object obj) {
        switch (a.f2308b[bVar.ordinal()]) {
            case 1:
                jVar.h0(((Double) obj).doubleValue());
                return;
            case 2:
                jVar.p0(((Float) obj).floatValue());
                return;
            case 3:
                jVar.x0(((Long) obj).longValue());
                return;
            case 4:
                jVar.Q0(((Long) obj).longValue());
                return;
            case 5:
                jVar.v0(((Integer) obj).intValue());
                return;
            case 6:
                jVar.n0(((Long) obj).longValue());
                return;
            case 7:
                jVar.l0(((Integer) obj).intValue());
                return;
            case 8:
                jVar.b0(((Boolean) obj).booleanValue());
                return;
            case 9:
                jVar.s0((p0) obj);
                return;
            case 10:
                jVar.z0((p0) obj);
                return;
            case 11:
                if (obj instanceof g) {
                    jVar.f0((g) obj);
                    return;
                } else {
                    jVar.L0((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof g) {
                    jVar.f0((g) obj);
                    return;
                } else {
                    jVar.c0((byte[]) obj);
                    return;
                }
            case 13:
                jVar.O0(((Integer) obj).intValue());
                return;
            case 14:
                jVar.D0(((Integer) obj).intValue());
                return;
            case 15:
                jVar.F0(((Long) obj).longValue());
                return;
            case 16:
                jVar.H0(((Integer) obj).intValue());
                return;
            case 17:
                jVar.J0(((Long) obj).longValue());
                return;
            case 18:
                jVar.j0(((Integer) obj).intValue());
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public s clone() {
        s r10 = r();
        int l10 = this.f2304a.l();
        for (int i10 = 0; i10 < l10; i10++) {
            Map.Entry k10 = this.f2304a.k(i10);
            android.support.v4.media.session.b.a(k10.getKey());
            r10.s(null, k10.getValue());
        }
        for (Map.Entry entry : this.f2304a.n()) {
            android.support.v4.media.session.b.a(entry.getKey());
            r10.s(null, entry.getValue());
        }
        r10.f2306c = this.f2306c;
        return r10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Iterator e() {
        if (j()) {
            return Collections.emptyIterator();
        }
        if (this.f2306c) {
            return new b0(this.f2304a.i().iterator());
        }
        return this.f2304a.i().iterator();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        return this.f2304a.equals(((s) obj).f2304a);
    }

    public int f() {
        int l10 = this.f2304a.l();
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            i10 += g(this.f2304a.k(i11));
        }
        for (Map.Entry entry : this.f2304a.n()) {
            i10 += g(entry);
        }
        return i10;
    }

    public int h() {
        int l10 = this.f2304a.l();
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            Map.Entry k10 = this.f2304a.k(i11);
            android.support.v4.media.session.b.a(k10.getKey());
            i10 += d(null, k10.getValue());
        }
        for (Map.Entry entry : this.f2304a.n()) {
            android.support.v4.media.session.b.a(entry.getKey());
            i10 += d(null, entry.getValue());
        }
        return i10;
    }

    public int hashCode() {
        return this.f2304a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f2304a.isEmpty();
    }

    public boolean k() {
        int l10 = this.f2304a.l();
        for (int i10 = 0; i10 < l10; i10++) {
            if (!l(this.f2304a.k(i10))) {
                return false;
            }
        }
        for (Map.Entry entry : this.f2304a.n()) {
            if (!l(entry)) {
                return false;
            }
        }
        return true;
    }

    public Iterator n() {
        if (j()) {
            return Collections.emptyIterator();
        }
        if (this.f2306c) {
            return new b0(this.f2304a.entrySet().iterator());
        }
        return this.f2304a.entrySet().iterator();
    }

    public void o() {
        if (this.f2305b) {
            return;
        }
        int l10 = this.f2304a.l();
        for (int i10 = 0; i10 < l10; i10++) {
            Map.Entry k10 = this.f2304a.k(i10);
            if (k10.getValue() instanceof w) {
                ((w) k10.getValue()).D();
            }
        }
        this.f2304a.q();
        this.f2305b = true;
    }

    public void p(s sVar) {
        int l10 = sVar.f2304a.l();
        for (int i10 = 0; i10 < l10; i10++) {
            q(sVar.f2304a.k(i10));
        }
        for (Map.Entry entry : sVar.f2304a.n()) {
            q(entry);
        }
    }

    public void s(b bVar, Object obj) {
        if (bVar.d()) {
            if (obj instanceof List) {
                ArrayList<Object> arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                for (Object obj2 : arrayList) {
                    t(bVar, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            t(bVar, obj);
        }
        this.f2304a.s(bVar, obj);
    }

    private s(boolean z10) {
        this(h1.r());
        o();
    }

    private s(h1 h1Var) {
        this.f2304a = h1Var;
        o();
    }
}
