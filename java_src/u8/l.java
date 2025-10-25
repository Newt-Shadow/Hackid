package u8;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: c  reason: collision with root package name */
    public static final b f30927c = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final h7.f f30928a;

    /* renamed from: b  reason: collision with root package name */
    private final x8.j f30929b;

    /* loaded from: classes.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f30930a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ q0 f30932c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(q0 q0Var, ad.e eVar) {
            super(2, eVar);
            this.f30932c = q0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(q0 q0Var, String str, h7.n nVar) {
            Log.w("FirebaseSessions", "FirebaseApp instance deleted. Sessions library will stop collecting data.");
            q0Var.a();
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new a(this.f30932c, eVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = bd.b.e()
                int r1 = r5.f30930a
                java.lang.String r2 = "FirebaseSessions"
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L20
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L14
                xc.m.b(r6)
                goto L76
            L14:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1c:
                xc.m.b(r6)
                goto L2e
            L20:
                xc.m.b(r6)
                v8.b r6 = v8.b.f31272a
                r5.f30930a = r4
                java.lang.Object r6 = r6.c(r5)
                if (r6 != r0) goto L2e
                return r0
            L2e:
                java.util.Map r6 = (java.util.Map) r6
                java.util.Collection r6 = r6.values()
                java.lang.Iterable r6 = (java.lang.Iterable) r6
                boolean r1 = r6 instanceof java.util.Collection
                if (r1 == 0) goto L44
                r1 = r6
                java.util.Collection r1 = (java.util.Collection) r1
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L44
                goto L5b
            L44:
                java.util.Iterator r6 = r6.iterator()
            L48:
                boolean r1 = r6.hasNext()
                if (r1 == 0) goto L5b
                java.lang.Object r1 = r6.next()
                v8.c r1 = (v8.c) r1
                boolean r1 = r1.a()
                if (r1 == 0) goto L48
                r4 = 0
            L5b:
                if (r4 == 0) goto L67
                java.lang.String r6 = "No Sessions subscribers. Not listening to lifecycle events."
                int r6 = android.util.Log.d(r2, r6)
                kotlin.coroutines.jvm.internal.b.c(r6)
                goto L9e
            L67:
                u8.l r6 = u8.l.this
                x8.j r6 = u8.l.b(r6)
                r5.f30930a = r3
                java.lang.Object r6 = r6.f(r5)
                if (r6 != r0) goto L76
                return r0
            L76:
                u8.l r6 = u8.l.this
                x8.j r6 = u8.l.b(r6)
                boolean r6 = r6.c()
                if (r6 != 0) goto L8c
                java.lang.String r6 = "Sessions SDK disabled. Not listening to lifecycle events."
                int r6 = android.util.Log.d(r2, r6)
                kotlin.coroutines.jvm.internal.b.c(r6)
                goto L9e
            L8c:
                u8.l r6 = u8.l.this
                h7.f r6 = u8.l.a(r6)
                u8.q0 r0 = r5.f30932c
                u8.k r1 = new u8.k
                r1.<init>()
                r6.h(r1)
                xc.t r6 = xc.t.f32733a
            L9e:
                xc.t r6 = xc.t.f32733a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: u8.l.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public l(h7.f firebaseApp, x8.j settings, ad.i backgroundDispatcher, q0 sessionsActivityLifecycleCallbacks) {
        kotlin.jvm.internal.m.e(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.m.e(settings, "settings");
        kotlin.jvm.internal.m.e(backgroundDispatcher, "backgroundDispatcher");
        kotlin.jvm.internal.m.e(sessionsActivityLifecycleCallbacks, "sessionsActivityLifecycleCallbacks");
        this.f30928a = firebaseApp;
        this.f30929b = settings;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.0.");
        Context applicationContext = firebaseApp.m().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(sessionsActivityLifecycleCallbacks);
            td.i.d(td.m0.a(backgroundDispatcher), null, null, new a(sessionsActivityLifecycleCallbacks, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
