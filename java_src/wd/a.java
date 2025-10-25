package wd;
/* loaded from: classes2.dex */
public abstract class a implements d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: wd.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0358a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32030a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32031b;

        /* renamed from: d  reason: collision with root package name */
        int f32033d;

        C0358a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32031b = obj;
            this.f32033d |= Integer.MIN_VALUE;
            return a.this.collect(null, this);
        }
    }

    public abstract Object c(e eVar, ad.e eVar2);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    @Override // wd.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(wd.e r6, ad.e r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof wd.a.C0358a
            if (r0 == 0) goto L13
            r0 = r7
            wd.a$a r0 = (wd.a.C0358a) r0
            int r1 = r0.f32033d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32033d = r1
            goto L18
        L13:
            wd.a$a r0 = new wd.a$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f32031b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32033d
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r6 = r0.f32030a
            xd.o r6 = (xd.o) r6
            xc.m.b(r7)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r7 = move-exception
            goto L59
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            xc.m.b(r7)
            xd.o r7 = new xd.o
            ad.i r2 = r0.getContext()
            r7.<init>(r6, r2)
            r0.f32030a = r7     // Catch: java.lang.Throwable -> L55
            r0.f32033d = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r6 = r5.c(r7, r0)     // Catch: java.lang.Throwable -> L55
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r6 = r7
        L4f:
            r6.releaseIntercepted()
            xc.t r6 = xc.t.f32733a
            return r6
        L55:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
        L59:
            r6.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.a.collect(wd.e, ad.e):java.lang.Object");
    }
}
