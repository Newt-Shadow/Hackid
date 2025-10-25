package com.google.android.gms.internal.auth;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: g  reason: collision with root package name */
    private static volatile k0 f6103g;

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ int f6107k = 0;

    /* renamed from: a  reason: collision with root package name */
    final i0 f6108a;

    /* renamed from: b  reason: collision with root package name */
    final String f6109b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f6110c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f6111d = -1;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f6112e;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f6102f = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicReference f6104h = new AtomicReference();

    /* renamed from: i  reason: collision with root package name */
    private static final o0 f6105i = new o0(new Object() { // from class: com.google.android.gms.internal.auth.d0
    });

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicInteger f6106j = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m0(i0 i0Var, String str, Object obj, boolean z10, l0 l0Var) {
        if (i0Var.f6063a != null) {
            this.f6108a = i0Var;
            this.f6109b = str;
            this.f6110c = obj;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void c() {
        f6106j.incrementAndGet();
    }

    public static void d(final Context context) {
        if (f6103g == null && context != null) {
            Object obj = f6102f;
            synchronized (obj) {
                if (f6103g == null) {
                    synchronized (obj) {
                        k0 k0Var = f6103g;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (k0Var == null || k0Var.a() != context) {
                            q.d();
                            n0.c();
                            x.e();
                            f6103g = new n(context, y0.a(new t0() { // from class: com.google.android.gms.internal.auth.c0
                                @Override // com.google.android.gms.internal.auth.t0
                                public final Object zza() {
                                    Context context2 = context;
                                    int i10 = m0.f6107k;
                                    return y.a(context2);
                                }
                            }));
                            f6106j.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040 A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x0028, B:15:0x0040, B:17:0x0046, B:19:0x0050, B:23:0x006f, B:25:0x0077, B:28:0x007f, B:30:0x0085, B:34:0x0097, B:36:0x009d, B:33:0x0095, B:38:0x00a3, B:40:0x00a7, B:43:0x00af, B:44:0x00b2, B:45:0x00b6, B:20:0x0063, B:48:0x00bd, B:49:0x00c2, B:50:0x00c3), top: B:56:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x0028, B:15:0x0040, B:17:0x0046, B:19:0x0050, B:23:0x006f, B:25:0x0077, B:28:0x007f, B:30:0x0085, B:34:0x0097, B:36:0x009d, B:33:0x0095, B:38:0x00a3, B:40:0x00a7, B:43:0x00af, B:44:0x00b2, B:45:0x00b6, B:20:0x0063, B:48:0x00bd, B:49:0x00c2, B:50:0x00c3), top: B:56:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bd A[Catch: all -> 0x00bb, TryCatch #0 {all -> 0x00bb, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x0028, B:15:0x0040, B:17:0x0046, B:19:0x0050, B:23:0x006f, B:25:0x0077, B:28:0x007f, B:30:0x0085, B:34:0x0097, B:36:0x009d, B:33:0x0095, B:38:0x00a3, B:40:0x00a7, B:43:0x00af, B:44:0x00b2, B:45:0x00b6, B:20:0x0063, B:48:0x00bd, B:49:0x00c2, B:50:0x00c3), top: B:56:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b() {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.auth.m0.f6106j
            int r0 = r0.get()
            int r1 = r8.f6111d
            if (r1 >= r0) goto Lc7
            monitor-enter(r8)
            int r1 = r8.f6111d     // Catch: java.lang.Throwable -> Lbb
            if (r1 >= r0) goto Lc3
            com.google.android.gms.internal.auth.k0 r1 = com.google.android.gms.internal.auth.m0.f6103g     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.r0 r2 = com.google.android.gms.internal.auth.r0.c()     // Catch: java.lang.Throwable -> Lbb
            r3 = 0
            if (r1 == 0) goto L3b
            com.google.android.gms.internal.auth.t0 r2 = r1.b()     // Catch: java.lang.Throwable -> Lbb
            java.lang.Object r2 = r2.zza()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.r0 r2 = (com.google.android.gms.internal.auth.r0) r2     // Catch: java.lang.Throwable -> Lbb
            boolean r4 = r2.b()     // Catch: java.lang.Throwable -> Lbb
            if (r4 == 0) goto L3b
            java.lang.Object r4 = r2.a()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.r r4 = (com.google.android.gms.internal.auth.r) r4     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.i0 r5 = r8.f6108a     // Catch: java.lang.Throwable -> Lbb
            android.net.Uri r6 = r5.f6063a     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r5 = r5.f6065c     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r7 = r8.f6109b     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r4 = r4.a(r6, r3, r5, r7)     // Catch: java.lang.Throwable -> Lbb
            goto L3c
        L3b:
            r4 = r3
        L3c:
            java.lang.String r5 = "Must call PhenotypeFlag.init() first"
            if (r1 == 0) goto Lbd
            com.google.android.gms.internal.auth.i0 r5 = r8.f6108a     // Catch: java.lang.Throwable -> Lbb
            android.net.Uri r5 = r5.f6063a     // Catch: java.lang.Throwable -> Lbb
            if (r5 == 0) goto L63
            android.content.Context r6 = r1.a()     // Catch: java.lang.Throwable -> Lbb
            boolean r5 = com.google.android.gms.internal.auth.z.a(r6, r5)     // Catch: java.lang.Throwable -> Lbb
            if (r5 == 0) goto L6c
            android.content.Context r5 = r1.a()     // Catch: java.lang.Throwable -> Lbb
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.i0 r6 = r8.f6108a     // Catch: java.lang.Throwable -> Lbb
            android.net.Uri r6 = r6.f6063a     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.b0 r7 = new java.lang.Runnable() { // from class: com.google.android.gms.internal.auth.b0
                static {
                    /*
                        com.google.android.gms.internal.auth.b0 r0 = new com.google.android.gms.internal.auth.b0
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.auth.b0) com.google.android.gms.internal.auth.b0.a com.google.android.gms.internal.auth.b0
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.b0.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.b0.<init>():void");
                }

                @Override // java.lang.Runnable
                public final void run() {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.auth.m0.c()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.b0.run():void");
                }
            }     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.q r5 = com.google.android.gms.internal.auth.q.b(r5, r6, r7)     // Catch: java.lang.Throwable -> Lbb
            goto L6d
        L63:
            android.content.Context r5 = r1.a()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.b0 r6 = com.google.android.gms.internal.auth.b0.f5976a     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.n0.b(r5, r3, r6)     // Catch: java.lang.Throwable -> Lbb
        L6c:
            r5 = r3
        L6d:
            if (r5 == 0) goto L7c
            java.lang.String r6 = r8.f6109b     // Catch: java.lang.Throwable -> Lbb
            java.lang.Object r5 = r5.a(r6)     // Catch: java.lang.Throwable -> Lbb
            if (r5 == 0) goto L7c
            java.lang.Object r5 = r8.a(r5)     // Catch: java.lang.Throwable -> Lbb
            goto L7d
        L7c:
            r5 = r3
        L7d:
            if (r5 != 0) goto La7
            com.google.android.gms.internal.auth.i0 r5 = r8.f6108a     // Catch: java.lang.Throwable -> Lbb
            boolean r5 = r5.f6066d     // Catch: java.lang.Throwable -> Lbb
            if (r5 != 0) goto La1
            android.content.Context r1 = r1.a()     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.x r1 = com.google.android.gms.internal.auth.x.b(r1)     // Catch: java.lang.Throwable -> Lbb
            com.google.android.gms.internal.auth.i0 r5 = r8.f6108a     // Catch: java.lang.Throwable -> Lbb
            boolean r5 = r5.f6066d     // Catch: java.lang.Throwable -> Lbb
            if (r5 == 0) goto L95
            r5 = r3
            goto L97
        L95:
            java.lang.String r5 = r8.f6109b     // Catch: java.lang.Throwable -> Lbb
        L97:
            java.lang.String r1 = r1.a(r5)     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto La1
            java.lang.Object r3 = r8.a(r1)     // Catch: java.lang.Throwable -> Lbb
        La1:
            if (r3 != 0) goto La6
            java.lang.Object r5 = r8.f6110c     // Catch: java.lang.Throwable -> Lbb
            goto La7
        La6:
            r5 = r3
        La7:
            boolean r1 = r2.b()     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto Lb6
            if (r4 != 0) goto Lb2
            java.lang.Object r5 = r8.f6110c     // Catch: java.lang.Throwable -> Lbb
            goto Lb6
        Lb2:
            java.lang.Object r5 = r8.a(r4)     // Catch: java.lang.Throwable -> Lbb
        Lb6:
            r8.f6112e = r5     // Catch: java.lang.Throwable -> Lbb
            r8.f6111d = r0     // Catch: java.lang.Throwable -> Lbb
            goto Lc3
        Lbb:
            r0 = move-exception
            goto Lc5
        Lbd:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lbb
            r0.<init>(r5)     // Catch: java.lang.Throwable -> Lbb
            throw r0     // Catch: java.lang.Throwable -> Lbb
        Lc3:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> Lbb
            goto Lc7
        Lc5:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> Lbb
            throw r0
        Lc7:
            java.lang.Object r0 = r8.f6112e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.m0.b():java.lang.Object");
    }
}
