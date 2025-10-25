package j0;

import java.io.File;
/* loaded from: classes.dex */
public final class q extends n implements p0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24233a;

        /* renamed from: b  reason: collision with root package name */
        Object f24234b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f24235c;

        /* renamed from: e  reason: collision with root package name */
        int f24237e;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24235c = obj;
            this.f24237e |= Integer.MIN_VALUE;
            return q.this.b(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(File file, e0 serializer) {
        super(file, serializer);
        kotlin.jvm.internal.m.e(file, "file");
        kotlin.jvm.internal.m.e(serializer, "serializer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    @Override // j0.p0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(java.lang.Object r6, ad.e r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof j0.q.a
            if (r0 == 0) goto L13
            r0 = r7
            j0.q$a r0 = (j0.q.a) r0
            int r1 = r0.f24237e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f24237e = r1
            goto L18
        L13:
            j0.q$a r0 = new j0.q$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f24235c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f24237e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r6 = r0.f24234b
            java.io.FileOutputStream r6 = (java.io.FileOutputStream) r6
            java.lang.Object r0 = r0.f24233a
            java.io.Closeable r0 = (java.io.Closeable) r0
            xc.m.b(r7)     // Catch: java.lang.Throwable -> L31
            goto L62
        L31:
            r6 = move-exception
            goto L74
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            xc.m.b(r7)
            r5.f()
            java.io.FileOutputStream r7 = new java.io.FileOutputStream
            java.io.File r2 = r5.g()
            r7.<init>(r2)
            j0.e0 r2 = r5.h()     // Catch: java.lang.Throwable -> L72
            j0.n0 r4 = new j0.n0     // Catch: java.lang.Throwable -> L72
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L72
            r0.f24233a = r7     // Catch: java.lang.Throwable -> L72
            r0.f24234b = r7     // Catch: java.lang.Throwable -> L72
            r0.f24237e = r3     // Catch: java.lang.Throwable -> L72
            java.lang.Object r6 = r2.b(r6, r4, r0)     // Catch: java.lang.Throwable -> L72
            if (r6 != r1) goto L60
            return r1
        L60:
            r6 = r7
            r0 = r6
        L62:
            java.io.FileDescriptor r6 = r6.getFD()     // Catch: java.lang.Throwable -> L31
            r6.sync()     // Catch: java.lang.Throwable -> L31
            xc.t r6 = xc.t.f32733a     // Catch: java.lang.Throwable -> L31
            r6 = 0
            gd.b.a(r0, r6)
            xc.t r6 = xc.t.f32733a
            return r6
        L72:
            r6 = move-exception
            r0 = r7
        L74:
            throw r6     // Catch: java.lang.Throwable -> L75
        L75:
            r7 = move-exception
            gd.b.a(r0, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.q.b(java.lang.Object, ad.e):java.lang.Object");
    }
}
