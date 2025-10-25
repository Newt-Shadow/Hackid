package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class p9 {

    /* renamed from: g  reason: collision with root package name */
    private static final Object f6656g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static volatile k9 f6657h;

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicInteger f6658i;

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f6659j = 0;

    /* renamed from: a  reason: collision with root package name */
    final j9 f6660a;

    /* renamed from: b  reason: collision with root package name */
    final String f6661b;

    /* renamed from: c  reason: collision with root package name */
    private Object f6662c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f6663d = -1;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f6664e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f6665f;

    static {
        new AtomicReference();
        n6.m.j(n9.f6582a, "BuildInfo must be non-null");
        f6658i = new AtomicInteger();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ p9(j9 j9Var, String str, Object obj, boolean z10, byte[] bArr) {
        if (j9Var.f6453a != null) {
            this.f6660a = j9Var;
            this.f6661b = str;
            this.f6662c = obj;
            this.f6665f = false;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void b(final Context context) {
        if (f6657h == null && context != null) {
            Object obj = f6656g;
            synchronized (obj) {
                if (f6657h == null) {
                    synchronized (obj) {
                        k9 k9Var = f6657h;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (k9Var == null || k9Var.a() != context) {
                            if (k9Var != null) {
                                u8.f();
                                r9.d();
                                a9.e();
                            }
                            f6657h = new q8(context, n6.t.a(new n6.s() { // from class: com.google.android.gms.internal.measurement.o9
                                @Override // n6.s
                                public final /* synthetic */ Object get() {
                                    int i10 = p9.f6659j;
                                    return b9.a(context);
                                }
                            }));
                            f6658i.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    public static void c() {
        f6658i.incrementAndGet();
    }

    abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[Catch: all -> 0x00c9, TryCatch #0 {, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:18:0x004d, B:20:0x0058, B:22:0x0062, B:26:0x0085, B:28:0x008d, B:40:0x00b4, B:43:0x00bc, B:44:0x00bf, B:45:0x00c3, B:32:0x0096, B:34:0x009a, B:36:0x00aa, B:38:0x00b0, B:24:0x0073, B:46:0x00c7), top: B:53:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0073 A[Catch: all -> 0x00c9, TryCatch #0 {, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:18:0x004d, B:20:0x0058, B:22:0x0062, B:26:0x0085, B:28:0x008d, B:40:0x00b4, B:43:0x00bc, B:44:0x00bf, B:45:0x00c3, B:32:0x0096, B:34:0x009a, B:36:0x00aa, B:38:0x00b0, B:24:0x0073, B:46:0x00c7), top: B:53:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096 A[Catch: all -> 0x00c9, TryCatch #0 {, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:18:0x004d, B:20:0x0058, B:22:0x0062, B:26:0x0085, B:28:0x008d, B:40:0x00b4, B:43:0x00bc, B:44:0x00bf, B:45:0x00c3, B:32:0x0096, B:34:0x009a, B:36:0x00aa, B:38:0x00b0, B:24:0x0073, B:46:0x00c7), top: B:53:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d() {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.measurement.p9.f6658i
            int r0 = r0.get()
            int r1 = r9.f6663d
            if (r1 >= r0) goto Lcc
            monitor-enter(r9)
            int r1 = r9.f6663d     // Catch: java.lang.Throwable -> Lc9
            if (r1 >= r0) goto Lc7
            com.google.android.gms.internal.measurement.k9 r1 = com.google.android.gms.internal.measurement.p9.f6657h     // Catch: java.lang.Throwable -> Lc9
            n6.l r2 = n6.l.a()     // Catch: java.lang.Throwable -> Lc9
            r3 = 0
            if (r1 == 0) goto L47
            n6.s r4 = r1.b()     // Catch: java.lang.Throwable -> Lc9
            if (r4 == 0) goto L47
            n6.s r2 = r1.b()     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r2 = n6.m.i(r2)     // Catch: java.lang.Throwable -> Lc9
            n6.s r2 = (n6.s) r2     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Throwable -> Lc9
            n6.l r2 = (n6.l) r2     // Catch: java.lang.Throwable -> Lc9
            boolean r4 = r2.c()     // Catch: java.lang.Throwable -> Lc9
            if (r4 == 0) goto L47
            java.lang.Object r4 = r2.b()     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.v8 r4 = (com.google.android.gms.internal.measurement.v8) r4     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.j9 r5 = r9.f6660a     // Catch: java.lang.Throwable -> Lc9
            android.net.Uri r6 = r5.f6453a     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r5 = r5.f6455c     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r7 = r9.f6661b     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r4 = r4.a(r6, r3, r5, r7)     // Catch: java.lang.Throwable -> Lc9
            goto L48
        L47:
            r4 = r3
        L48:
            if (r1 == 0) goto L4c
            r5 = 1
            goto L4d
        L4c:
            r5 = 0
        L4d:
            java.lang.String r6 = "Must call PhenotypeFlagInitializer.maybeInit() first"
            n6.m.o(r5, r6)     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.j9 r5 = r9.f6660a     // Catch: java.lang.Throwable -> Lc9
            android.net.Uri r6 = r5.f6453a     // Catch: java.lang.Throwable -> Lc9
            if (r6 == 0) goto L73
            android.content.Context r7 = r1.a()     // Catch: java.lang.Throwable -> Lc9
            boolean r7 = com.google.android.gms.internal.measurement.d9.a(r7, r6)     // Catch: java.lang.Throwable -> Lc9
            if (r7 == 0) goto L71
            android.content.Context r7 = r1.a()     // Catch: java.lang.Throwable -> Lc9
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.m9 r8 = com.google.android.gms.internal.measurement.m9.f6559a     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.u8 r6 = com.google.android.gms.internal.measurement.u8.c(r7, r6, r8)     // Catch: java.lang.Throwable -> Lc9
            goto L83
        L71:
            r6 = r3
            goto L83
        L73:
            android.content.Context r6 = r1.a()     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r7 = n6.m.i(r3)     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.l9 r8 = com.google.android.gms.internal.measurement.l9.f6486a     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.r9 r6 = com.google.android.gms.internal.measurement.r9.c(r6, r7, r8)     // Catch: java.lang.Throwable -> Lc9
        L83:
            if (r6 == 0) goto L92
            java.lang.String r7 = r9.f6661b     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r6 = r6.a(r7)     // Catch: java.lang.Throwable -> Lc9
            if (r6 == 0) goto L92
            java.lang.Object r6 = r9.a(r6)     // Catch: java.lang.Throwable -> Lc9
            goto L93
        L92:
            r6 = r3
        L93:
            if (r6 == 0) goto L96
            goto Lb4
        L96:
            boolean r5 = r5.f6456d     // Catch: java.lang.Throwable -> Lc9
            if (r5 != 0) goto Lae
            android.content.Context r1 = r1.a()     // Catch: java.lang.Throwable -> Lc9
            com.google.android.gms.internal.measurement.a9 r1 = com.google.android.gms.internal.measurement.a9.c(r1)     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r5 = r9.f6661b     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r1 = r1.a(r5)     // Catch: java.lang.Throwable -> Lc9
            if (r1 == 0) goto Lae
            java.lang.Object r3 = r9.a(r1)     // Catch: java.lang.Throwable -> Lc9
        Lae:
            if (r3 != 0) goto Lb3
            java.lang.Object r6 = r9.f6662c     // Catch: java.lang.Throwable -> Lc9
            goto Lb4
        Lb3:
            r6 = r3
        Lb4:
            boolean r1 = r2.c()     // Catch: java.lang.Throwable -> Lc9
            if (r1 == 0) goto Lc3
            if (r4 != 0) goto Lbf
            java.lang.Object r6 = r9.f6662c     // Catch: java.lang.Throwable -> Lc9
            goto Lc3
        Lbf:
            java.lang.Object r6 = r9.a(r4)     // Catch: java.lang.Throwable -> Lc9
        Lc3:
            r9.f6664e = r6     // Catch: java.lang.Throwable -> Lc9
            r9.f6663d = r0     // Catch: java.lang.Throwable -> Lc9
        Lc7:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lc9
            goto Lcc
        Lc9:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lc9
            throw r0
        Lcc:
            java.lang.Object r0 = r9.f6664e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.p9.d():java.lang.Object");
    }
}
