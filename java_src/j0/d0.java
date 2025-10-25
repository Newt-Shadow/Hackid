package j0;
/* loaded from: classes.dex */
public abstract class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final ce.a f23981a = ce.g.b(false, 1, null);

    /* renamed from: b  reason: collision with root package name */
    private final td.v f23982b = td.x.b(null, 1, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f23983a;

        /* renamed from: b  reason: collision with root package name */
        Object f23984b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f23985c;

        /* renamed from: e  reason: collision with root package name */
        int f23987e;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f23985c = obj;
            this.f23987e |= Integer.MIN_VALUE;
            return d0.this.c(this);
        }
    }

    public final Object a(ad.e eVar) {
        Object e10;
        Object w10 = this.f23982b.w(eVar);
        e10 = bd.d.e();
        if (w10 == e10) {
            return w10;
        }
        return xc.t.f32733a;
    }

    protected abstract Object b(ad.e eVar);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0092, TRY_LEAVE, TryCatch #0 {all -> 0x0092, blocks: (B:28:0x006a, B:30:0x0072, B:33:0x0078), top: B:44:0x006a }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0078 A[Catch: all -> 0x0092, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0092, blocks: (B:28:0x006a, B:30:0x0072, B:33:0x0078), top: B:44:0x006a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(ad.e r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof j0.d0.a
            if (r0 == 0) goto L13
            r0 = r7
            j0.d0$a r0 = (j0.d0.a) r0
            int r1 = r0.f23987e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f23987e = r1
            goto L18
        L13:
            j0.d0$a r0 = new j0.d0$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f23985c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f23987e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.f23984b
            ce.a r1 = (ce.a) r1
            java.lang.Object r0 = r0.f23983a
            j0.d0 r0 = (j0.d0) r0
            xc.m.b(r7)     // Catch: java.lang.Throwable -> L35
            goto L87
        L35:
            r7 = move-exception
            goto L95
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3f:
            java.lang.Object r2 = r0.f23984b
            ce.a r2 = (ce.a) r2
            java.lang.Object r4 = r0.f23983a
            j0.d0 r4 = (j0.d0) r4
            xc.m.b(r7)
            r7 = r2
            goto L6a
        L4c:
            xc.m.b(r7)
            td.v r7 = r6.f23982b
            boolean r7 = r7.X()
            if (r7 == 0) goto L5a
            xc.t r7 = xc.t.f32733a
            return r7
        L5a:
            ce.a r7 = r6.f23981a
            r0.f23983a = r6
            r0.f23984b = r7
            r0.f23987e = r4
            java.lang.Object r2 = r7.b(r5, r0)
            if (r2 != r1) goto L69
            return r1
        L69:
            r4 = r6
        L6a:
            td.v r2 = r4.f23982b     // Catch: java.lang.Throwable -> L92
            boolean r2 = r2.X()     // Catch: java.lang.Throwable -> L92
            if (r2 == 0) goto L78
            xc.t r0 = xc.t.f32733a     // Catch: java.lang.Throwable -> L92
            r7.d(r5)
            return r0
        L78:
            r0.f23983a = r4     // Catch: java.lang.Throwable -> L92
            r0.f23984b = r7     // Catch: java.lang.Throwable -> L92
            r0.f23987e = r3     // Catch: java.lang.Throwable -> L92
            java.lang.Object r0 = r4.b(r0)     // Catch: java.lang.Throwable -> L92
            if (r0 != r1) goto L85
            return r1
        L85:
            r1 = r7
            r0 = r4
        L87:
            td.v r7 = r0.f23982b     // Catch: java.lang.Throwable -> L35
            xc.t r0 = xc.t.f32733a     // Catch: java.lang.Throwable -> L35
            r7.H(r0)     // Catch: java.lang.Throwable -> L35
            r1.d(r5)
            return r0
        L92:
            r0 = move-exception
            r1 = r7
            r7 = r0
        L95:
            r1.d(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.d0.c(ad.e):java.lang.Object");
    }
}
