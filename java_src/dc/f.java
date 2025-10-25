package dc;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final xc.d f15157a = xc.e.a(b.f15159e);

    /* renamed from: b  reason: collision with root package name */
    private final dc.a f15158b = new dc.a();

    /* renamed from: d  reason: collision with root package name */
    public static final a f15156d = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static volatile f f15155c = new f();

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f15159e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final dc.b invoke() {
            return new dc.b();
        }
    }

    public static final f c() {
        return f15155c;
    }

    public final dc.a a() {
        return this.f15158b;
    }

    public final dc.b b() {
        return (dc.b) this.f15157a.getValue();
    }

    public final void d() {
        this.f15158b.a();
    }

    public final void e(e configuration) {
        m.e(configuration, "configuration");
        b().c(configuration);
    }
}
