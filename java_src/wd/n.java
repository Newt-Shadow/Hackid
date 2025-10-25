package wd;

import kotlin.jvm.internal.c0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class n {

    /* loaded from: classes2.dex */
    public static final class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f32103a;

        public a(c0 c0Var) {
            this.f32103a = c0Var;
        }

        @Override // wd.e
        public Object emit(Object obj, ad.e eVar) {
            this.f32103a.f24971a = obj;
            throw new xd.a(this);
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32104a;

        /* renamed from: b  reason: collision with root package name */
        Object f32105b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f32106c;

        /* renamed from: d  reason: collision with root package name */
        int f32107d;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32106c = obj;
            this.f32107d |= Integer.MIN_VALUE;
            return f.m(null, this);
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f32108a;

        public c(c0 c0Var) {
            this.f32108a = c0Var;
        }

        @Override // wd.e
        public Object emit(Object obj, ad.e eVar) {
            this.f32108a.f24971a = obj;
            throw new xd.a(this);
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32109a;

        /* renamed from: b  reason: collision with root package name */
        Object f32110b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f32111c;

        /* renamed from: d  reason: collision with root package name */
        int f32112d;

        d(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32111c = obj;
            this.f32112d |= Integer.MIN_VALUE;
            return f.n(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(wd.d r4, ad.e r5) {
        /*
            boolean r0 = r5 instanceof wd.n.b
            if (r0 == 0) goto L13
            r0 = r5
            wd.n$b r0 = (wd.n.b) r0
            int r1 = r0.f32107d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32107d = r1
            goto L18
        L13:
            wd.n$b r0 = new wd.n$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f32106c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32107d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f32105b
            wd.n$a r4 = (wd.n.a) r4
            java.lang.Object r0 = r0.f32104a
            kotlin.jvm.internal.c0 r0 = (kotlin.jvm.internal.c0) r0
            xc.m.b(r5)     // Catch: xd.a -> L31
            goto L62
        L31:
            r5 = move-exception
            goto L5f
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            xc.m.b(r5)
            kotlin.jvm.internal.c0 r5 = new kotlin.jvm.internal.c0
            r5.<init>()
            yd.f0 r2 = xd.m.f32759a
            r5.f24971a = r2
            wd.n$a r2 = new wd.n$a
            r2.<init>(r5)
            r0.f32104a = r5     // Catch: xd.a -> L5b
            r0.f32105b = r2     // Catch: xd.a -> L5b
            r0.f32107d = r3     // Catch: xd.a -> L5b
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: xd.a -> L5b
            if (r4 != r1) goto L59
            return r1
        L59:
            r0 = r5
            goto L62
        L5b:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5f:
            xd.j.a(r5, r4)
        L62:
            java.lang.Object r4 = r0.f24971a
            yd.f0 r5 = xd.m.f32759a
            if (r4 == r5) goto L69
            return r4
        L69:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Expected at least one element"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.n.a(wd.d, ad.e):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(wd.d r4, ad.e r5) {
        /*
            boolean r0 = r5 instanceof wd.n.d
            if (r0 == 0) goto L13
            r0 = r5
            wd.n$d r0 = (wd.n.d) r0
            int r1 = r0.f32112d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32112d = r1
            goto L18
        L13:
            wd.n$d r0 = new wd.n$d
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f32111c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32112d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f32110b
            wd.n$c r4 = (wd.n.c) r4
            java.lang.Object r0 = r0.f32109a
            kotlin.jvm.internal.c0 r0 = (kotlin.jvm.internal.c0) r0
            xc.m.b(r5)     // Catch: xd.a -> L31
            goto L5e
        L31:
            r5 = move-exception
            goto L5b
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            xc.m.b(r5)
            kotlin.jvm.internal.c0 r5 = new kotlin.jvm.internal.c0
            r5.<init>()
            wd.n$c r2 = new wd.n$c
            r2.<init>(r5)
            r0.f32109a = r5     // Catch: xd.a -> L57
            r0.f32110b = r2     // Catch: xd.a -> L57
            r0.f32112d = r3     // Catch: xd.a -> L57
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: xd.a -> L57
            if (r4 != r1) goto L55
            return r1
        L55:
            r0 = r5
            goto L5e
        L57:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5b:
            xd.j.a(r5, r4)
        L5e:
            java.lang.Object r4 = r0.f24971a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.n.b(wd.d, ad.e):java.lang.Object");
    }
}
