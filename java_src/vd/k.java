package vd;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    public static final b f31403b = new b(null);

    /* renamed from: c  reason: collision with root package name */
    private static final c f31404c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final Object f31405a;

    /* loaded from: classes2.dex */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f31406a;

        public a(Throwable th) {
            this.f31406a = th;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof a) && kotlin.jvm.internal.m.a(this.f31406a, ((a) obj).f31406a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Throwable th = this.f31406a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // vd.k.c
        public String toString() {
            return "Closed(" + this.f31406a + ')';
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Throwable th) {
            return k.c(new a(th));
        }

        public final Object b() {
            return k.c(k.f31404c);
        }

        public final Object c(Object obj) {
            return k.c(obj);
        }
    }

    /* loaded from: classes2.dex */
    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    private /* synthetic */ k(Object obj) {
        this.f31405a = obj;
    }

    public static final /* synthetic */ k b(Object obj) {
        return new k(obj);
    }

    public static Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof k) && kotlin.jvm.internal.m.a(obj, ((k) obj2).k());
    }

    public static final Throwable e(Object obj) {
        a aVar;
        if (obj instanceof a) {
            aVar = (a) obj;
        } else {
            aVar = null;
        }
        if (aVar == null) {
            return null;
        }
        return aVar.f31406a;
    }

    public static final Object f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f31405a, obj);
    }

    public int hashCode() {
        return g(this.f31405a);
    }

    public final /* synthetic */ Object k() {
        return this.f31405a;
    }

    public String toString() {
        return j(this.f31405a);
    }
}
