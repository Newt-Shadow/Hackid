package io.sentry;

import io.sentry.rrweb.d;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class z2 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private Integer f23949a;

    /* renamed from: b  reason: collision with root package name */
    private List f23950b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23951c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f23952a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f23953b;

        static {
            int[] iArr = new int[io.sentry.rrweb.c.values().length];
            f23953b = iArr;
            try {
                iArr[io.sentry.rrweb.c.IncrementalSnapshot.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23953b[io.sentry.rrweb.c.Meta.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23953b[io.sentry.rrweb.c.Custom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f23952a = iArr2;
            try {
                iArr2[d.b.MouseInteraction.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23952a[d.b.TouchMove.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements g1 {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e2, code lost:
            if (r12.equals("breadcrumb") == false) goto L43;
         */
        @Override // io.sentry.g1
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.z2 a(io.sentry.l2 r17, io.sentry.ILogger r18) {
            /*
                Method dump skipped, instructions count: 438
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.z2.b.a(io.sentry.l2, io.sentry.ILogger):io.sentry.z2");
        }
    }

    public List a() {
        return this.f23950b;
    }

    public void b(List list) {
        this.f23950b = list;
    }

    public void c(Integer num) {
        this.f23949a = num;
    }

    public void d(Map map) {
        this.f23951c = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z2.class != obj.getClass()) {
            return false;
        }
        z2 z2Var = (z2) obj;
        if (io.sentry.util.q.a(this.f23949a, z2Var.f23949a) && io.sentry.util.q.a(this.f23950b, z2Var.f23950b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23949a, this.f23950b);
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23949a != null) {
            m2Var.k("segment_id").f(this.f23949a);
        }
        Map map = this.f23951c;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23951c.get(str));
            }
        }
        m2Var.r();
        m2Var.p(true);
        if (this.f23949a != null) {
            m2Var.e("\n");
        }
        List list = this.f23950b;
        if (list != null) {
            m2Var.g(iLogger, list);
        }
        m2Var.p(false);
    }
}
