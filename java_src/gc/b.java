package gc;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: b  reason: collision with root package name */
    public static final a f16394b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private static final c f16393a = new c();

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(boolean z10) {
            if (!z10) {
                return b.f16393a;
            }
            return C0178b.f16395c;
        }
    }

    /* renamed from: gc.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0178b extends b {

        /* renamed from: c  reason: collision with root package name */
        public static final C0178b f16395c = new C0178b();

        private C0178b() {
            super(null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends b {
        public c() {
            super(null);
        }
    }

    private b() {
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
