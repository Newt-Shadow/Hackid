package io.appmetrica.analytics.screenshot.impl;
/* renamed from: io.appmetrica.analytics.screenshot.impl.l  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1690l {

    /* renamed from: a  reason: collision with root package name */
    public final C1687i f21442a;

    /* renamed from: b  reason: collision with root package name */
    public final C1691m f21443b;

    /* renamed from: c  reason: collision with root package name */
    public final C1688j f21444c;

    public C1690l(C1687i c1687i, C1691m c1691m, C1688j c1688j) {
        this.f21442a = c1687i;
        this.f21443b = c1691m;
        this.f21444c = c1688j;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!kotlin.jvm.internal.m.a(C1690l.class, cls)) {
            return false;
        }
        if (obj != null) {
            C1690l c1690l = (C1690l) obj;
            if (kotlin.jvm.internal.m.a(this.f21442a, c1690l.f21442a) && kotlin.jvm.internal.m.a(this.f21443b, c1690l.f21443b) && kotlin.jvm.internal.m.a(this.f21444c, c1690l.f21444c)) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.screenshot.impl.config.client.model.ClientSideScreenshotConfig");
    }

    public final int hashCode() {
        int i10;
        int i11;
        C1687i c1687i = this.f21442a;
        int i12 = 0;
        if (c1687i != null) {
            i10 = c1687i.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        C1691m c1691m = this.f21443b;
        if (c1691m != null) {
            i11 = c1691m.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        C1688j c1688j = this.f21444c;
        if (c1688j != null) {
            i12 = c1688j.hashCode();
        }
        return i14 + i12;
    }

    public final String toString() {
        return "ClientSideScreenshotConfig(apiCaptorConfig=" + this.f21442a + ", serviceCaptorConfig=" + this.f21443b + ", contentObserverCaptorConfig=" + this.f21444c + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1690l(io.appmetrica.analytics.screenshot.impl.D r5) {
        /*
            r4 = this;
            io.appmetrica.analytics.screenshot.impl.x r0 = r5.a()
            r1 = 0
            if (r0 == 0) goto Ld
            io.appmetrica.analytics.screenshot.impl.i r2 = new io.appmetrica.analytics.screenshot.impl.i
            r2.<init>(r0)
            goto Le
        Ld:
            r2 = r1
        Le:
            io.appmetrica.analytics.screenshot.impl.F r0 = r5.c()
            if (r0 == 0) goto L1a
            io.appmetrica.analytics.screenshot.impl.m r3 = new io.appmetrica.analytics.screenshot.impl.m
            r3.<init>(r0)
            goto L1b
        L1a:
            r3 = r1
        L1b:
            io.appmetrica.analytics.screenshot.impl.z r5 = r5.b()
            if (r5 == 0) goto L26
            io.appmetrica.analytics.screenshot.impl.j r1 = new io.appmetrica.analytics.screenshot.impl.j
            r1.<init>(r5)
        L26:
            r4.<init>(r2, r3, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.screenshot.impl.C1690l.<init>(io.appmetrica.analytics.screenshot.impl.D):void");
    }
}
