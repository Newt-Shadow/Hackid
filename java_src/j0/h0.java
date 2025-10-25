package j0;

import id.Function2;
/* loaded from: classes.dex */
public final class h0 implements t {

    /* renamed from: a  reason: collision with root package name */
    private final String f24021a;

    /* renamed from: b  reason: collision with root package name */
    private final ce.a f24022b;

    /* renamed from: c  reason: collision with root package name */
    private final j0.b f24023c;

    /* renamed from: d  reason: collision with root package name */
    private final wd.d f24024d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24025a;

        /* renamed from: b  reason: collision with root package name */
        Object f24026b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f24027c;

        /* renamed from: e  reason: collision with root package name */
        int f24029e;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24027c = obj;
            this.f24029e |= Integer.MIN_VALUE;
            return h0.this.a(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24030a;

        /* renamed from: b  reason: collision with root package name */
        boolean f24031b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f24032c;

        /* renamed from: e  reason: collision with root package name */
        int f24034e;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24032c = obj;
            this.f24034e |= Integer.MIN_VALUE;
            return h0.this.b(null, this);
        }
    }

    /* loaded from: classes.dex */
    static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f24035a;

        c(ad.e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(wd.e eVar, ad.e eVar2) {
            return ((c) create(eVar, eVar2)).invokeSuspend(xc.t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new c(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.b.e();
            if (this.f24035a == 0) {
                xc.m.b(obj);
                return xc.t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public h0(String filePath) {
        kotlin.jvm.internal.m.e(filePath, "filePath");
        this.f24021a = filePath;
        this.f24022b = ce.g.b(false, 1, null);
        this.f24023c = new j0.b(0);
        this.f24024d = wd.f.o(new c(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    @Override // j0.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(id.l r8, ad.e r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof j0.h0.a
            if (r0 == 0) goto L13
            r0 = r9
            j0.h0$a r0 = (j0.h0.a) r0
            int r1 = r0.f24029e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f24029e = r1
            goto L18
        L13:
            j0.h0$a r0 = new j0.h0$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f24027c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f24029e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.f24025a
            ce.a r8 = (ce.a) r8
            xc.m.b(r9)     // Catch: java.lang.Throwable -> L31
            goto L6b
        L31:
            r9 = move-exception
            goto L73
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            java.lang.Object r8 = r0.f24026b
            ce.a r8 = (ce.a) r8
            java.lang.Object r2 = r0.f24025a
            id.l r2 = (id.l) r2
            xc.m.b(r9)
            r9 = r8
            r8 = r2
            goto L5b
        L49:
            xc.m.b(r9)
            ce.a r9 = r7.f24022b
            r0.f24025a = r8
            r0.f24026b = r9
            r0.f24029e = r4
            java.lang.Object r2 = r9.b(r5, r0)
            if (r2 != r1) goto L5b
            return r1
        L5b:
            r0.f24025a = r9     // Catch: java.lang.Throwable -> L6f
            r0.f24026b = r5     // Catch: java.lang.Throwable -> L6f
            r0.f24029e = r3     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r8 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L6f
            if (r8 != r1) goto L68
            return r1
        L68:
            r6 = r9
            r9 = r8
            r8 = r6
        L6b:
            r8.d(r5)
            return r9
        L6f:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L73:
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.h0.a(id.l, ad.e):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    @Override // j0.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(id.Function2 r7, ad.e r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof j0.h0.b
            if (r0 == 0) goto L13
            r0 = r8
            j0.h0$b r0 = (j0.h0.b) r0
            int r1 = r0.f24034e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f24034e = r1
            goto L18
        L13:
            j0.h0$b r0 = new j0.h0$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f24032c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f24034e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            boolean r7 = r0.f24031b
            java.lang.Object r0 = r0.f24030a
            ce.a r0 = (ce.a) r0
            xc.m.b(r8)     // Catch: java.lang.Throwable -> L30
            goto L5c
        L30:
            r8 = move-exception
            goto L66
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3a:
            xc.m.b(r8)
            ce.a r8 = r6.f24022b
            boolean r2 = r8.a(r3)
            if (r2 == 0) goto L47
            r5 = r4
            goto L48
        L47:
            r5 = 0
        L48:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r5)     // Catch: java.lang.Throwable -> L62
            r0.f24030a = r8     // Catch: java.lang.Throwable -> L62
            r0.f24031b = r2     // Catch: java.lang.Throwable -> L62
            r0.f24034e = r4     // Catch: java.lang.Throwable -> L62
            java.lang.Object r7 = r7.invoke(r5, r0)     // Catch: java.lang.Throwable -> L62
            if (r7 != r1) goto L59
            return r1
        L59:
            r0 = r8
            r8 = r7
            r7 = r2
        L5c:
            if (r7 == 0) goto L61
            r0.d(r3)
        L61:
            return r8
        L62:
            r7 = move-exception
            r0 = r8
            r8 = r7
            r7 = r2
        L66:
            if (r7 == 0) goto L6b
            r0.d(r3)
        L6b:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.h0.b(id.Function2, ad.e):java.lang.Object");
    }

    @Override // j0.t
    public Object c(ad.e eVar) {
        return kotlin.coroutines.jvm.internal.b.c(this.f24023c.b());
    }

    @Override // j0.t
    public wd.d d() {
        return this.f24024d;
    }

    @Override // j0.t
    public Object e(ad.e eVar) {
        return kotlin.coroutines.jvm.internal.b.c(this.f24023c.d());
    }
}
