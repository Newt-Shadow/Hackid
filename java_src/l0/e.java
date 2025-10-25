package l0;

import af.k;
import af.s0;
import j0.k0;
import j0.t;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class e implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final k f25010a;

    /* renamed from: b  reason: collision with root package name */
    private final s0 f25011b;

    /* renamed from: c  reason: collision with root package name */
    private final c f25012c;

    /* renamed from: d  reason: collision with root package name */
    private final t f25013d;

    /* renamed from: e  reason: collision with root package name */
    private final id.a f25014e;

    /* renamed from: f  reason: collision with root package name */
    private final l0.a f25015f;

    /* renamed from: g  reason: collision with root package name */
    private final ce.a f25016g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f25017a;

        /* renamed from: b  reason: collision with root package name */
        Object f25018b;

        /* renamed from: c  reason: collision with root package name */
        boolean f25019c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f25020d;

        /* renamed from: f  reason: collision with root package name */
        int f25022f;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f25020d = obj;
            this.f25022f |= Integer.MIN_VALUE;
            return e.this.e(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f25023a;

        /* renamed from: b  reason: collision with root package name */
        Object f25024b;

        /* renamed from: c  reason: collision with root package name */
        Object f25025c;

        /* renamed from: d  reason: collision with root package name */
        Object f25026d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f25027e;

        /* renamed from: g  reason: collision with root package name */
        int f25029g;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f25027e = obj;
            this.f25029g |= Integer.MIN_VALUE;
            return e.this.a(null, this);
        }
    }

    public e(k fileSystem, s0 path, c serializer, t coordinator, id.a onClose) {
        m.e(fileSystem, "fileSystem");
        m.e(path, "path");
        m.e(serializer, "serializer");
        m.e(coordinator, "coordinator");
        m.e(onClose, "onClose");
        this.f25010a = fileSystem;
        this.f25011b = path;
        this.f25012c = serializer;
        this.f25013d = coordinator;
        this.f25014e = onClose;
        this.f25015f = new l0.a(false);
        this.f25016g = ce.g.b(false, 1, null);
    }

    private final void f() {
        if (!this.f25015f.a()) {
            return;
        }
        throw new IllegalStateException("StorageConnection has already been disposed.".toString());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(8:(2:3|(11:5|6|7|(1:(1:(8:11|12|13|14|15|16|17|(5:19|(1:21)|22|23|24)(1:26))(2:37|38))(1:39))(2:65|(2:67|(1:69)(1:70))(2:71|72))|40|41|42|43|44|45|(1:47)(6:48|14|15|16|17|(0)(0))))|40|41|42|43|44|45|(0)(0))|77|6|7|(0)(0)|(2:(0)|(1:57))) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f6, code lost:
        r10 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f7, code lost:
        r11 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf A[Catch: all -> 0x00f6, IOException -> 0x00f9, TRY_ENTER, TryCatch #0 {IOException -> 0x00f9, blocks: (B:37:0x00cf, B:39:0x00d7, B:43:0x00e6, B:49:0x00f2, B:50:0x00f5), top: B:66:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e6 A[Catch: all -> 0x00f6, IOException -> 0x00f9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x00f9, blocks: (B:37:0x00cf, B:39:0x00d7, B:43:0x00e6, B:49:0x00f2, B:50:0x00f5), top: B:66:0x0024 }] */
    /* JADX WARN: Type inference failed for: r0v3, types: [af.k] */
    /* JADX WARN: Type inference failed for: r0v5, types: [af.k] */
    /* JADX WARN: Type inference failed for: r10v13, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v30, types: [j0.c] */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [af.s0] */
    @Override // j0.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(id.Function2 r10, ad.e r11) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.e.a(id.Function2, ad.e):java.lang.Object");
    }

    @Override // j0.k0
    public t c() {
        return this.f25013d;
    }

    @Override // j0.c
    public void close() {
        this.f25015f.b(true);
        this.f25014e.invoke();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:3|(8:5|6|7|(1:(3:10|11|12)(2:28|29))(7:30|31|32|(1:34)(1:43)|35|36|(1:38)(1:39))|14|15|16|(2:(1:19)|20)(1:22)))|7|(0)(0)|14|15|16|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
        r1 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[Catch: all -> 0x0092, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0092, blocks: (B:34:0x0082, B:41:0x0091, B:37:0x0089), top: B:57:0x0022 }] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, l0.e$a] */
    /* JADX WARN: Type inference failed for: r0v3, types: [l0.e] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r10v0, types: [id.p] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v4 */
    @Override // j0.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(id.p r10, ad.e r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof l0.e.a
            if (r0 == 0) goto L13
            r0 = r11
            l0.e$a r0 = (l0.e.a) r0
            int r1 = r0.f25022f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25022f = r1
            goto L18
        L13:
            l0.e$a r0 = new l0.e$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f25020d
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f25022f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            boolean r10 = r0.f25019c
            java.lang.Object r1 = r0.f25018b
            j0.c r1 = (j0.c) r1
            java.lang.Object r0 = r0.f25017a
            l0.e r0 = (l0.e) r0
            xc.m.b(r11)     // Catch: java.lang.Throwable -> L34
            goto L72
        L34:
            r11 = move-exception
            goto L89
        L36:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3e:
            xc.m.b(r11)
            r9.f()
            ce.a r11 = r9.f25016g
            boolean r11 = ce.a.C0093a.a(r11, r4, r3, r4)
            l0.b r2 = new l0.b     // Catch: java.lang.Throwable -> L94
            af.k r5 = r9.f25010a     // Catch: java.lang.Throwable -> L94
            af.s0 r6 = r9.f25011b     // Catch: java.lang.Throwable -> L94
            l0.c r7 = r9.f25012c     // Catch: java.lang.Throwable -> L94
            r2.<init>(r5, r6, r7)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L59
            r5 = r3
            goto L5a
        L59:
            r5 = 0
        L5a:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r5)     // Catch: java.lang.Throwable -> L83
            r0.f25017a = r9     // Catch: java.lang.Throwable -> L83
            r0.f25018b = r2     // Catch: java.lang.Throwable -> L83
            r0.f25019c = r11     // Catch: java.lang.Throwable -> L83
            r0.f25022f = r3     // Catch: java.lang.Throwable -> L83
            java.lang.Object r10 = r10.e(r2, r5, r0)     // Catch: java.lang.Throwable -> L83
            if (r10 != r1) goto L6d
            return r1
        L6d:
            r0 = r9
            r1 = r2
            r8 = r11
            r11 = r10
            r10 = r8
        L72:
            r1.close()     // Catch: java.lang.Throwable -> L77
            r1 = r4
            goto L78
        L77:
            r1 = move-exception
        L78:
            if (r1 != 0) goto L82
            if (r10 == 0) goto L81
            ce.a r10 = r0.f25016g
            ce.a.C0093a.b(r10, r4, r3, r4)
        L81:
            return r11
        L82:
            throw r1     // Catch: java.lang.Throwable -> L92
        L83:
            r10 = move-exception
            r0 = r9
            r1 = r2
            r8 = r11
            r11 = r10
            r10 = r8
        L89:
            r1.close()     // Catch: java.lang.Throwable -> L8d
            goto L91
        L8d:
            r1 = move-exception
            xc.a.a(r11, r1)     // Catch: java.lang.Throwable -> L92
        L91:
            throw r11     // Catch: java.lang.Throwable -> L92
        L92:
            r11 = move-exception
            goto L99
        L94:
            r10 = move-exception
            r0 = r9
            r8 = r11
            r11 = r10
            r10 = r8
        L99:
            if (r10 == 0) goto La0
            ce.a r10 = r0.f25016g
            ce.a.C0093a.b(r10, r4, r3, r4)
        La0:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.e.e(id.p, ad.e):java.lang.Object");
    }
}
