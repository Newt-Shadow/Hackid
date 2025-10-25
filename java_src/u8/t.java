package u8;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: c  reason: collision with root package name */
    public static final a f30981c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f30982a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30983b;

    /* loaded from: classes.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: u8.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0343a extends kotlin.coroutines.jvm.internal.d {

            /* renamed from: a  reason: collision with root package name */
            Object f30984a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f30985b;

            /* renamed from: d  reason: collision with root package name */
            int f30987d;

            C0343a(ad.e eVar) {
                super(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                this.f30985b = obj;
                this.f30987d |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(14:1|(2:3|(12:5|6|7|(1:(1:(6:11|12|13|(1:15)|16|17)(2:20|21))(2:22|23))(3:30|31|(1:33))|24|25|26|(1:28)|13|(0)|16|17))|38|6|7|(0)(0)|24|25|26|(0)|13|(0)|16|17) */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0068, code lost:
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
            android.util.Log.w("FirebaseSessions", "Error getting authentication token.", r10);
            r10 = r9;
            r9 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x008b, code lost:
            android.util.Log.w("FirebaseSessions", "Error getting Firebase installation id .", r10);
            r9 = r9;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0083 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
        /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(l8.e r9, ad.e r10) {
            /*
                r8 = this;
                boolean r0 = r10 instanceof u8.t.a.C0343a
                if (r0 == 0) goto L13
                r0 = r10
                u8.t$a$a r0 = (u8.t.a.C0343a) r0
                int r1 = r0.f30987d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f30987d = r1
                goto L18
            L13:
                u8.t$a$a r0 = new u8.t$a$a
                r0.<init>(r10)
            L18:
                java.lang.Object r10 = r0.f30985b
                java.lang.Object r1 = bd.b.e()
                int r2 = r0.f30987d
                java.lang.String r3 = "FirebaseSessions"
                r4 = 2
                r5 = 1
                java.lang.String r6 = ""
                if (r2 == 0) goto L46
                if (r2 == r5) goto L3e
                if (r2 != r4) goto L36
                java.lang.Object r9 = r0.f30984a
                java.lang.String r9 = (java.lang.String) r9
                xc.m.b(r10)     // Catch: java.lang.Exception -> L34
                goto L84
            L34:
                r10 = move-exception
                goto L8b
            L36:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L3e:
                java.lang.Object r9 = r0.f30984a
                l8.e r9 = (l8.e) r9
                xc.m.b(r10)     // Catch: java.lang.Exception -> L68
                goto L5e
            L46:
                xc.m.b(r10)
                r10 = 0
                m6.Task r10 = r9.a(r10)     // Catch: java.lang.Exception -> L68
                java.lang.String r2 = "getToken(...)"
                kotlin.jvm.internal.m.d(r10, r2)     // Catch: java.lang.Exception -> L68
                r0.f30984a = r9     // Catch: java.lang.Exception -> L68
                r0.f30987d = r5     // Catch: java.lang.Exception -> L68
                java.lang.Object r10 = de.b.a(r10, r0)     // Catch: java.lang.Exception -> L68
                if (r10 != r1) goto L5e
                return r1
            L5e:
                com.google.firebase.installations.g r10 = (com.google.firebase.installations.g) r10     // Catch: java.lang.Exception -> L68
                java.lang.String r10 = r10.b()     // Catch: java.lang.Exception -> L68
                r7 = r10
                r10 = r9
                r9 = r7
                goto L70
            L68:
                r10 = move-exception
                java.lang.String r2 = "Error getting authentication token."
                android.util.Log.w(r3, r2, r10)
                r10 = r9
                r9 = r6
            L70:
                m6.Task r10 = r10.getId()     // Catch: java.lang.Exception -> L34
                java.lang.String r2 = "getId(...)"
                kotlin.jvm.internal.m.d(r10, r2)     // Catch: java.lang.Exception -> L34
                r0.f30984a = r9     // Catch: java.lang.Exception -> L34
                r0.f30987d = r4     // Catch: java.lang.Exception -> L34
                java.lang.Object r10 = de.b.a(r10, r0)     // Catch: java.lang.Exception -> L34
                if (r10 != r1) goto L84
                return r1
            L84:
                java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L34
                if (r10 != 0) goto L89
                goto L90
            L89:
                r6 = r10
                goto L90
            L8b:
                java.lang.String r0 = "Error getting Firebase installation id ."
                android.util.Log.w(r3, r0, r10)
            L90:
                u8.t r10 = new u8.t
                r0 = 0
                r10.<init>(r6, r9, r0)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: u8.t.a.a(l8.e, ad.e):java.lang.Object");
        }
    }

    public /* synthetic */ t(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public final String a() {
        return this.f30983b;
    }

    public final String b() {
        return this.f30982a;
    }

    private t(String str, String str2) {
        this.f30982a = str;
        this.f30983b = str2;
    }
}
