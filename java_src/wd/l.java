package wd;

import kotlin.jvm.internal.c0;
import td.t1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class l {

    /* loaded from: classes2.dex */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f32064a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ id.p f32065b;

        /* renamed from: wd.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0359a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f32066a;

            /* renamed from: b  reason: collision with root package name */
            int f32067b;

            /* renamed from: d  reason: collision with root package name */
            Object f32069d;

            /* renamed from: e  reason: collision with root package name */
            Object f32070e;

            public C0359a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32066a = obj;
                this.f32067b |= Integer.MIN_VALUE;
                return a.this.collect(null, this);
            }
        }

        public a(d dVar, id.p pVar) {
            this.f32064a = dVar;
            this.f32065b = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
        @Override // wd.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object collect(wd.e r6, ad.e r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof wd.l.a.C0359a
                if (r0 == 0) goto L13
                r0 = r7
                wd.l$a$a r0 = (wd.l.a.C0359a) r0
                int r1 = r0.f32067b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32067b = r1
                goto L18
            L13:
                wd.l$a$a r0 = new wd.l$a$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f32066a
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32067b
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                xc.m.b(r7)
                goto L6f
            L2c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L34:
                java.lang.Object r6 = r0.f32070e
                wd.e r6 = (wd.e) r6
                java.lang.Object r2 = r0.f32069d
                wd.l$a r2 = (wd.l.a) r2
                xc.m.b(r7)
                goto L53
            L40:
                xc.m.b(r7)
                wd.d r7 = r5.f32064a
                r0.f32069d = r5
                r0.f32070e = r6
                r0.f32067b = r4
                java.lang.Object r7 = wd.f.f(r7, r6, r0)
                if (r7 != r1) goto L52
                return r1
            L52:
                r2 = r5
            L53:
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 == 0) goto L6f
                id.p r2 = r2.f32065b
                r4 = 0
                r0.f32069d = r4
                r0.f32070e = r4
                r0.f32067b = r3
                r3 = 6
                kotlin.jvm.internal.l.a(r3)
                java.lang.Object r6 = r2.e(r6, r7, r0)
                r7 = 7
                kotlin.jvm.internal.l.a(r7)
                if (r6 != r1) goto L6f
                return r1
            L6f:
                xc.t r6 = xc.t.f32733a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.l.a.collect(wd.e, ad.e):java.lang.Object");
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32071a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32072b;

        /* renamed from: c  reason: collision with root package name */
        int f32073c;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32072b = obj;
            this.f32073c |= Integer.MIN_VALUE;
            return f.f(null, null, this);
        }
    }

    /* loaded from: classes2.dex */
    static final class c implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f32074a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c0 f32075b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f32076a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f32077b;

            /* renamed from: d  reason: collision with root package name */
            int f32079d;

            a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32077b = obj;
                this.f32079d |= Integer.MIN_VALUE;
                return c.this.emit(null, this);
            }
        }

        c(e eVar, c0 c0Var) {
            this.f32074a = eVar;
            this.f32075b = c0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        @Override // wd.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r5, ad.e r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof wd.l.c.a
                if (r0 == 0) goto L13
                r0 = r6
                wd.l$c$a r0 = (wd.l.c.a) r0
                int r1 = r0.f32079d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32079d = r1
                goto L18
            L13:
                wd.l$c$a r0 = new wd.l$c$a
                r0.<init>(r6)
            L18:
                java.lang.Object r6 = r0.f32077b
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32079d
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                java.lang.Object r5 = r0.f32076a
                wd.l$c r5 = (wd.l.c) r5
                xc.m.b(r6)     // Catch: java.lang.Throwable -> L2d
                goto L47
            L2d:
                r6 = move-exception
                goto L4c
            L2f:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L37:
                xc.m.b(r6)
                wd.e r6 = r4.f32074a     // Catch: java.lang.Throwable -> L4a
                r0.f32076a = r4     // Catch: java.lang.Throwable -> L4a
                r0.f32079d = r3     // Catch: java.lang.Throwable -> L4a
                java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L4a
                if (r5 != r1) goto L47
                return r1
            L47:
                xc.t r5 = xc.t.f32733a
                return r5
            L4a:
                r6 = move-exception
                r5 = r4
            L4c:
                kotlin.jvm.internal.c0 r5 = r5.f32075b
                r5.f24971a = r6
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.l.c.emit(java.lang.Object, ad.e):java.lang.Object");
        }
    }

    public static final d a(d dVar, id.p pVar) {
        return new a(dVar, pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(wd.d r4, wd.e r5, ad.e r6) {
        /*
            boolean r0 = r6 instanceof wd.l.b
            if (r0 == 0) goto L13
            r0 = r6
            wd.l$b r0 = (wd.l.b) r0
            int r1 = r0.f32073c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32073c = r1
            goto L18
        L13:
            wd.l$b r0 = new wd.l$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f32072b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32073c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f32071a
            kotlin.jvm.internal.c0 r4 = (kotlin.jvm.internal.c0) r4
            xc.m.b(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L53
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            xc.m.b(r6)
            kotlin.jvm.internal.c0 r6 = new kotlin.jvm.internal.c0
            r6.<init>()
            wd.l$c r2 = new wd.l$c     // Catch: java.lang.Throwable -> L51
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L51
            r0.f32071a = r6     // Catch: java.lang.Throwable -> L51
            r0.f32073c = r3     // Catch: java.lang.Throwable -> L51
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: java.lang.Throwable -> L51
            if (r4 != r1) goto L4f
            return r1
        L4f:
            r4 = 0
            return r4
        L51:
            r5 = move-exception
            r4 = r6
        L53:
            java.lang.Object r4 = r4.f24971a
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            boolean r6 = d(r5, r4)
            if (r6 != 0) goto L76
            ad.i r6 = r0.getContext()
            boolean r6 = c(r5, r6)
            if (r6 != 0) goto L76
            if (r4 != 0) goto L6a
            return r5
        L6a:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L72
            xc.a.a(r4, r5)
            throw r4
        L72:
            xc.a.a(r5, r4)
            throw r5
        L76:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.l.b(wd.d, wd.e, ad.e):java.lang.Object");
    }

    private static final boolean c(Throwable th, ad.i iVar) {
        t1 t1Var = (t1) iVar.a(t1.f30695t0);
        if (t1Var != null && t1Var.isCancelled()) {
            return d(th, t1Var.u());
        }
        return false;
    }

    private static final boolean d(Throwable th, Throwable th2) {
        if (th2 != null && kotlin.jvm.internal.m.a(th2, th)) {
            return true;
        }
        return false;
    }
}
