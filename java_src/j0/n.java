package j0;

import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class n implements c0 {

    /* renamed from: a  reason: collision with root package name */
    private final File f24192a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f24193b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f24194c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24195a;

        /* renamed from: b  reason: collision with root package name */
        Object f24196b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f24197c;

        /* renamed from: e  reason: collision with root package name */
        int f24199e;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24197c = obj;
            this.f24199e |= Integer.MIN_VALUE;
            return n.i(n.this, this);
        }
    }

    public n(File file, e0 serializer) {
        kotlin.jvm.internal.m.e(file, "file");
        kotlin.jvm.internal.m.e(serializer, "serializer");
        this.f24192a = file;
        this.f24193b = serializer;
        this.f24194c = new AtomicBoolean(false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(6:5|6|7|(1:(1:(5:11|12|13|14|15)(2:25|26))(3:27|28|29))(6:35|36|37|39|40|(1:42)(1:43))|30|31))|63|6|7|(0)(0)|30|31|(2:(1:21)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
        r7 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object i(j0.n r7, ad.e r8) {
        /*
            boolean r0 = r8 instanceof j0.n.a
            if (r0 == 0) goto L13
            r0 = r8
            j0.n$a r0 = (j0.n.a) r0
            int r1 = r0.f24199e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f24199e = r1
            goto L18
        L13:
            j0.n$a r0 = new j0.n$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f24197c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f24199e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r7 = r0.f24195a
            java.io.Closeable r7 = (java.io.Closeable) r7
            xc.m.b(r8)     // Catch: java.lang.Throwable -> L32
            goto L9d
        L32:
            r8 = move-exception
            goto La5
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            java.lang.Object r7 = r0.f24196b
            java.io.Closeable r7 = (java.io.Closeable) r7
            java.lang.Object r2 = r0.f24195a
            j0.n r2 = (j0.n) r2
            xc.m.b(r8)     // Catch: java.lang.Throwable -> L49
            goto L6b
        L49:
            r8 = move-exception
            goto L76
        L4b:
            xc.m.b(r8)
            r7.f()
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L7c
            java.io.File r2 = r7.f24192a     // Catch: java.io.FileNotFoundException -> L7c
            r8.<init>(r2)     // Catch: java.io.FileNotFoundException -> L7c
            j0.e0 r2 = r7.f24193b     // Catch: java.lang.Throwable -> L71
            r0.f24195a = r7     // Catch: java.lang.Throwable -> L71
            r0.f24196b = r8     // Catch: java.lang.Throwable -> L71
            r0.f24199e = r4     // Catch: java.lang.Throwable -> L71
            java.lang.Object r2 = r2.c(r8, r0)     // Catch: java.lang.Throwable -> L71
            if (r2 != r1) goto L67
            return r1
        L67:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L6b:
            gd.b.a(r7, r5)     // Catch: java.io.FileNotFoundException -> L6f
            goto Lb1
        L6f:
            r7 = r2
            goto L7c
        L71:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L76:
            throw r8     // Catch: java.lang.Throwable -> L77
        L77:
            r4 = move-exception
            gd.b.a(r7, r8)     // Catch: java.io.FileNotFoundException -> L6f
            throw r4     // Catch: java.io.FileNotFoundException -> L6f
        L7c:
            java.io.File r8 = r7.f24192a
            boolean r8 = r8.exists()
            if (r8 == 0) goto Lab
            java.io.FileInputStream r8 = new java.io.FileInputStream
            java.io.File r2 = r7.f24192a
            r8.<init>(r2)
            j0.e0 r7 = r7.f24193b     // Catch: java.lang.Throwable -> La1
            r0.f24195a = r8     // Catch: java.lang.Throwable -> La1
            r0.f24196b = r5     // Catch: java.lang.Throwable -> La1
            r0.f24199e = r3     // Catch: java.lang.Throwable -> La1
            java.lang.Object r7 = r7.c(r8, r0)     // Catch: java.lang.Throwable -> La1
            if (r7 != r1) goto L9a
            return r1
        L9a:
            r6 = r8
            r8 = r7
            r7 = r6
        L9d:
            gd.b.a(r7, r5)
            return r8
        La1:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        La5:
            throw r8     // Catch: java.lang.Throwable -> La6
        La6:
            r0 = move-exception
            gd.b.a(r7, r8)
            throw r0
        Lab:
            j0.e0 r7 = r7.f24193b
            java.lang.Object r8 = r7.a()
        Lb1:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.n.i(j0.n, ad.e):java.lang.Object");
    }

    @Override // j0.c
    public void close() {
        this.f24194c.set(true);
    }

    @Override // j0.c0
    public Object d(ad.e eVar) {
        return i(this, eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f() {
        if (!this.f24194c.get()) {
            return;
        }
        throw new IllegalStateException("This scope has already been closed.".toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final File g() {
        return this.f24192a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e0 h() {
        return this.f24193b;
    }
}
