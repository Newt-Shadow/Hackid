package t1;

import android.graphics.Rect;
import kotlin.jvm.internal.DefaultConstructorMarker;
import t1.c;
/* loaded from: classes.dex */
public final class d implements c {

    /* renamed from: d  reason: collision with root package name */
    public static final a f29804d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final q1.b f29805a;

    /* renamed from: b  reason: collision with root package name */
    private final b f29806b;

    /* renamed from: c  reason: collision with root package name */
    private final c.b f29807c;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(q1.b bounds) {
            boolean z10;
            kotlin.jvm.internal.m.e(bounds, "bounds");
            boolean z11 = false;
            if (bounds.d() == 0 && bounds.a() == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                if (bounds.b() == 0 || bounds.c() == 0) {
                    z11 = true;
                }
                if (z11) {
                    return;
                }
                throw new IllegalArgumentException("Bounding rectangle must start at the top or left window edge for folding features".toString());
            }
            throw new IllegalArgumentException("Bounds must be non zero".toString());
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static final a f29808b = new a(null);

        /* renamed from: c  reason: collision with root package name */
        private static final b f29809c = new b("FOLD");

        /* renamed from: d  reason: collision with root package name */
        private static final b f29810d = new b("HINGE");

        /* renamed from: a  reason: collision with root package name */
        private final String f29811a;

        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final b a() {
                return b.f29809c;
            }

            public final b b() {
                return b.f29810d;
            }
        }

        private b(String str) {
            this.f29811a = str;
        }

        public String toString() {
            return this.f29811a;
        }
    }

    public d(q1.b featureBounds, b type, c.b state) {
        kotlin.jvm.internal.m.e(featureBounds, "featureBounds");
        kotlin.jvm.internal.m.e(type, "type");
        kotlin.jvm.internal.m.e(state, "state");
        this.f29805a = featureBounds;
        this.f29806b = type;
        this.f29807c = state;
        f29804d.a(featureBounds);
    }

    @Override // t1.a
    public Rect a() {
        return this.f29805a.f();
    }

    @Override // t1.c
    public c.a b() {
        if (this.f29805a.d() != 0 && this.f29805a.a() != 0) {
            return c.a.f29798d;
        }
        return c.a.f29797c;
    }

    public boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!kotlin.jvm.internal.m.a(d.class, cls)) {
            return false;
        }
        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature");
        d dVar = (d) obj;
        if (kotlin.jvm.internal.m.a(this.f29805a, dVar.f29805a) && kotlin.jvm.internal.m.a(this.f29806b, dVar.f29806b) && kotlin.jvm.internal.m.a(getState(), dVar.getState())) {
            return true;
        }
        return false;
    }

    @Override // t1.c
    public c.b getState() {
        return this.f29807c;
    }

    public int hashCode() {
        return (((this.f29805a.hashCode() * 31) + this.f29806b.hashCode()) * 31) + getState().hashCode();
    }

    public String toString() {
        return d.class.getSimpleName() + " { " + this.f29805a + ", type=" + this.f29806b + ", state=" + getState() + " }";
    }
}
