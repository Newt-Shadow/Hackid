package j0;

import id.Function2;
import j0.f0;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class x implements t {

    /* renamed from: j  reason: collision with root package name */
    public static final a f24243j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private static final String f24244k = "Resource deadlock would occur";

    /* renamed from: l  reason: collision with root package name */
    private static final long f24245l = 10;

    /* renamed from: m  reason: collision with root package name */
    private static final long f24246m = 60000;

    /* renamed from: a  reason: collision with root package name */
    private final ad.i f24247a;

    /* renamed from: b  reason: collision with root package name */
    private final File f24248b;

    /* renamed from: c  reason: collision with root package name */
    private final wd.d f24249c;

    /* renamed from: d  reason: collision with root package name */
    private final String f24250d;

    /* renamed from: e  reason: collision with root package name */
    private final String f24251e;

    /* renamed from: f  reason: collision with root package name */
    private final String f24252f;

    /* renamed from: g  reason: collision with root package name */
    private final ce.a f24253g;

    /* renamed from: h  reason: collision with root package name */
    private final xc.d f24254h;

    /* renamed from: i  reason: collision with root package name */
    private final xc.d f24255i;

    /* loaded from: classes.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: j0.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0223a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f24256a;

            /* renamed from: b  reason: collision with root package name */
            long f24257b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f24258c;

            /* renamed from: e  reason: collision with root package name */
            int f24260e;

            C0223a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f24258c = obj;
                this.f24260e |= Integer.MIN_VALUE;
                return a.this.b(null, this);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007d -> B:29:0x0080). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object b(java.io.FileOutputStream r14, ad.e r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof j0.x.a.C0223a
                if (r0 == 0) goto L13
                r0 = r15
                j0.x$a$a r0 = (j0.x.a.C0223a) r0
                int r1 = r0.f24260e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f24260e = r1
                goto L18
            L13:
                j0.x$a$a r0 = new j0.x$a$a
                r0.<init>(r15)
            L18:
                java.lang.Object r15 = r0.f24258c
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f24260e
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L38
                if (r2 != r4) goto L30
                long r5 = r0.f24257b
                java.lang.Object r14 = r0.f24256a
                java.io.FileOutputStream r14 = (java.io.FileOutputStream) r14
                xc.m.b(r15)
                goto L80
            L30:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r15)
                throw r14
            L38:
                xc.m.b(r15)
                long r5 = j0.x.i()
            L3f:
                long r7 = j0.x.k()
                int r15 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            */
            //  java.lang.String r2 = "lockFileStream.getChanne…LUE, /* shared= */ false)"
            /*
                if (r15 > 0) goto L84
                java.nio.channels.FileChannel r7 = r14.getChannel()     // Catch: java.io.IOException -> L5d
                r8 = 0
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r12 = 0
                java.nio.channels.FileLock r15 = r7.lock(r8, r10, r12)     // Catch: java.io.IOException -> L5d
                kotlin.jvm.internal.m.d(r15, r2)     // Catch: java.io.IOException -> L5d
                return r15
            L5d:
                r15 = move-exception
                java.lang.String r2 = r15.getMessage()
                r7 = 0
                if (r2 == 0) goto L71
                java.lang.String r8 = j0.x.h()
                r9 = 0
                boolean r2 = rd.n.N(r2, r8, r7, r3, r9)
                if (r2 != r4) goto L71
                r7 = r4
            L71:
                if (r7 == 0) goto L83
                r0.f24256a = r14
                r0.f24257b = r5
                r0.f24260e = r4
                java.lang.Object r15 = td.v0.a(r5, r0)
                if (r15 != r1) goto L80
                return r1
            L80:
                long r7 = (long) r3
                long r5 = r5 * r7
                goto L3f
            L83:
                throw r15
            L84:
                java.nio.channels.FileChannel r7 = r14.getChannel()
                r8 = 0
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r12 = 0
                java.nio.channels.FileLock r14 = r7.lock(r8, r10, r12)
                kotlin.jvm.internal.m.d(r14, r2)
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: j0.x.a.b(java.io.FileOutputStream, ad.e):java.lang.Object");
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f24261a;

        public b(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new b(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f24261a == 0) {
                xc.m.b(obj);
                return kotlin.coroutines.jvm.internal.b.c(x.this.r().b());
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((b) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f24263a;

        public c(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new c(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f24263a == 0) {
                xc.m.b(obj);
                return kotlin.coroutines.jvm.internal.b.c(x.this.r().c());
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((c) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* loaded from: classes.dex */
    static final class d extends kotlin.jvm.internal.n implements id.a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ x f24266e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(x xVar) {
                super(0);
                this.f24266e = xVar;
            }

            @Override // id.a
            /* renamed from: b */
            public final File invoke() {
                x xVar = this.f24266e;
                File p10 = xVar.p(xVar.f24251e);
                this.f24266e.n(p10);
                return p10;
            }
        }

        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final f0 invoke() {
            f0.a aVar = f0.f23990b;
            aVar.d();
            return aVar.a(new a(x.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24267a;

        /* renamed from: b  reason: collision with root package name */
        Object f24268b;

        /* renamed from: c  reason: collision with root package name */
        Object f24269c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f24270d;

        /* renamed from: f  reason: collision with root package name */
        int f24272f;

        e(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24270d = obj;
            this.f24272f |= Integer.MIN_VALUE;
            return x.this.a(null, this);
        }
    }

    /* loaded from: classes.dex */
    static final class f extends kotlin.jvm.internal.n implements id.a {
        f() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final File invoke() {
            x xVar = x.this;
            File p10 = xVar.p(xVar.f24250d);
            x.this.n(p10);
            return p10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class g extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24274a;

        /* renamed from: b  reason: collision with root package name */
        Object f24275b;

        /* renamed from: c  reason: collision with root package name */
        Object f24276c;

        /* renamed from: d  reason: collision with root package name */
        boolean f24277d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f24278e;

        /* renamed from: g  reason: collision with root package name */
        int f24280g;

        g(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24278e = obj;
            this.f24280g |= Integer.MIN_VALUE;
            return x.this.b(null, this);
        }
    }

    public x(ad.i context, File file) {
        xc.d a10;
        xc.d a11;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(file, "file");
        this.f24247a = context;
        this.f24248b = file;
        this.f24249c = a0.f23967c.e(file);
        this.f24250d = ".lock";
        this.f24251e = ".version";
        this.f24252f = "fcntl failed: EAGAIN";
        this.f24253g = ce.g.b(false, 1, null);
        a10 = xc.f.a(new f());
        this.f24254h = a10;
        a11 = xc.f.a(new d());
        this.f24255i = a11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(File file) {
        o(file);
        if (!file.exists()) {
            file.createNewFile();
        }
    }

    private final void o(File file) {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File p(String str) {
        return new File(this.f24248b.getAbsolutePath() + str);
    }

    private final File q() {
        return (File) this.f24254h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f0 r() {
        return (f0) this.f24255i.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb A[Catch: all -> 0x00d9, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00e3, blocks: (B:31:0x0085, B:42:0x00bb, B:53:0x00d5, B:56:0x00dc), top: B:72:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d5 A[Catch: all -> 0x00d9, TRY_ENTER, TryCatch #8 {all -> 0x00e3, blocks: (B:31:0x0085, B:42:0x00bb, B:53:0x00d5, B:56:0x00dc), top: B:72:0x0085 }] */
    @Override // j0.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(id.l r9, ad.e r10) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.x.a(id.l, ad.e):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b6 A[Catch: all -> 0x009b, TryCatch #6 {all -> 0x009b, blocks: (B:34:0x0088, B:39:0x00a3, B:41:0x00a9, B:46:0x00b6, B:48:0x00bc, B:54:0x00ca), top: B:91:0x0088, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ca A[Catch: all -> 0x009b, TRY_LEAVE, TryCatch #6 {all -> 0x009b, blocks: (B:34:0x0088, B:39:0x00a3, B:41:0x00a9, B:46:0x00b6, B:48:0x00bc, B:54:0x00ca), top: B:91:0x0088, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00eb A[Catch: all -> 0x0102, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0057, blocks: (B:65:0x00ee, B:20:0x0053, B:64:0x00eb, B:72:0x00fe, B:75:0x0105), top: B:90:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fe A[Catch: all -> 0x0102, TRY_ENTER, TryCatch #4 {all -> 0x0057, blocks: (B:65:0x00ee, B:20:0x0053, B:64:0x00eb, B:72:0x00fe, B:75:0x0105), top: B:90:0x0029 }] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, j0.x$g] */
    /* JADX WARN: Type inference failed for: r3v3, types: [ce.a] */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // j0.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(id.Function2 r19, ad.e r20) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.x.b(id.Function2, ad.e):java.lang.Object");
    }

    @Override // j0.t
    public Object c(ad.e eVar) {
        if (this.f24255i.a()) {
            return kotlin.coroutines.jvm.internal.b.c(r().b());
        }
        return td.g.g(this.f24247a, new b(null), eVar);
    }

    @Override // j0.t
    public wd.d d() {
        return this.f24249c;
    }

    @Override // j0.t
    public Object e(ad.e eVar) {
        if (this.f24255i.a()) {
            return kotlin.coroutines.jvm.internal.b.c(r().c());
        }
        return td.g.g(this.f24247a, new c(null), eVar);
    }
}
