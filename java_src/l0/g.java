package l0;

import af.k;
import af.s0;
import j0.p0;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class g extends b implements p0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f25030a;

        /* renamed from: b  reason: collision with root package name */
        Object f25031b;

        /* renamed from: c  reason: collision with root package name */
        Object f25032c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f25033d;

        /* renamed from: f  reason: collision with root package name */
        int f25035f;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f25033d = obj;
            this.f25035f |= Integer.MIN_VALUE;
            return g.this.b(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k fileSystem, s0 path, c serializer) {
        super(fileSystem, path, serializer);
        m.e(fileSystem, "fileSystem");
        m.e(path, "path");
        m.e(serializer, "serializer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0097 A[Catch: all -> 0x0090, TRY_LEAVE, TryCatch #8 {all -> 0x0090, blocks: (B:42:0x0097, B:48:0x00a4, B:34:0x0087), top: B:72:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a4 A[Catch: all -> 0x0090, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x0090, blocks: (B:42:0x0097, B:48:0x00a4, B:34:0x0087), top: B:72:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // j0.p0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(java.lang.Object r9, ad.e r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof l0.g.a
            if (r0 == 0) goto L13
            r0 = r10
            l0.g$a r0 = (l0.g.a) r0
            int r1 = r0.f25035f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25035f = r1
            goto L18
        L13:
            l0.g$a r0 = new l0.g$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f25033d
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f25035f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r9 = r0.f25032c
            java.io.Closeable r9 = (java.io.Closeable) r9
            java.lang.Object r1 = r0.f25031b
            af.i r1 = (af.i) r1
            java.lang.Object r0 = r0.f25030a
            java.io.Closeable r0 = (java.io.Closeable) r0
            xc.m.b(r10)     // Catch: java.lang.Throwable -> L36
            goto L72
        L36:
            r10 = move-exception
            goto L85
        L38:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L40:
            xc.m.b(r10)
            r8.f()
            af.k r10 = r8.g()
            af.s0 r2 = r8.h()
            af.i r10 = r10.j(r2)
            r5 = 0
            af.y0 r2 = af.i.w(r10, r5, r3, r4)     // Catch: java.lang.Throwable -> La5
            af.e r2 = af.m0.a(r2)     // Catch: java.lang.Throwable -> La5
            l0.c r5 = r8.i()     // Catch: java.lang.Throwable -> L81
            r0.f25030a = r10     // Catch: java.lang.Throwable -> L81
            r0.f25031b = r10     // Catch: java.lang.Throwable -> L81
            r0.f25032c = r2     // Catch: java.lang.Throwable -> L81
            r0.f25035f = r3     // Catch: java.lang.Throwable -> L81
            java.lang.Object r9 = r5.c(r9, r2, r0)     // Catch: java.lang.Throwable -> L81
            if (r9 != r1) goto L6f
            return r1
        L6f:
            r0 = r10
            r1 = r0
            r9 = r2
        L72:
            r1.flush()     // Catch: java.lang.Throwable -> L36
            xc.t r10 = xc.t.f32733a     // Catch: java.lang.Throwable -> L36
            if (r9 == 0) goto L7f
            r9.close()     // Catch: java.lang.Throwable -> L7d
            goto L7f
        L7d:
            r9 = move-exception
            goto L95
        L7f:
            r9 = r4
            goto L95
        L81:
            r9 = move-exception
            r0 = r10
            r10 = r9
            r9 = r2
        L85:
            if (r9 == 0) goto L93
            r9.close()     // Catch: java.lang.Throwable -> L8b
            goto L93
        L8b:
            r9 = move-exception
            xc.a.a(r10, r9)     // Catch: java.lang.Throwable -> L90
            goto L93
        L90:
            r9 = move-exception
            r10 = r0
            goto La6
        L93:
            r9 = r10
            r10 = r4
        L95:
            if (r9 != 0) goto La4
            kotlin.jvm.internal.m.b(r10)     // Catch: java.lang.Throwable -> L90
            xc.t r9 = xc.t.f32733a     // Catch: java.lang.Throwable -> L90
            if (r0 == 0) goto Lb3
            r0.close()     // Catch: java.lang.Throwable -> La2
            goto Lb3
        La2:
            r4 = move-exception
            goto Lb3
        La4:
            throw r9     // Catch: java.lang.Throwable -> L90
        La5:
            r9 = move-exception
        La6:
            if (r10 == 0) goto Lb0
            r10.close()     // Catch: java.lang.Throwable -> Lac
            goto Lb0
        Lac:
            r10 = move-exception
            xc.a.a(r9, r10)
        Lb0:
            r7 = r4
            r4 = r9
            r9 = r7
        Lb3:
            if (r4 != 0) goto Lbb
            kotlin.jvm.internal.m.b(r9)
            xc.t r9 = xc.t.f32733a
            return r9
        Lbb:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.g.b(java.lang.Object, ad.e):java.lang.Object");
    }
}
