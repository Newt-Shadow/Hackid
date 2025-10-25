package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: io.appmetrica.analytics.screenshot.impl.x  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1701x implements Parcelable {
    public static final C1700w CREATOR = new C1700w();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21460a;

    public C1701x(boolean z10) {
        this.f21460a = z10;
    }

    public final boolean a() {
        return this.f21460a;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ParcelableApiCaptorConfig(enabled=" + this.f21460a + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f21460a ? (byte) 1 : (byte) 0);
    }

    public C1701x(e0 e0Var) {
        this(e0Var.a());
    }
}
