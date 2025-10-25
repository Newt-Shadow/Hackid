package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class g extends o5.a {
    public static final Parcelable.Creator<g> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    public final long f7548a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7549b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7550c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(long j10, int i10, long j11) {
        this.f7548a = j10;
        this.f7549b = i10;
        this.f7550c = j11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f7548a;
        int a10 = o5.c.a(parcel);
        o5.c.n(parcel, 1, j10);
        o5.c.k(parcel, 2, this.f7549b);
        o5.c.n(parcel, 3, this.f7550c);
        o5.c.b(parcel, a10);
    }
}
