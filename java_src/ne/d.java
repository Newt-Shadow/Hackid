package ne;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: n  reason: collision with root package name */
    public static final b f26611n = new b(null);

    /* renamed from: o  reason: collision with root package name */
    public static final d f26612o = new a().d().a();

    /* renamed from: p  reason: collision with root package name */
    public static final d f26613p = new a().e().c(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f26614a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26615b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26616c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26617d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f26618e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f26619f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f26620g;

    /* renamed from: h  reason: collision with root package name */
    private final int f26621h;

    /* renamed from: i  reason: collision with root package name */
    private final int f26622i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f26623j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f26624k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f26625l;

    /* renamed from: m  reason: collision with root package name */
    private String f26626m;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f26627a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f26628b;

        /* renamed from: c  reason: collision with root package name */
        private int f26629c = -1;

        /* renamed from: d  reason: collision with root package name */
        private int f26630d = -1;

        /* renamed from: e  reason: collision with root package name */
        private int f26631e = -1;

        /* renamed from: f  reason: collision with root package name */
        private boolean f26632f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f26633g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f26634h;

        private final int b(long j10) {
            if (j10 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j10;
        }

        public final d a() {
            return new d(this.f26627a, this.f26628b, this.f26629c, -1, false, false, false, this.f26630d, this.f26631e, this.f26632f, this.f26633g, this.f26634h, null, null);
        }

        public final a c(int i10, TimeUnit timeUnit) {
            boolean z10;
            kotlin.jvm.internal.m.e(timeUnit, "timeUnit");
            if (i10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                this.f26630d = b(timeUnit.toSeconds(i10));
                return this;
            }
            throw new IllegalArgumentException(kotlin.jvm.internal.m.l("maxStale < 0: ", Integer.valueOf(i10)).toString());
        }

        public final a d() {
            this.f26627a = true;
            return this;
        }

        public final a e() {
            this.f26632f = true;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(String str, String str2, int i10) {
            boolean M;
            int length = str.length();
            while (i10 < length) {
                int i11 = i10 + 1;
                M = rd.b0.M(str2, str.charAt(i10), false, 2, null);
                if (M) {
                    return i10;
                }
                i10 = i11;
            }
            return str.length();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ne.d b(ne.s r31) {
            /*
                Method dump skipped, instructions count: 408
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ne.d.b.b(ne.s):ne.d");
        }
    }

    public /* synthetic */ d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, i10, i11, z12, z13, z14, i12, i13, z15, z16, z17, str);
    }

    public final boolean a() {
        return this.f26625l;
    }

    public final boolean b() {
        return this.f26618e;
    }

    public final boolean c() {
        return this.f26619f;
    }

    public final int d() {
        return this.f26616c;
    }

    public final int e() {
        return this.f26621h;
    }

    public final int f() {
        return this.f26622i;
    }

    public final boolean g() {
        return this.f26620g;
    }

    public final boolean h() {
        return this.f26614a;
    }

    public final boolean i() {
        return this.f26615b;
    }

    public final boolean j() {
        return this.f26624k;
    }

    public final boolean k() {
        return this.f26623j;
    }

    public final int l() {
        return this.f26617d;
    }

    public String toString() {
        boolean z10;
        String str = this.f26626m;
        if (str == null) {
            StringBuilder sb2 = new StringBuilder();
            if (h()) {
                sb2.append("no-cache, ");
            }
            if (i()) {
                sb2.append("no-store, ");
            }
            if (d() != -1) {
                sb2.append("max-age=");
                sb2.append(d());
                sb2.append(", ");
            }
            if (l() != -1) {
                sb2.append("s-maxage=");
                sb2.append(l());
                sb2.append(", ");
            }
            if (b()) {
                sb2.append("private, ");
            }
            if (c()) {
                sb2.append("public, ");
            }
            if (g()) {
                sb2.append("must-revalidate, ");
            }
            if (e() != -1) {
                sb2.append("max-stale=");
                sb2.append(e());
                sb2.append(", ");
            }
            if (f() != -1) {
                sb2.append("min-fresh=");
                sb2.append(f());
                sb2.append(", ");
            }
            if (k()) {
                sb2.append("only-if-cached, ");
            }
            if (j()) {
                sb2.append("no-transform, ");
            }
            if (a()) {
                sb2.append("immutable, ");
            }
            if (sb2.length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                return "";
            }
            sb2.delete(sb2.length() - 2, sb2.length());
            String sb3 = sb2.toString();
            kotlin.jvm.internal.m.d(sb3, "StringBuilder().apply(builderAction).toString()");
            this.f26626m = sb3;
            return sb3;
        }
        return str;
    }

    private d(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.f26614a = z10;
        this.f26615b = z11;
        this.f26616c = i10;
        this.f26617d = i11;
        this.f26618e = z12;
        this.f26619f = z13;
        this.f26620g = z14;
        this.f26621h = i12;
        this.f26622i = i13;
        this.f26623j = z15;
        this.f26624k = z16;
        this.f26625l = z17;
        this.f26626m = str;
    }
}
