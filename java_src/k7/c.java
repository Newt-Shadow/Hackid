package k7;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f24785a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f24786b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f24787c;

    /* renamed from: d  reason: collision with root package name */
    private final int f24788d;

    /* renamed from: e  reason: collision with root package name */
    private final int f24789e;

    /* renamed from: f  reason: collision with root package name */
    private final g f24790f;

    /* renamed from: g  reason: collision with root package name */
    private final Set f24791g;

    public static b c(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b d(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static b e(e0 e0Var) {
        return new b(e0Var, new e0[0]);
    }

    public static b f(e0 e0Var, e0... e0VarArr) {
        return new b(e0Var, e0VarArr);
    }

    public static c l(final Object obj, Class cls) {
        return m(cls).f(new g() { // from class: k7.a
            @Override // k7.g
            public final Object a(d dVar) {
                Object q10;
                q10 = c.q(obj, dVar);
                return q10;
            }
        }).d();
    }

    public static b m(Class cls) {
        return c(cls).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q(Object obj, d dVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Object obj, d dVar) {
        return obj;
    }

    public static c s(final Object obj, Class cls, Class... clsArr) {
        return d(cls, clsArr).f(new g() { // from class: k7.b
            @Override // k7.g
            public final Object a(d dVar) {
                Object r10;
                r10 = c.r(obj, dVar);
                return r10;
            }
        }).d();
    }

    public Set g() {
        return this.f24787c;
    }

    public g h() {
        return this.f24790f;
    }

    public String i() {
        return this.f24785a;
    }

    public Set j() {
        return this.f24786b;
    }

    public Set k() {
        return this.f24791g;
    }

    public boolean n() {
        if (this.f24788d == 1) {
            return true;
        }
        return false;
    }

    public boolean o() {
        if (this.f24788d == 2) {
            return true;
        }
        return false;
    }

    public boolean p() {
        if (this.f24789e == 0) {
            return true;
        }
        return false;
    }

    public c t(g gVar) {
        return new c(this.f24785a, this.f24786b, this.f24787c, this.f24788d, this.f24789e, gVar, this.f24791g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f24786b.toArray()) + ">{" + this.f24788d + ", type=" + this.f24789e + ", deps=" + Arrays.toString(this.f24787c.toArray()) + "}";
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f24792a;

        /* renamed from: b  reason: collision with root package name */
        private final Set f24793b;

        /* renamed from: c  reason: collision with root package name */
        private final Set f24794c;

        /* renamed from: d  reason: collision with root package name */
        private int f24795d;

        /* renamed from: e  reason: collision with root package name */
        private int f24796e;

        /* renamed from: f  reason: collision with root package name */
        private g f24797f;

        /* renamed from: g  reason: collision with root package name */
        private final Set f24798g;

        /* JADX INFO: Access modifiers changed from: private */
        public b g() {
            this.f24796e = 1;
            return this;
        }

        private b i(int i10) {
            boolean z10;
            if (this.f24795d == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            d0.d(z10, "Instantiation type has already been set.");
            this.f24795d = i10;
            return this;
        }

        private void j(e0 e0Var) {
            d0.a(!this.f24793b.contains(e0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b b(q qVar) {
            d0.c(qVar, "Null dependency");
            j(qVar.c());
            this.f24794c.add(qVar);
            return this;
        }

        public b c() {
            return i(1);
        }

        public c d() {
            boolean z10;
            if (this.f24797f != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            d0.d(z10, "Missing required property: factory.");
            return new c(this.f24792a, new HashSet(this.f24793b), new HashSet(this.f24794c), this.f24795d, this.f24796e, this.f24797f, this.f24798g);
        }

        public b e() {
            return i(2);
        }

        public b f(g gVar) {
            this.f24797f = (g) d0.c(gVar, "Null factory");
            return this;
        }

        public b h(String str) {
            this.f24792a = str;
            return this;
        }

        private b(Class cls, Class... clsArr) {
            this.f24792a = null;
            HashSet hashSet = new HashSet();
            this.f24793b = hashSet;
            this.f24794c = new HashSet();
            this.f24795d = 0;
            this.f24796e = 0;
            this.f24798g = new HashSet();
            d0.c(cls, "Null interface");
            hashSet.add(e0.b(cls));
            for (Class cls2 : clsArr) {
                d0.c(cls2, "Null interface");
                this.f24793b.add(e0.b(cls2));
            }
        }

        private b(e0 e0Var, e0... e0VarArr) {
            this.f24792a = null;
            HashSet hashSet = new HashSet();
            this.f24793b = hashSet;
            this.f24794c = new HashSet();
            this.f24795d = 0;
            this.f24796e = 0;
            this.f24798g = new HashSet();
            d0.c(e0Var, "Null interface");
            hashSet.add(e0Var);
            for (e0 e0Var2 : e0VarArr) {
                d0.c(e0Var2, "Null interface");
            }
            Collections.addAll(this.f24793b, e0VarArr);
        }
    }

    private c(String str, Set set, Set set2, int i10, int i11, g gVar, Set set3) {
        this.f24785a = str;
        this.f24786b = Collections.unmodifiableSet(set);
        this.f24787c = Collections.unmodifiableSet(set2);
        this.f24788d = i10;
        this.f24789e = i11;
        this.f24790f = gVar;
        this.f24791g = Collections.unmodifiableSet(set3);
    }
}
