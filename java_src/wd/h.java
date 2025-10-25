package wd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class h {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32040a;

        /* renamed from: b  reason: collision with root package name */
        Object f32041b;

        /* renamed from: c  reason: collision with root package name */
        Object f32042c;

        /* renamed from: d  reason: collision with root package name */
        boolean f32043d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f32044e;

        /* renamed from: f  reason: collision with root package name */
        int f32045f;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32044e = obj;
            this.f32045f |= Integer.MIN_VALUE;
            return h.c(null, null, false, this);
        }
    }

    public static final Object b(e eVar, vd.w wVar, ad.e eVar2) {
        Object e10;
        Object c10 = c(eVar, wVar, true, eVar2);
        e10 = bd.d.e();
        if (c10 == e10) {
            return c10;
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007d A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #0 {all -> 0x009b, blocks: (B:13:0x0036, B:22:0x0060, B:26:0x0075, B:28:0x007d, B:18:0x0052, B:21:0x005c), top: B:41:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x008f -> B:14:0x0039). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(wd.e r6, vd.w r7, boolean r8, ad.e r9) {
        /*
            boolean r0 = r9 instanceof wd.h.a
            if (r0 == 0) goto L13
            r0 = r9
            wd.h$a r0 = (wd.h.a) r0
            int r1 = r0.f32045f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32045f = r1
            goto L18
        L13:
            wd.h$a r0 = new wd.h$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f32044e
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32045f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L56
            if (r2 == r4) goto L44
            if (r2 != r3) goto L3c
            boolean r8 = r0.f32043d
            java.lang.Object r6 = r0.f32042c
            vd.i r6 = (vd.i) r6
            java.lang.Object r7 = r0.f32041b
            vd.w r7 = (vd.w) r7
            java.lang.Object r2 = r0.f32040a
            wd.e r2 = (wd.e) r2
            xc.m.b(r9)     // Catch: java.lang.Throwable -> L9b
        L39:
            r9 = r6
            r6 = r2
            goto L60
        L3c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L44:
            boolean r8 = r0.f32043d
            java.lang.Object r6 = r0.f32042c
            vd.i r6 = (vd.i) r6
            java.lang.Object r7 = r0.f32041b
            vd.w r7 = (vd.w) r7
            java.lang.Object r2 = r0.f32040a
            wd.e r2 = (wd.e) r2
            xc.m.b(r9)     // Catch: java.lang.Throwable -> L9b
            goto L75
        L56:
            xc.m.b(r9)
            wd.f.l(r6)
            vd.i r9 = r7.iterator()     // Catch: java.lang.Throwable -> L9b
        L60:
            r0.f32040a = r6     // Catch: java.lang.Throwable -> L9b
            r0.f32041b = r7     // Catch: java.lang.Throwable -> L9b
            r0.f32042c = r9     // Catch: java.lang.Throwable -> L9b
            r0.f32043d = r8     // Catch: java.lang.Throwable -> L9b
            r0.f32045f = r4     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r2 = r9.a(r0)     // Catch: java.lang.Throwable -> L9b
            if (r2 != r1) goto L71
            return r1
        L71:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L75:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L9b
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L9b
            if (r9 == 0) goto L92
            java.lang.Object r9 = r6.next()     // Catch: java.lang.Throwable -> L9b
            r0.f32040a = r2     // Catch: java.lang.Throwable -> L9b
            r0.f32041b = r7     // Catch: java.lang.Throwable -> L9b
            r0.f32042c = r6     // Catch: java.lang.Throwable -> L9b
            r0.f32043d = r8     // Catch: java.lang.Throwable -> L9b
            r0.f32045f = r3     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r9 = r2.emit(r9, r0)     // Catch: java.lang.Throwable -> L9b
            if (r9 != r1) goto L39
            return r1
        L92:
            if (r8 == 0) goto L98
            r6 = 0
            vd.n.a(r7, r6)
        L98:
            xc.t r6 = xc.t.f32733a
            return r6
        L9b:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L9d
        L9d:
            r9 = move-exception
            if (r8 == 0) goto La3
            vd.n.a(r7, r6)
        La3:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.h.c(wd.e, vd.w, boolean, ad.e):java.lang.Object");
    }
}
