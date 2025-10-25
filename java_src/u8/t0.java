package u8;

import android.util.Log;
import id.Function2;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class t0 implements s0 {

    /* renamed from: b  reason: collision with root package name */
    private final x8.j f30988b;

    /* renamed from: c  reason: collision with root package name */
    private final n0 f30989c;

    /* renamed from: d  reason: collision with root package name */
    private final k0 f30990d;

    /* renamed from: e  reason: collision with root package name */
    private final w0 f30991e;

    /* renamed from: f  reason: collision with root package name */
    private final j0.i f30992f;

    /* renamed from: g  reason: collision with root package name */
    private final w f30993g;

    /* renamed from: h  reason: collision with root package name */
    private final ad.i f30994h;

    /* renamed from: i  reason: collision with root package name */
    public e0 f30995i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f30996j;

    /* renamed from: k  reason: collision with root package name */
    private b f30997k;

    /* renamed from: l  reason: collision with root package name */
    private String f30998l;

    /* loaded from: classes.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f30999a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: u8.t0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0344a extends kotlin.coroutines.jvm.internal.k implements id.p {

            /* renamed from: a  reason: collision with root package name */
            int f31001a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f31002b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f31003c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ t0 f31004d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0344a(t0 t0Var, ad.e eVar) {
                super(3, eVar);
                this.f31004d = t0Var;
            }

            @Override // id.p
            /* renamed from: a */
            public final Object e(wd.e eVar, Throwable th, ad.e eVar2) {
                C0344a c0344a = new C0344a(this.f31004d, eVar2);
                c0344a.f31002b = eVar;
                c0344a.f31003c = th;
                return c0344a.invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f31001a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        xc.m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    xc.m.b(obj);
                    e0 e0Var = new e0(this.f31004d.f30989c.a(null), (v0) null, (Map) null, 4, (DefaultConstructorMarker) null);
                    Log.d("FirebaseSessions", "Init session datastore failed with exception message: " + ((Throwable) this.f31003c).getMessage() + ". Emit fallback session " + e0Var.f().b());
                    this.f31002b = null;
                    this.f31001a = 1;
                    if (((wd.e) this.f31002b).emit(e0Var, this) == e10) {
                        return e10;
                    }
                }
                return xc.t.f32733a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class b implements wd.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ t0 f31005a;

            b(t0 t0Var) {
                this.f31005a = t0Var;
            }

            @Override // wd.e
            /* renamed from: a */
            public final Object emit(e0 e0Var, ad.e eVar) {
                Object e10;
                this.f31005a.r(e0Var);
                Object q10 = this.f31005a.q(e0Var.f().b(), b.f31006a, eVar);
                e10 = bd.d.e();
                if (q10 == e10) {
                    return q10;
                }
                return xc.t.f32733a;
            }
        }

        a(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new a(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f30999a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                wd.d e11 = wd.f.e(t0.this.f30992f.getData(), new C0344a(t0.this, null));
                b bVar = new b(t0.this);
                this.f30999a = 1;
                if (e11.collect(bVar, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f31006a = new b("GENERAL", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final b f31007b = new b("FALLBACK", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ b[] f31008c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ cd.a f31009d;

        static {
            b[] a10 = a();
            f31008c = a10;
            f31009d = cd.b.a(a10);
        }

        private b(String str, int i10) {
        }

        private static final /* synthetic */ b[] a() {
            return new b[]{f31006a, f31007b};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f31008c.clone();
        }
    }

    /* loaded from: classes.dex */
    public /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f31010a;

        static {
            int[] iArr = new int[b.values().length];
            try {
                iArr[b.f31006a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[b.f31007b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f31010a = iArr;
        }
    }

    /* loaded from: classes.dex */
    static final class d extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f31011a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f31013a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f31014b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ t0 f31015c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(t0 t0Var, ad.e eVar) {
                super(2, eVar);
                this.f31015c = t0Var;
            }

            @Override // id.Function2
            /* renamed from: a */
            public final Object invoke(e0 e0Var, ad.e eVar) {
                return ((a) create(e0Var, eVar)).invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                a aVar = new a(this.f31015c, eVar);
                aVar.f31014b = obj;
                return aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.d.e();
                if (this.f31013a == 0) {
                    xc.m.b(obj);
                    return e0.c((e0) this.f31014b, null, this.f31015c.f30991e.a(), null, 5, null);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        d(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new d(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f31011a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        xc.m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    xc.m.b(obj);
                    j0.i iVar = t0.this.f30992f;
                    a aVar = new a(t0.this, null);
                    this.f31011a = 1;
                    if (iVar.a(aVar, this) == e10) {
                        return e10;
                    }
                }
            } catch (Exception e11) {
                Log.d("FirebaseSessions", "App backgrounded, failed to update data. Message: " + e11.getMessage());
                t0 t0Var = t0.this;
                t0Var.r(e0.c(t0Var.m(), null, t0.this.f30991e.a(), null, 5, null));
            }
            return xc.t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((d) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    static final class e extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f31016a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ e0 f31018c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f31019a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f31020b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ t0 f31021c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(t0 t0Var, ad.e eVar) {
                super(2, eVar);
                this.f31021c = t0Var;
            }

            @Override // id.Function2
            /* renamed from: a */
            public final Object invoke(e0 e0Var, ad.e eVar) {
                return ((a) create(e0Var, eVar)).invokeSuspend(xc.t.f32733a);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                a aVar = new a(this.f31021c, eVar);
                aVar.f31020b = obj;
                return aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Map e10;
                h0 f10;
                bd.d.e();
                if (this.f31019a == 0) {
                    xc.m.b(obj);
                    e0 e0Var = (e0) this.f31020b;
                    boolean p10 = this.f31021c.p(e0Var);
                    boolean n10 = this.f31021c.n(e0Var);
                    boolean o10 = this.f31021c.o(e0Var);
                    if (n10) {
                        e10 = this.f31021c.f30993g.e();
                    } else if (o10) {
                        e10 = this.f31021c.f30993g.f(e0Var.e());
                    } else {
                        e10 = e0Var.e();
                    }
                    if (n10) {
                        f10 = null;
                    } else {
                        f10 = e0Var.f();
                    }
                    if (!p10 && !n10) {
                        if (o10) {
                            return e0.c(e0Var, null, null, this.f31021c.f30993g.f(e10), 3, null);
                        }
                        return e0Var;
                    }
                    h0 a10 = this.f31021c.f30989c.a(f10);
                    this.f31021c.f30990d.a(a10);
                    this.f31021c.f30993g.a();
                    return e0Var.b(a10, null, e10);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(e0 e0Var, ad.e eVar) {
            super(2, eVar);
            this.f31018c = e0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new e(this.f31018c, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f31016a;
            try {
            } catch (Exception e11) {
                Log.d("FirebaseSessions", "App foregrounded, failed to update data. Message: " + e11.getMessage());
                if (t0.this.p(this.f31018c)) {
                    h0 a10 = t0.this.f30989c.a(this.f31018c.f());
                    t0.this.r(e0.c(this.f31018c, a10, null, null, 4, null));
                    t0.this.f30990d.a(a10);
                    t0 t0Var = t0.this;
                    String b10 = a10.b();
                    b bVar = b.f31007b;
                    this.f31016a = 2;
                    if (t0Var.q(b10, bVar, this) == e10) {
                        return e10;
                    }
                }
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        xc.m.b(obj);
                        return xc.t.f32733a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                xc.m.b(obj);
            } else {
                xc.m.b(obj);
                j0.i iVar = t0.this.f30992f;
                a aVar = new a(t0.this, null);
                this.f31016a = 1;
                if (iVar.a(aVar, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((e) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class f extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f31022a;

        /* renamed from: b  reason: collision with root package name */
        Object f31023b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f31024c;

        /* renamed from: e  reason: collision with root package name */
        int f31026e;

        f(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f31024c = obj;
            this.f31026e |= Integer.MIN_VALUE;
            return t0.this.q(null, null, this);
        }
    }

    public t0(x8.j sessionsSettings, n0 sessionGenerator, k0 sessionFirelogPublisher, w0 timeProvider, j0.i sessionDataStore, w processDataManager, ad.i backgroundDispatcher) {
        kotlin.jvm.internal.m.e(sessionsSettings, "sessionsSettings");
        kotlin.jvm.internal.m.e(sessionGenerator, "sessionGenerator");
        kotlin.jvm.internal.m.e(sessionFirelogPublisher, "sessionFirelogPublisher");
        kotlin.jvm.internal.m.e(timeProvider, "timeProvider");
        kotlin.jvm.internal.m.e(sessionDataStore, "sessionDataStore");
        kotlin.jvm.internal.m.e(processDataManager, "processDataManager");
        kotlin.jvm.internal.m.e(backgroundDispatcher, "backgroundDispatcher");
        this.f30988b = sessionsSettings;
        this.f30989c = sessionGenerator;
        this.f30990d = sessionFirelogPublisher;
        this.f30991e = timeProvider;
        this.f30992f = sessionDataStore;
        this.f30993g = processDataManager;
        this.f30994h = backgroundDispatcher;
        this.f30997k = b.f31006a;
        this.f30998l = "";
        td.i.d(td.m0.a(backgroundDispatcher), null, null, new a(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n(e0 e0Var) {
        Map e10 = e0Var.e();
        if (e10 != null) {
            boolean b10 = this.f30993g.b(e10);
            if (b10) {
                Log.d("FirebaseSessions", "Cold app start detected");
            }
            return b10;
        }
        Log.d("FirebaseSessions", "No process data map");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(e0 e0Var) {
        Map e10 = e0Var.e();
        if (e10 != null) {
            boolean d10 = this.f30993g.d(e10);
            if (d10) {
                Log.d("FirebaseSessions", "Process " + this.f30993g.c() + " is stale");
            }
            return d10;
        }
        Log.d("FirebaseSessions", "No process data for " + this.f30993g.c());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p(e0 e0Var) {
        v0 d10 = e0Var.d();
        boolean z10 = false;
        if (d10 != null) {
            if (sd.a.i(this.f30991e.a().c(d10), this.f30988b.b()) > 0) {
                z10 = true;
            }
            if (z10) {
                Log.d("FirebaseSessions", "Session " + e0Var.f().b() + " is expired");
            }
            return z10;
        }
        Log.d("FirebaseSessions", "Session " + e0Var.f().b() + " has not backgrounded yet");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.String r6, u8.t0.b r7, ad.e r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof u8.t0.f
            if (r0 == 0) goto L13
            r0 = r8
            u8.t0$f r0 = (u8.t0.f) r0
            int r1 = r0.f31026e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31026e = r1
            goto L18
        L13:
            u8.t0$f r0 = new u8.t0$f
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f31024c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f31026e
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r6 = r0.f31023b
            r7 = r6
            u8.t0$b r7 = (u8.t0.b) r7
            java.lang.Object r6 = r0.f31022a
            java.lang.String r6 = (java.lang.String) r6
            xc.m.b(r8)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            xc.m.b(r8)
            r5.f30997k = r7
            java.lang.String r8 = r5.f30998l
            boolean r8 = kotlin.jvm.internal.m.a(r8, r6)
            if (r8 == 0) goto L4a
            xc.t r6 = xc.t.f32733a
            return r6
        L4a:
            r5.f30998l = r6
            v8.b r8 = v8.b.f31272a
            r0.f31022a = r6
            r0.f31023b = r7
            r0.f31026e = r3
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            java.util.Map r8 = (java.util.Map) r8
            java.util.Collection r8 = r8.values()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        L67:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto Lcd
            java.lang.Object r0 = r8.next()
            v8.c r0 = (v8.c) r0
            v8.c$b r1 = new v8.c$b
            r1.<init>(r6)
            r0.c(r1)
            int[] r1 = u8.t0.c.f31010a
            int r2 = r7.ordinal()
            r1 = r1[r2]
            java.lang.String r2 = "Notified "
            if (r1 == r3) goto Lac
            r4 = 2
            if (r1 != r4) goto La6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            v8.c$a r0 = r0.b()
            r1.append(r0)
            java.lang.String r0 = " of new fallback session "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
            goto Lc7
        La6:
            xc.i r6 = new xc.i
            r6.<init>()
            throw r6
        Lac:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            v8.c$a r0 = r0.b()
            r1.append(r0)
            java.lang.String r0 = " of new session "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        Lc7:
            java.lang.String r1 = "FirebaseSessions"
            android.util.Log.d(r1, r0)
            goto L67
        Lcd:
            xc.t r6 = xc.t.f32733a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: u8.t0.q(java.lang.String, u8.t0$b, ad.e):java.lang.Object");
    }

    @Override // u8.s0
    public boolean a() {
        return this.f30996j;
    }

    @Override // u8.s0
    public void b() {
        this.f30996j = false;
        if (this.f30995i == null) {
            Log.d("FirebaseSessions", "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d("FirebaseSessions", "App backgrounded on " + this.f30993g.c());
        td.i.d(td.m0.a(this.f30994h), null, null, new d(null), 3, null);
    }

    @Override // u8.s0
    public void c() {
        this.f30996j = true;
        if (this.f30995i == null) {
            Log.d("FirebaseSessions", "App foregrounded, but local SessionData not initialized");
            return;
        }
        e0 m10 = m();
        Log.d("FirebaseSessions", "App foregrounded on " + this.f30993g.c());
        if (p(m10) || o(m10)) {
            td.i.d(td.m0.a(this.f30994h), null, null, new e(m10, null), 3, null);
        }
    }

    public final e0 m() {
        e0 e0Var = this.f30995i;
        if (e0Var != null) {
            return e0Var;
        }
        kotlin.jvm.internal.m.s("localSessionData");
        return null;
    }

    public final void r(e0 e0Var) {
        kotlin.jvm.internal.m.e(e0Var, "<set-?>");
        this.f30995i = e0Var;
    }
}
