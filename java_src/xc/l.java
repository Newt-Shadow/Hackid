package xc;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class l implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    public static final a f32718b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Object f32719a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f32720a;

        public b(Throwable exception) {
            kotlin.jvm.internal.m.e(exception, "exception");
            this.f32720a = exception;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof b) && kotlin.jvm.internal.m.a(this.f32720a, ((b) obj).f32720a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f32720a.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f32720a + ')';
        }
    }

    private /* synthetic */ l(Object obj) {
        this.f32719a = obj;
    }

    public static final /* synthetic */ l a(Object obj) {
        return new l(obj);
    }

    public static Object b(Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof l) && kotlin.jvm.internal.m.a(obj, ((l) obj2).i());
    }

    public static final Throwable d(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f32720a;
        }
        return null;
    }

    public static int e(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean f(Object obj) {
        return obj instanceof b;
    }

    public static final boolean g(Object obj) {
        return !(obj instanceof b);
    }

    public static String h(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f32719a, obj);
    }

    public int hashCode() {
        return e(this.f32719a);
    }

    public final /* synthetic */ Object i() {
        return this.f32719a;
    }

    public String toString() {
        return h(this.f32719a);
    }
}
