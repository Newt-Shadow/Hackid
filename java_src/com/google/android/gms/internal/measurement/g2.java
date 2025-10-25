package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class g2 extends o5.a {
    public static final Parcelable.Creator<g2> CREATOR = new h2();

    /* renamed from: a  reason: collision with root package name */
    public final long f6405a;

    /* renamed from: b  reason: collision with root package name */
    public final long f6406b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6407c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f6408d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6409e;

    public g2(long j10, long j11, boolean z10, Bundle bundle, String str) {
        this.f6405a = j10;
        this.f6406b = j11;
        this.f6407c = z10;
        this.f6408d = bundle;
        this.f6409e = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f6405a;
        int a10 = o5.c.a(parcel);
        o5.c.n(parcel, 1, j10);
        o5.c.n(parcel, 2, this.f6406b);
        o5.c.c(parcel, 3, this.f6407c);
        o5.c.e(parcel, 7, this.f6408d, false);
        o5.c.q(parcel, 8, this.f6409e, false);
        o5.c.b(parcel, a10);
    }
}
