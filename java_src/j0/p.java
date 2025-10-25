package j0;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class p implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final File f24214a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f24215b;

    /* renamed from: c  reason: collision with root package name */
    private final t f24216c;

    /* renamed from: d  reason: collision with root package name */
    private final id.a f24217d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f24218e;

    /* renamed from: f  reason: collision with root package name */
    private final ce.a f24219f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24220a;

        /* renamed from: b  reason: collision with root package name */
        Object f24221b;

        /* renamed from: c  reason: collision with root package name */
        boolean f24222c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f24223d;

        /* renamed from: f  reason: collision with root package name */
        int f24225f;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24223d = obj;
            this.f24225f |= Integer.MIN_VALUE;
            return p.this.e(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24226a;

        /* renamed from: b  reason: collision with root package name */
        Object f24227b;

        /* renamed from: c  reason: collision with root package name */
        Object f24228c;

        /* renamed from: d  reason: collision with root package name */
        Object f24229d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f24230e;

        /* renamed from: g  reason: collision with root package name */
        int f24232g;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24230e = obj;
            this.f24232g |= Integer.MIN_VALUE;
            return p.this.a(null, this);
        }
    }

    public p(File file, e0 serializer, t coordinator, id.a onClose) {
        kotlin.jvm.internal.m.e(file, "file");
        kotlin.jvm.internal.m.e(serializer, "serializer");
        kotlin.jvm.internal.m.e(coordinator, "coordinator");
        kotlin.jvm.internal.m.e(onClose, "onClose");
        this.f24214a = file;
        this.f24215b = serializer;
        this.f24216c = coordinator;
        this.f24217d = onClose;
        this.f24218e = new AtomicBoolean(false);
        this.f24219f = ce.g.b(false, 1, null);
    }

    private final void f() {
        if (!this.f24218e.get()) {
            return;
        }
        throw new IllegalStateException("StorageConnection has already been disposed.".toString());
    }

    private final void g(File file) {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bb A[Catch: IOException -> 0x0106, all -> 0x0114, TRY_ENTER, TryCatch #2 {all -> 0x0114, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:42:0x00f0, B:45:0x00f8, B:56:0x010a, B:58:0x0110, B:59:0x0113, B:51:0x0102, B:52:0x0105, B:24:0x007a, B:25:0x0096), top: B:67:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f8 A[Catch: IOException -> 0x0106, all -> 0x0114, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0114, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:42:0x00f0, B:45:0x00f8, B:56:0x010a, B:58:0x0110, B:59:0x0113, B:51:0x0102, B:52:0x0105, B:24:0x007a, B:25:0x0096), top: B:67:0x0023 }] */
    /* JADX WARN: Type inference failed for: r10v10, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v28, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v0, types: [ce.a, int] */
    @Override // j0.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(id.Function2 r10, ad.e r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.p.a(id.Function2, ad.e):java.lang.Object");
    }

    @Override // j0.k0
    public t c() {
        return this.f24216c;
    }

    @Override // j0.c
    public void close() {
        this.f24218e.set(true);
        this.f24217d.invoke();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:3|(8:5|6|7|(1:(3:10|11|12)(2:28|29))(7:30|31|32|(1:34)(1:43)|35|36|(1:38)(1:39))|14|15|16|(2:(1:19)|20)(1:22)))|7|(0)(0)|14|15|16|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
        r1 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080 A[Catch: all -> 0x0090, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0090, blocks: (B:34:0x0080, B:41:0x008f, B:37:0x0087), top: B:57:0x0022 }] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [j0.p$a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j0.p] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [id.p] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4 */
    @Override // j0.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(id.p r9, ad.e r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof j0.p.a
            if (r0 == 0) goto L13
            r0 = r10
            j0.p$a r0 = (j0.p.a) r0
            int r1 = r0.f24225f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f24225f = r1
            goto L18
        L13:
            j0.p$a r0 = new j0.p$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f24223d
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f24225f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r9 = r0.f24222c
            java.lang.Object r1 = r0.f24221b
            j0.c r1 = (j0.c) r1
            java.lang.Object r0 = r0.f24220a
            j0.p r0 = (j0.p) r0
            xc.m.b(r10)     // Catch: java.lang.Throwable -> L34
            goto L70
        L34:
            r10 = move-exception
            goto L87
        L36:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3e:
            xc.m.b(r10)
            r8.f()
            ce.a r10 = r8.f24219f
            boolean r10 = ce.a.C0093a.a(r10, r4, r3, r4)
            j0.n r2 = new j0.n     // Catch: java.lang.Throwable -> L92
            java.io.File r5 = r8.f24214a     // Catch: java.lang.Throwable -> L92
            j0.e0 r6 = r8.f24215b     // Catch: java.lang.Throwable -> L92
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L92
            if (r10 == 0) goto L57
            r5 = r3
            goto L58
        L57:
            r5 = 0
        L58:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r5)     // Catch: java.lang.Throwable -> L81
            r0.f24220a = r8     // Catch: java.lang.Throwable -> L81
            r0.f24221b = r2     // Catch: java.lang.Throwable -> L81
            r0.f24222c = r10     // Catch: java.lang.Throwable -> L81
            r0.f24225f = r3     // Catch: java.lang.Throwable -> L81
            java.lang.Object r9 = r9.e(r2, r5, r0)     // Catch: java.lang.Throwable -> L81
            if (r9 != r1) goto L6b
            return r1
        L6b:
            r0 = r8
            r1 = r2
            r7 = r10
            r10 = r9
            r9 = r7
        L70:
            r1.close()     // Catch: java.lang.Throwable -> L75
            r1 = r4
            goto L76
        L75:
            r1 = move-exception
        L76:
            if (r1 != 0) goto L80
            if (r9 == 0) goto L7f
            ce.a r9 = r0.f24219f
            ce.a.C0093a.b(r9, r4, r3, r4)
        L7f:
            return r10
        L80:
            throw r1     // Catch: java.lang.Throwable -> L90
        L81:
            r9 = move-exception
            r0 = r8
            r1 = r2
            r7 = r10
            r10 = r9
            r9 = r7
        L87:
            r1.close()     // Catch: java.lang.Throwable -> L8b
            goto L8f
        L8b:
            r1 = move-exception
            xc.a.a(r10, r1)     // Catch: java.lang.Throwable -> L90
        L8f:
            throw r10     // Catch: java.lang.Throwable -> L90
        L90:
            r10 = move-exception
            goto L97
        L92:
            r9 = move-exception
            r0 = r8
            r7 = r10
            r10 = r9
            r9 = r7
        L97:
            if (r9 == 0) goto L9e
            ce.a r9 = r0.f24219f
            ce.a.C0093a.b(r9, r4, r3, r4)
        L9e:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.p.e(id.p, ad.e):java.lang.Object");
    }
}
