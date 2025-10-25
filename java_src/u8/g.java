package u8;

import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class g implements h {

    /* renamed from: b  reason: collision with root package name */
    public static final a f30907b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final k8.b f30908a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g(k8.b transportFactoryProvider) {
        kotlin.jvm.internal.m.e(transportFactoryProvider, "transportFactoryProvider");
        this.f30908a = transportFactoryProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] c(i0 i0Var) {
        String b10 = j0.f30924a.c().b(i0Var);
        kotlin.jvm.internal.m.d(b10, "encode(...)");
        Log.d("FirebaseSessions", "Session Event Type: " + i0Var.b().name());
        byte[] bytes = b10.getBytes(rd.d.f29089b);
        kotlin.jvm.internal.m.d(bytes, "getBytes(...)");
        return bytes;
    }

    @Override // u8.h
    public void a(i0 sessionEvent) {
        kotlin.jvm.internal.m.e(sessionEvent, "sessionEvent");
        ((n2.j) this.f30908a.get()).a("FIREBASE_APPQUALITY_SESSION", i0.class, n2.c.b("json"), new n2.h() { // from class: u8.f
            @Override // n2.h
            public final Object apply(Object obj) {
                byte[] c10;
                c10 = g.this.c((i0) obj);
                return c10;
            }
        }).b(n2.d.f(sessionEvent));
    }
}
