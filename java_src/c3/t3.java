package c3;

import android.media.metrics.LogSessionId;
/* loaded from: classes.dex */
public final class t3 {

    /* renamed from: b  reason: collision with root package name */
    public static final t3 f4994b;

    /* renamed from: a  reason: collision with root package name */
    private final a f4995a;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f4996b;

        /* renamed from: a  reason: collision with root package name */
        public final LogSessionId f4997a;

        static {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            f4996b = new a(logSessionId);
        }

        public a(LogSessionId logSessionId) {
            this.f4997a = logSessionId;
        }
    }

    static {
        t3 t3Var;
        if (y4.q0.f32946a < 31) {
            t3Var = new t3();
        } else {
            t3Var = new t3(a.f4996b);
        }
        f4994b = t3Var;
    }

    public t3() {
        this((a) null);
        y4.a.f(y4.q0.f32946a < 31);
    }

    public LogSessionId a() {
        return ((a) y4.a.e(this.f4995a)).f4997a;
    }

    public t3(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private t3(a aVar) {
        this.f4995a = aVar;
    }
}
