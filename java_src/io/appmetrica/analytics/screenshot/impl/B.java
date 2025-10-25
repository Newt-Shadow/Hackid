package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class B implements Parcelable {
    public static final A CREATOR = new A();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21363a;

    /* renamed from: b  reason: collision with root package name */
    public final D f21364b;

    public B(boolean z10, D d10) {
        this.f21363a = z10;
        this.f21364b = d10;
    }

    public final D a() {
        return this.f21364b;
    }

    public final boolean b() {
        return this.f21363a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ParcelableRemoteScreenshotConfig(enabled=" + this.f21363a + ", config=" + this.f21364b + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f21363a ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f21364b, i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public B(io.appmetrica.analytics.screenshot.impl.g0 r3) {
        /*
            r2 = this;
            boolean r0 = r3.b()
            io.appmetrica.analytics.screenshot.impl.h0 r3 = r3.a()
            if (r3 == 0) goto L10
            io.appmetrica.analytics.screenshot.impl.D r1 = new io.appmetrica.analytics.screenshot.impl.D
            r1.<init>(r3)
            goto L11
        L10:
            r1 = 0
        L11:
            r2.<init>(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.screenshot.impl.B.<init>(io.appmetrica.analytics.screenshot.impl.g0):void");
    }
}
