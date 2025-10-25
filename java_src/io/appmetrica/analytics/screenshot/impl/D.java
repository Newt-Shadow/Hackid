package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class D implements Parcelable {
    public static final C CREATOR = new C();

    /* renamed from: a  reason: collision with root package name */
    public final C1701x f21365a;

    /* renamed from: b  reason: collision with root package name */
    public final F f21366b;

    /* renamed from: c  reason: collision with root package name */
    public final C1703z f21367c;

    public D(C1701x c1701x, F f10, C1703z c1703z) {
        this.f21365a = c1701x;
        this.f21366b = f10;
        this.f21367c = c1703z;
    }

    public final C1701x a() {
        return this.f21365a;
    }

    public final C1703z b() {
        return this.f21367c;
    }

    public final F c() {
        return this.f21366b;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ParcelableScreenshotConfig(apiCaptorConfig=" + this.f21365a + ", serviceCaptorConfig=" + this.f21366b + ", contentObserverCaptorConfig=" + this.f21367c + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f21365a, i10);
        parcel.writeParcelable(this.f21366b, i10);
        parcel.writeParcelable(this.f21367c, i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public D(io.appmetrica.analytics.screenshot.impl.h0 r5) {
        /*
            r4 = this;
            io.appmetrica.analytics.screenshot.impl.e0 r0 = r5.a()
            r1 = 0
            if (r0 == 0) goto Ld
            io.appmetrica.analytics.screenshot.impl.x r2 = new io.appmetrica.analytics.screenshot.impl.x
            r2.<init>(r0)
            goto Le
        Ld:
            r2 = r1
        Le:
            io.appmetrica.analytics.screenshot.impl.i0 r0 = r5.c()
            if (r0 == 0) goto L1a
            io.appmetrica.analytics.screenshot.impl.F r3 = new io.appmetrica.analytics.screenshot.impl.F
            r3.<init>(r0)
            goto L1b
        L1a:
            r3 = r1
        L1b:
            io.appmetrica.analytics.screenshot.impl.f0 r5 = r5.b()
            if (r5 == 0) goto L26
            io.appmetrica.analytics.screenshot.impl.z r1 = new io.appmetrica.analytics.screenshot.impl.z
            r1.<init>(r5)
        L26:
            r4.<init>(r2, r3, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.screenshot.impl.D.<init>(io.appmetrica.analytics.screenshot.impl.h0):void");
    }
}
