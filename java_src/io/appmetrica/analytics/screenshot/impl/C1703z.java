package io.appmetrica.analytics.screenshot.impl;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: io.appmetrica.analytics.screenshot.impl.z  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1703z implements Parcelable {
    public static final C1702y CREATOR = new C1702y();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21461a;

    /* renamed from: b  reason: collision with root package name */
    public final List f21462b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21463c;

    public C1703z(boolean z10, List list, long j10) {
        this.f21461a = z10;
        this.f21462b = list;
        this.f21463c = j10;
    }

    public final long a() {
        return this.f21463c;
    }

    public final boolean b() {
        return this.f21461a;
    }

    public final List c() {
        return this.f21462b;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ParcelableContentObserverCaptorConfig(enabled=" + this.f21461a + ", mediaStoreColumnNames=" + this.f21462b + ", detectWindowSeconds=" + this.f21463c + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f21461a ? (byte) 1 : (byte) 0);
        parcel.writeStringList(this.f21462b);
        parcel.writeLong(this.f21463c);
    }

    public C1703z(f0 f0Var) {
        this(f0Var.b(), f0Var.c(), f0Var.a());
    }
}
