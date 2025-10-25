package wd;

import id.Function2;
import kotlin.jvm.internal.z;
/* loaded from: classes2.dex */
abstract /* synthetic */ class m {

    /* loaded from: classes2.dex */
    public static final class a implements wd.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ wd.d f32080a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f32081b;

        public a(wd.d dVar, Function2 function2) {
            this.f32080a = dVar;
            this.f32081b = function2;
        }

        @Override // wd.d
        public Object collect(e eVar, ad.e eVar2) {
            Object e10;
            Object collect = this.f32080a.collect(new b(new z(), eVar, this.f32081b), eVar2);
            e10 = bd.d.e();
            if (collect == e10) {
                return collect;
            }
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z f32082a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f32083b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2 f32084c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f32085a;

            /* renamed from: b  reason: collision with root package name */
            Object f32086b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f32087c;

            /* renamed from: e  reason: collision with root package name */
            int f32089e;

            a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32087c = obj;
                this.f32089e |= Integer.MIN_VALUE;
                return b.this.emit(null, this);
            }
        }

        b(z zVar, e eVar, Function2 function2) {
            this.f32082a = zVar;
            this.f32083b = eVar;
            this.f32084c = function2;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
        @Override // wd.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r7, ad.e r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof wd.m.b.a
                if (r0 == 0) goto L13
                r0 = r8
                wd.m$b$a r0 = (wd.m.b.a) r0
                int r1 = r0.f32089e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32089e = r1
                goto L18
            L13:
                wd.m$b$a r0 = new wd.m$b$a
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.f32087c
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32089e
                r3 = 3
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L45
                if (r2 == r5) goto L41
                if (r2 == r4) goto L37
                if (r2 != r3) goto L2f
                xc.m.b(r8)
                goto L88
            L2f:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L37:
                java.lang.Object r7 = r0.f32086b
                java.lang.Object r2 = r0.f32085a
                wd.m$b r2 = (wd.m.b) r2
                xc.m.b(r8)
                goto L6c
            L41:
                xc.m.b(r8)
                goto L59
            L45:
                xc.m.b(r8)
                kotlin.jvm.internal.z r8 = r6.f32082a
                boolean r8 = r8.f24987a
                if (r8 == 0) goto L5c
                wd.e r8 = r6.f32083b
                r0.f32089e = r5
                java.lang.Object r7 = r8.emit(r7, r0)
                if (r7 != r1) goto L59
                return r1
            L59:
                xc.t r7 = xc.t.f32733a
                return r7
            L5c:
                id.Function2 r8 = r6.f32084c
                r0.f32085a = r6
                r0.f32086b = r7
                r0.f32089e = r4
                java.lang.Object r8 = r8.invoke(r7, r0)
                if (r8 != r1) goto L6b
                return r1
            L6b:
                r2 = r6
            L6c:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto L8b
                kotlin.jvm.internal.z r8 = r2.f32082a
                r8.f24987a = r5
                wd.e r8 = r2.f32083b
                r2 = 0
                r0.f32085a = r2
                r0.f32086b = r2
                r0.f32089e = r3
                java.lang.Object r7 = r8.emit(r7, r0)
                if (r7 != r1) goto L88
                return r1
            L88:
                xc.t r7 = xc.t.f32733a
                return r7
            L8b:
                xc.t r7 = xc.t.f32733a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.m.b.emit(java.lang.Object, ad.e):java.lang.Object");
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements wd.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ wd.d f32090a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f32091b;

        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f32092a;

            /* renamed from: b  reason: collision with root package name */
            int f32093b;

            /* renamed from: d  reason: collision with root package name */
            Object f32095d;

            public a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32092a = obj;
                this.f32093b |= Integer.MIN_VALUE;
                return c.this.collect(null, this);
            }
        }

        public c(wd.d dVar, Function2 function2) {
            this.f32090a = dVar;
            this.f32091b = function2;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        @Override // wd.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object collect(wd.e r6, ad.e r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof wd.m.c.a
                if (r0 == 0) goto L13
                r0 = r7
                wd.m$c$a r0 = (wd.m.c.a) r0
                int r1 = r0.f32093b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32093b = r1
                goto L18
            L13:
                wd.m$c$a r0 = new wd.m$c$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f32092a
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32093b
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                java.lang.Object r6 = r0.f32095d
                wd.m$d r6 = (wd.m.d) r6
                xc.m.b(r7)     // Catch: xd.a -> L2d
                goto L53
            L2d:
                r7 = move-exception
                goto L50
            L2f:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L37:
                xc.m.b(r7)
                wd.d r7 = r5.f32090a
                wd.m$d r2 = new wd.m$d
                id.Function2 r4 = r5.f32091b
                r2.<init>(r4, r6)
                r0.f32095d = r2     // Catch: xd.a -> L4e
                r0.f32093b = r3     // Catch: xd.a -> L4e
                java.lang.Object r6 = r7.collect(r2, r0)     // Catch: xd.a -> L4e
                if (r6 != r1) goto L53
                return r1
            L4e:
                r7 = move-exception
                r6 = r2
            L50:
                xd.j.a(r7, r6)
            L53:
                xc.t r6 = xc.t.f32733a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.m.c.collect(wd.e, ad.e):java.lang.Object");
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f32096a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f32097b;

        /* loaded from: classes2.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f32098a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f32099b;

            /* renamed from: c  reason: collision with root package name */
            int f32100c;

            /* renamed from: e  reason: collision with root package name */
            Object f32102e;

            public a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f32099b = obj;
                this.f32100c |= Integer.MIN_VALUE;
                return d.this.emit(null, this);
            }
        }

        public d(Function2 function2, e eVar) {
            this.f32096a = function2;
            this.f32097b = eVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
        @Override // wd.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object emit(java.lang.Object r8, ad.e r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof wd.m.d.a
                if (r0 == 0) goto L13
                r0 = r9
                wd.m$d$a r0 = (wd.m.d.a) r0
                int r1 = r0.f32100c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f32100c = r1
                goto L18
            L13:
                wd.m$d$a r0 = new wd.m$d$a
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.f32099b
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f32100c
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L46
                if (r2 == r4) goto L38
                if (r2 != r3) goto L30
                java.lang.Object r8 = r0.f32098a
                wd.m$d r8 = (wd.m.d) r8
                xc.m.b(r9)
                goto L7c
            L30:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L38:
                java.lang.Object r8 = r0.f32102e
                java.lang.Object r2 = r0.f32098a
                wd.m$d r2 = (wd.m.d) r2
                xc.m.b(r9)
                r6 = r9
                r9 = r8
                r8 = r2
                r2 = r6
                goto L63
            L46:
                xc.m.b(r9)
                id.Function2 r9 = r7.f32096a
                r0.f32098a = r7
                r0.f32102e = r8
                r0.f32100c = r4
                r2 = 6
                kotlin.jvm.internal.l.a(r2)
                java.lang.Object r9 = r9.invoke(r8, r0)
                r2 = 7
                kotlin.jvm.internal.l.a(r2)
                if (r9 != r1) goto L60
                return r1
            L60:
                r2 = r9
                r9 = r8
                r8 = r7
            L63:
                java.lang.Boolean r2 = (java.lang.Boolean) r2
                boolean r2 = r2.booleanValue()
                if (r2 == 0) goto L7b
                wd.e r2 = r8.f32097b
                r0.f32098a = r8
                r5 = 0
                r0.f32102e = r5
                r0.f32100c = r3
                java.lang.Object r9 = r2.emit(r9, r0)
                if (r9 != r1) goto L7c
                return r1
            L7b:
                r4 = 0
            L7c:
                if (r4 == 0) goto L81
                xc.t r8 = xc.t.f32733a
                return r8
            L81:
                xd.a r9 = new xd.a
                r9.<init>(r8)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: wd.m.d.emit(java.lang.Object, ad.e):java.lang.Object");
        }
    }

    public static final wd.d a(wd.d dVar, Function2 function2) {
        return new a(dVar, function2);
    }

    public static final wd.d b(wd.d dVar, Function2 function2) {
        return new c(dVar, function2);
    }
}
