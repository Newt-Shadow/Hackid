package x8;

import kotlin.jvm.internal.DefaultConstructorMarker;
import sd.a;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    public static final a f32579c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final o f32580a;

    /* renamed from: b  reason: collision with root package name */
    private final o f32581b;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32582a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32583b;

        /* renamed from: d  reason: collision with root package name */
        int f32585d;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32583b = obj;
            this.f32585d |= Integer.MIN_VALUE;
            return j.this.f(this);
        }
    }

    public j(o localOverrideSettings, o remoteSettings) {
        kotlin.jvm.internal.m.e(localOverrideSettings, "localOverrideSettings");
        kotlin.jvm.internal.m.e(remoteSettings, "remoteSettings");
        this.f32580a = localOverrideSettings;
        this.f32581b = remoteSettings;
    }

    private final boolean d(double d10) {
        return 0.0d <= d10 && d10 <= 1.0d;
    }

    private final boolean e(long j10) {
        if (sd.a.D(j10) && sd.a.y(j10)) {
            return true;
        }
        return false;
    }

    public final double a() {
        Double d10 = this.f32580a.d();
        if (d10 != null) {
            double doubleValue = d10.doubleValue();
            if (d(doubleValue)) {
                return doubleValue;
            }
        }
        Double d11 = this.f32581b.d();
        if (d11 != null) {
            double doubleValue2 = d11.doubleValue();
            if (d(doubleValue2)) {
                return doubleValue2;
            }
            return 1.0d;
        }
        return 1.0d;
    }

    public final long b() {
        sd.a c10 = this.f32580a.c();
        if (c10 != null) {
            long H = c10.H();
            if (e(H)) {
                return H;
            }
        }
        sd.a c11 = this.f32581b.c();
        if (c11 != null) {
            long H2 = c11.H();
            if (e(H2)) {
                return H2;
            }
        }
        a.C0309a c0309a = sd.a.f29581b;
        return sd.c.h(30, sd.d.f29592f);
    }

    public final boolean c() {
        Boolean a10 = this.f32580a.a();
        if (a10 != null) {
            return a10.booleanValue();
        }
        Boolean a11 = this.f32581b.a();
        if (a11 != null) {
            return a11.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(ad.e r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof x8.j.b
            if (r0 == 0) goto L13
            r0 = r6
            x8.j$b r0 = (x8.j.b) r0
            int r1 = r0.f32585d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32585d = r1
            goto L18
        L13:
            x8.j$b r0 = new x8.j$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f32583b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32585d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            xc.m.b(r6)
            goto L5b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.f32582a
            x8.j r2 = (x8.j) r2
            xc.m.b(r6)
            goto L4d
        L3c:
            xc.m.b(r6)
            x8.o r6 = r5.f32580a
            r0.f32582a = r5
            r0.f32585d = r4
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r2 = r5
        L4d:
            x8.o r6 = r2.f32581b
            r2 = 0
            r0.f32582a = r2
            r0.f32585d = r3
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L5b
            return r1
        L5b:
            xc.t r6 = xc.t.f32733a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: x8.j.f(ad.e):java.lang.Object");
    }
}
