package wd;

import id.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class k {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32046a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32047b;

        /* renamed from: c  reason: collision with root package name */
        int f32048c;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32047b = obj;
            this.f32048c |= Integer.MIN_VALUE;
            return k.c(null, null, null, this);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f32049a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ id.p f32050b;

        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f32051a;

            /* renamed from: b  reason: collision with root package name */
            int f32052b;

            /* renamed from: d  reason: collision with root package name */
            Object f32054d;

            /* renamed from: e  reason: collision with root package name */
            Object f32055e;

            public a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32051a = obj;
                this.f32052b |= Integer.MIN_VALUE;
                return b.this.collect(null, this);
            }
        }

        public b(d dVar, id.p pVar) {
            this.f32049a = dVar;
            this.f32050b = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0086 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00ab A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
        @Override // wd.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object collect(wd.e r9, ad.e r10) {
            /*
                r8 = this;
                boolean r0 = r10 instanceof wd.k.b.a
                if (r0 == 0) goto L13
                r0 = r10
                wd.k$b$a r0 = (wd.k.b.a) r0
                int r1 = r0.f32052b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32052b = r1
                goto L18
            L13:
                wd.k$b$a r0 = new wd.k$b$a
                r0.<init>(r10)
            L18:
                java.lang.Object r10 = r0.f32051a
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32052b
                r3 = 3
                r4 = 2
                r5 = 1
                r6 = 0
                if (r2 == 0) goto L54
                if (r2 == r5) goto L46
                if (r2 == r4) goto L3e
                if (r2 != r3) goto L36
                java.lang.Object r9 = r0.f32054d
                xd.o r9 = (xd.o) r9
                xc.m.b(r10)     // Catch: java.lang.Throwable -> L34
                goto L88
            L34:
                r10 = move-exception
                goto L92
            L36:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L3e:
                java.lang.Object r9 = r0.f32054d
                java.lang.Throwable r9 = (java.lang.Throwable) r9
                xc.m.b(r10)
                goto Lac
            L46:
                java.lang.Object r9 = r0.f32055e
                wd.e r9 = (wd.e) r9
                java.lang.Object r2 = r0.f32054d
                wd.k$b r2 = (wd.k.b) r2
                xc.m.b(r10)     // Catch: java.lang.Throwable -> L52
                goto L67
            L52:
                r9 = move-exception
                goto L98
            L54:
                xc.m.b(r10)
                wd.d r10 = r8.f32049a     // Catch: java.lang.Throwable -> L96
                r0.f32054d = r8     // Catch: java.lang.Throwable -> L96
                r0.f32055e = r9     // Catch: java.lang.Throwable -> L96
                r0.f32052b = r5     // Catch: java.lang.Throwable -> L96
                java.lang.Object r10 = r10.collect(r9, r0)     // Catch: java.lang.Throwable -> L96
                if (r10 != r1) goto L66
                return r1
            L66:
                r2 = r8
            L67:
                xd.o r10 = new xd.o
                ad.i r4 = r0.getContext()
                r10.<init>(r9, r4)
                id.p r9 = r2.f32050b     // Catch: java.lang.Throwable -> L8e
                r0.f32054d = r10     // Catch: java.lang.Throwable -> L8e
                r0.f32055e = r6     // Catch: java.lang.Throwable -> L8e
                r0.f32052b = r3     // Catch: java.lang.Throwable -> L8e
                r2 = 6
                kotlin.jvm.internal.l.a(r2)     // Catch: java.lang.Throwable -> L8e
                java.lang.Object r9 = r9.e(r10, r6, r0)     // Catch: java.lang.Throwable -> L8e
                r0 = 7
                kotlin.jvm.internal.l.a(r0)     // Catch: java.lang.Throwable -> L8e
                if (r9 != r1) goto L87
                return r1
            L87:
                r9 = r10
            L88:
                r9.releaseIntercepted()
                xc.t r9 = xc.t.f32733a
                return r9
            L8e:
                r9 = move-exception
                r7 = r10
                r10 = r9
                r9 = r7
            L92:
                r9.releaseIntercepted()
                throw r10
            L96:
                r9 = move-exception
                r2 = r8
            L98:
                wd.y r10 = new wd.y
                r10.<init>(r9)
                id.p r2 = r2.f32050b
                r0.f32054d = r9
                r0.f32055e = r6
                r0.f32052b = r4
                java.lang.Object r10 = wd.k.a(r10, r2, r9, r0)
                if (r10 != r1) goto Lac
                return r1
            Lac:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.k.b.collect(wd.e, ad.e):java.lang.Object");
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f32056a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f32057b;

        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f32058a;

            /* renamed from: b  reason: collision with root package name */
            int f32059b;

            /* renamed from: d  reason: collision with root package name */
            Object f32061d;

            /* renamed from: e  reason: collision with root package name */
            Object f32062e;

            /* renamed from: f  reason: collision with root package name */
            Object f32063f;

            public a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32058a = obj;
                this.f32059b |= Integer.MIN_VALUE;
                return c.this.collect(null, this);
            }
        }

        public c(Function2 function2, d dVar) {
            this.f32056a = function2;
            this.f32057b = dVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0082 A[RETURN] */
        @Override // wd.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object collect(wd.e r7, ad.e r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof wd.k.c.a
                if (r0 == 0) goto L13
                r0 = r8
                wd.k$c$a r0 = (wd.k.c.a) r0
                int r1 = r0.f32059b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32059b = r1
                goto L18
            L13:
                wd.k$c$a r0 = new wd.k$c$a
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.f32058a
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32059b
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L46
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                xc.m.b(r8)
                goto L83
            L2c:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L34:
                java.lang.Object r7 = r0.f32063f
                xd.o r7 = (xd.o) r7
                java.lang.Object r2 = r0.f32062e
                wd.e r2 = (wd.e) r2
                java.lang.Object r4 = r0.f32061d
                wd.k$c r4 = (wd.k.c) r4
                xc.m.b(r8)     // Catch: java.lang.Throwable -> L44
                goto L6e
            L44:
                r8 = move-exception
                goto L8a
            L46:
                xc.m.b(r8)
                xd.o r8 = new xd.o
                ad.i r2 = r0.getContext()
                r8.<init>(r7, r2)
                id.Function2 r2 = r6.f32056a     // Catch: java.lang.Throwable -> L86
                r0.f32061d = r6     // Catch: java.lang.Throwable -> L86
                r0.f32062e = r7     // Catch: java.lang.Throwable -> L86
                r0.f32063f = r8     // Catch: java.lang.Throwable -> L86
                r0.f32059b = r4     // Catch: java.lang.Throwable -> L86
                r4 = 6
                kotlin.jvm.internal.l.a(r4)     // Catch: java.lang.Throwable -> L86
                java.lang.Object r2 = r2.invoke(r8, r0)     // Catch: java.lang.Throwable -> L86
                r4 = 7
                kotlin.jvm.internal.l.a(r4)     // Catch: java.lang.Throwable -> L86
                if (r2 != r1) goto L6b
                return r1
            L6b:
                r4 = r6
                r2 = r7
                r7 = r8
            L6e:
                r7.releaseIntercepted()
                wd.d r7 = r4.f32057b
                r8 = 0
                r0.f32061d = r8
                r0.f32062e = r8
                r0.f32063f = r8
                r0.f32059b = r3
                java.lang.Object r7 = r7.collect(r2, r0)
                if (r7 != r1) goto L83
                return r1
            L83:
                xc.t r7 = xc.t.f32733a
                return r7
            L86:
                r7 = move-exception
                r5 = r8
                r8 = r7
                r7 = r5
            L8a:
                r7.releaseIntercepted()
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.k.c.collect(wd.e, ad.e):java.lang.Object");
        }
    }

    public static final void b(e eVar) {
        if (!(eVar instanceof y)) {
            return;
        }
        throw ((y) eVar).f32130a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(wd.e r4, id.p r5, java.lang.Throwable r6, ad.e r7) {
        /*
            boolean r0 = r7 instanceof wd.k.a
            if (r0 == 0) goto L13
            r0 = r7
            wd.k$a r0 = (wd.k.a) r0
            int r1 = r0.f32048c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32048c = r1
            goto L18
        L13:
            wd.k$a r0 = new wd.k$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f32047b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32048c
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.f32046a
            r6 = r4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            xc.m.b(r7)     // Catch: java.lang.Throwable -> L47
            goto L44
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            xc.m.b(r7)
            r0.f32046a = r6     // Catch: java.lang.Throwable -> L47
            r0.f32048c = r3     // Catch: java.lang.Throwable -> L47
            java.lang.Object r4 = r5.e(r4, r6, r0)     // Catch: java.lang.Throwable -> L47
            if (r4 != r1) goto L44
            return r1
        L44:
            xc.t r4 = xc.t.f32733a
            return r4
        L47:
            r4 = move-exception
            if (r6 == 0) goto L4f
            if (r6 == r4) goto L4f
            xc.a.a(r4, r6)
        L4f:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.k.c(wd.e, id.p, java.lang.Throwable, ad.e):java.lang.Object");
    }

    public static final d d(d dVar, id.p pVar) {
        return new b(dVar, pVar);
    }

    public static final d e(d dVar, Function2 function2) {
        return new c(function2, dVar);
    }
}
