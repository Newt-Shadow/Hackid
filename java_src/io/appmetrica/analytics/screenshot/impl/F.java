package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class F implements Parcelable {
    public static final E CREATOR = new E();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21368a;

    /* renamed from: b  reason: collision with root package name */
    public final long f21369b;

    public F(boolean z10, long j10) {
        this.f21368a = z10;
        this.f21369b = j10;
    }

    public final long a() {
        return this.f21369b;
    }

    public final boolean b() {
        return this.f21368a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ParcelableServiceCaptorConfig(enabled=" + this.f21368a + ", delaySeconds=" + this.f21369b + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f21368a ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f21369b);
    }

    public F(i0 i0Var) {
        this(i0Var.b(), i0Var.a());
    }
}
