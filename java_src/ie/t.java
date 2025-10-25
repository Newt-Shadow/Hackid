package ie;

import ge.d;
import ge.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import yc.h0;
/* loaded from: classes2.dex */
public class t implements ge.d, c {

    /* renamed from: a  reason: collision with root package name */
    private final String f17440a;

    /* renamed from: b  reason: collision with root package name */
    private final f f17441b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17442c;

    /* renamed from: d  reason: collision with root package name */
    private int f17443d;

    /* renamed from: e  reason: collision with root package name */
    private final String[] f17444e;

    /* renamed from: f  reason: collision with root package name */
    private final List[] f17445f;

    /* renamed from: g  reason: collision with root package name */
    private List f17446g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f17447h;

    /* renamed from: i  reason: collision with root package name */
    private Map f17448i;

    /* renamed from: j  reason: collision with root package name */
    private final xc.d f17449j;

    /* renamed from: k  reason: collision with root package name */
    private final xc.d f17450k;

    /* renamed from: l  reason: collision with root package name */
    private final xc.d f17451l;

    public t(String serialName, f fVar, int i10) {
        Map e10;
        xc.d b10;
        xc.d b11;
        xc.d b12;
        kotlin.jvm.internal.m.e(serialName, "serialName");
        this.f17440a = serialName;
        this.f17441b = fVar;
        this.f17442c = i10;
        this.f17443d = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.f17444e = strArr;
        int i12 = this.f17442c;
        this.f17445f = new List[i12];
        this.f17447h = new boolean[i12];
        e10 = h0.e();
        this.f17448i = e10;
        xc.h hVar = xc.h.f32712b;
        b10 = xc.f.b(hVar, new id.a() { // from class: ie.p
            @Override // id.a
            public final Object invoke() {
                ee.b[] r10;
                r10 = t.r(t.this);
                return r10;
            }
        });
        this.f17449j = b10;
        b11 = xc.f.b(hVar, new id.a() { // from class: ie.q
            @Override // id.a
            public final Object invoke() {
                ge.d[] w10;
                w10 = t.w(t.this);
                return w10;
            }
        });
        this.f17450k = b11;
        b12 = xc.f.b(hVar, new id.a() { // from class: ie.r
            @Override // id.a
            public final Object invoke() {
                int o10;
                o10 = t.o(t.this);
                return Integer.valueOf(o10);
            }
        });
        this.f17451l = b12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o(t tVar) {
        return u.a(tVar, tVar.t());
    }

    private final Map q() {
        HashMap hashMap = new HashMap();
        int length = this.f17444e.length;
        for (int i10 = 0; i10 < length; i10++) {
            hashMap.put(this.f17444e[i10], Integer.valueOf(i10));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ee.b[] r(t tVar) {
        ee.b[] d10;
        f fVar = tVar.f17441b;
        if (fVar == null || (d10 = fVar.d()) == null) {
            return v.f17452a;
        }
        return d10;
    }

    private final ee.b[] s() {
        return (ee.b[]) this.f17449j.getValue();
    }

    private final int u() {
        return ((Number) this.f17451l.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence v(t tVar, int i10) {
        return tVar.g(i10) + ": " + tVar.i(i10).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ge.d[] w(t tVar) {
        ArrayList arrayList;
        ee.b[] b10;
        f fVar = tVar.f17441b;
        if (fVar != null && (b10 = fVar.b()) != null) {
            arrayList = new ArrayList(b10.length);
            for (ee.b bVar : b10) {
                arrayList.add(bVar.a());
            }
        } else {
            arrayList = null;
        }
        return n.b(arrayList);
    }

    @Override // ge.d
    public String a() {
        return this.f17440a;
    }

    @Override // ie.c
    public Set b() {
        return this.f17448i.keySet();
    }

    @Override // ge.d
    public boolean c() {
        return d.a.c(this);
    }

    @Override // ge.d
    public int d(String name) {
        kotlin.jvm.internal.m.e(name, "name");
        Integer num = (Integer) this.f17448i.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // ge.d
    public ge.f e() {
        return g.a.f16420a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            ge.d dVar = (ge.d) obj;
            if (kotlin.jvm.internal.m.a(a(), dVar.a()) && Arrays.equals(t(), ((t) obj).t()) && f() == dVar.f()) {
                int f10 = f();
                for (int i10 = 0; i10 < f10; i10++) {
                    if (kotlin.jvm.internal.m.a(i(i10).a(), dVar.i(i10).a()) && kotlin.jvm.internal.m.a(i(i10).e(), dVar.i(i10).e())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // ge.d
    public final int f() {
        return this.f17442c;
    }

    @Override // ge.d
    public String g(int i10) {
        return this.f17444e[i10];
    }

    @Override // ge.d
    public List getAnnotations() {
        List h10;
        List list = this.f17446g;
        if (list == null) {
            h10 = yc.o.h();
            return h10;
        }
        return list;
    }

    @Override // ge.d
    public List h(int i10) {
        List h10;
        List list = this.f17445f[i10];
        if (list == null) {
            h10 = yc.o.h();
            return h10;
        }
        return list;
    }

    public int hashCode() {
        return u();
    }

    @Override // ge.d
    public ge.d i(int i10) {
        return s()[i10].a();
    }

    @Override // ge.d
    public boolean isInline() {
        return d.a.b(this);
    }

    @Override // ge.d
    public boolean j(int i10) {
        return this.f17447h[i10];
    }

    public final void p(String name, boolean z10) {
        kotlin.jvm.internal.m.e(name, "name");
        String[] strArr = this.f17444e;
        int i10 = this.f17443d + 1;
        this.f17443d = i10;
        strArr[i10] = name;
        this.f17447h[i10] = z10;
        this.f17445f[i10] = null;
        if (i10 == this.f17442c - 1) {
            this.f17448i = q();
        }
    }

    public final ge.d[] t() {
        return (ge.d[]) this.f17450k.getValue();
    }

    public String toString() {
        od.c k10;
        String X;
        k10 = od.i.k(0, this.f17442c);
        X = yc.w.X(k10, ", ", a() + '(', ")", 0, null, new id.l() { // from class: ie.s
            @Override // id.l
            public final Object invoke(Object obj) {
                CharSequence v10;
                v10 = t.v(t.this, ((Integer) obj).intValue());
                return v10;
            }
        }, 24, null);
        return X;
    }
}
