package u8;

import android.util.Log;
import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class l0 implements k0 {

    /* renamed from: f  reason: collision with root package name */
    public static final a f30933f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final double f30934g = Math.random();

    /* renamed from: a  reason: collision with root package name */
    private final h7.f f30935a;

    /* renamed from: b  reason: collision with root package name */
    private final l8.e f30936b;

    /* renamed from: c  reason: collision with root package name */
    private final x8.j f30937c;

    /* renamed from: d  reason: collision with root package name */
    private final h f30938d;

    /* renamed from: e  reason: collision with root package name */
    private final ad.i f30939e;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f30940a;

        /* renamed from: b  reason: collision with root package name */
        Object f30941b;

        /* renamed from: c  reason: collision with root package name */
        Object f30942c;

        /* renamed from: d  reason: collision with root package name */
        Object f30943d;

        /* renamed from: e  reason: collision with root package name */
        Object f30944e;

        /* renamed from: f  reason: collision with root package name */
        Object f30945f;

        /* renamed from: g  reason: collision with root package name */
        int f30946g;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ h0 f30948i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h0 h0Var, ad.e eVar) {
            super(2, eVar);
            this.f30948i = h0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new b(this.f30948i, eVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0096  */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = bd.b.e()
                int r1 = r10.f30946g
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L45
                if (r1 == r4) goto L41
                if (r1 == r3) goto L3d
                if (r1 != r2) goto L35
                java.lang.Object r0 = r10.f30945f
                x8.j r0 = (x8.j) r0
                java.lang.Object r1 = r10.f30944e
                u8.h0 r1 = (u8.h0) r1
                java.lang.Object r2 = r10.f30943d
                h7.f r2 = (h7.f) r2
                java.lang.Object r3 = r10.f30942c
                u8.j0 r3 = (u8.j0) r3
                java.lang.Object r4 = r10.f30941b
                u8.l0 r4 = (u8.l0) r4
                java.lang.Object r5 = r10.f30940a
                u8.t r5 = (u8.t) r5
                xc.m.b(r11)
                r7 = r4
                r8 = r3
                r3 = r0
                r0 = r8
                r9 = r2
                r2 = r1
                r1 = r9
                goto L9d
            L35:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L3d:
                xc.m.b(r11)
                goto L6c
            L41:
                xc.m.b(r11)
                goto L53
            L45:
                xc.m.b(r11)
                u8.l0 r11 = u8.l0.this
                r10.f30946g = r4
                java.lang.Object r11 = u8.l0.f(r11, r10)
                if (r11 != r0) goto L53
                return r0
            L53:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto Lb0
                u8.t$a r11 = u8.t.f30981c
                u8.l0 r1 = u8.l0.this
                l8.e r1 = u8.l0.d(r1)
                r10.f30946g = r3
                java.lang.Object r11 = r11.a(r1, r10)
                if (r11 != r0) goto L6c
                return r0
            L6c:
                r5 = r11
                u8.t r5 = (u8.t) r5
                u8.l0 r4 = u8.l0.this
                u8.j0 r3 = u8.j0.f30924a
                h7.f r11 = u8.l0.c(r4)
                u8.h0 r1 = r10.f30948i
                u8.l0 r6 = u8.l0.this
                x8.j r6 = u8.l0.e(r6)
                v8.b r7 = v8.b.f31272a
                r10.f30940a = r5
                r10.f30941b = r4
                r10.f30942c = r3
                r10.f30943d = r11
                r10.f30944e = r1
                r10.f30945f = r6
                r10.f30946g = r2
                java.lang.Object r2 = r7.c(r10)
                if (r2 != r0) goto L96
                return r0
            L96:
                r0 = r3
                r7 = r4
                r3 = r6
                r8 = r1
                r1 = r11
                r11 = r2
                r2 = r8
            L9d:
                r4 = r11
                java.util.Map r4 = (java.util.Map) r4
                java.lang.String r11 = r5.b()
                java.lang.String r6 = r5.a()
                r5 = r11
                u8.i0 r11 = r0.a(r1, r2, r3, r4, r5, r6)
                u8.l0.b(r7, r11)
            Lb0:
                xc.t r11 = xc.t.f32733a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: u8.l0.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((b) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f30949a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f30950b;

        /* renamed from: d  reason: collision with root package name */
        int f30952d;

        c(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f30950b = obj;
            this.f30952d |= Integer.MIN_VALUE;
            return l0.this.i(this);
        }
    }

    public l0(h7.f firebaseApp, l8.e firebaseInstallations, x8.j sessionSettings, h eventGDTLogger, ad.i backgroundDispatcher) {
        kotlin.jvm.internal.m.e(firebaseApp, "firebaseApp");
        kotlin.jvm.internal.m.e(firebaseInstallations, "firebaseInstallations");
        kotlin.jvm.internal.m.e(sessionSettings, "sessionSettings");
        kotlin.jvm.internal.m.e(eventGDTLogger, "eventGDTLogger");
        kotlin.jvm.internal.m.e(backgroundDispatcher, "backgroundDispatcher");
        this.f30935a = firebaseApp;
        this.f30936b = firebaseInstallations;
        this.f30937c = sessionSettings;
        this.f30938d = eventGDTLogger;
        this.f30939e = backgroundDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(i0 i0Var) {
        try {
            this.f30938d.a(i0Var);
            Log.d("FirebaseSessions", "Successfully logged Session Start event.");
        } catch (RuntimeException e10) {
            Log.e("FirebaseSessions", "Error logging Session Start event to DataTransport: ", e10);
        }
    }

    private final boolean h() {
        if (f30934g <= this.f30937c.a()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(ad.e r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof u8.l0.c
            if (r0 == 0) goto L13
            r0 = r9
            u8.l0$c r0 = (u8.l0.c) r0
            int r1 = r0.f30952d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30952d = r1
            goto L18
        L13:
            u8.l0$c r0 = new u8.l0$c
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f30950b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f30952d
            r3 = 2
            java.lang.String r4 = "FirebaseSessions"
            r5 = 0
            r6 = 1
            if (r2 == 0) goto L43
            if (r2 == r6) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.f30949a
            u8.l0 r0 = (u8.l0) r0
            xc.m.b(r9)
            goto L9c
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3b:
            java.lang.Object r2 = r0.f30949a
            u8.l0 r2 = (u8.l0) r2
            xc.m.b(r9)
            goto L54
        L43:
            xc.m.b(r9)
            v8.b r9 = v8.b.f31272a
            r0.f30949a = r8
            r0.f30952d = r6
            java.lang.Object r9 = r9.c(r0)
            if (r9 != r1) goto L53
            return r1
        L53:
            r2 = r8
        L54:
            java.util.Map r9 = (java.util.Map) r9
            java.util.Collection r9 = r9.values()
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            boolean r7 = r9 instanceof java.util.Collection
            if (r7 == 0) goto L6b
            r7 = r9
            java.util.Collection r7 = (java.util.Collection) r7
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L6b
        L69:
            r9 = r6
            goto L82
        L6b:
            java.util.Iterator r9 = r9.iterator()
        L6f:
            boolean r7 = r9.hasNext()
            if (r7 == 0) goto L69
            java.lang.Object r7 = r9.next()
            v8.c r7 = (v8.c) r7
            boolean r7 = r7.a()
            if (r7 == 0) goto L6f
            r9 = r5
        L82:
            if (r9 == 0) goto L8e
            java.lang.String r9 = "Sessions SDK disabled through data collection. Events will not be sent."
            android.util.Log.d(r4, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.b.a(r5)
            return r9
        L8e:
            x8.j r9 = r2.f30937c
            r0.f30949a = r2
            r0.f30952d = r3
            java.lang.Object r9 = r9.f(r0)
            if (r9 != r1) goto L9b
            return r1
        L9b:
            r0 = r2
        L9c:
            x8.j r9 = r0.f30937c
            boolean r9 = r9.c()
            if (r9 != 0) goto Lae
            java.lang.String r9 = "Sessions SDK disabled through settings API. Events will not be sent."
            android.util.Log.d(r4, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.b.a(r5)
            return r9
        Lae:
            boolean r9 = r0.h()
            if (r9 != 0) goto Lbe
            java.lang.String r9 = "Sessions SDK has dropped this session due to sampling."
            android.util.Log.d(r4, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.b.a(r5)
            return r9
        Lbe:
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.b.a(r6)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: u8.l0.i(ad.e):java.lang.Object");
    }

    @Override // u8.k0
    public void a(h0 sessionDetails) {
        kotlin.jvm.internal.m.e(sessionDetails, "sessionDetails");
        td.i.d(td.m0.a(this.f30939e), null, null, new b(sessionDetails, null), 3, null);
    }
}
