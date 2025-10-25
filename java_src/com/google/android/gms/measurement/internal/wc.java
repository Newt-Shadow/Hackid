package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class wc extends o5.a {
    public static final Parcelable.Creator<wc> CREATOR = new xc();

    /* renamed from: a  reason: collision with root package name */
    public final long f8217a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f8218b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8219c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f8220d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8221e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8222f;

    /* renamed from: g  reason: collision with root package name */
    public String f8223g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wc(long j10, byte[] bArr, String str, Bundle bundle, int i10, long j11, String str2) {
        this.f8217a = j10;
        this.f8218b = bArr;
        this.f8219c = str;
        this.f8220d = bundle;
        this.f8221e = i10;
        this.f8222f = j11;
        this.f8223g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f8217a;
        int a10 = o5.c.a(parcel);
        o5.c.n(parcel, 1, j10);
        o5.c.f(parcel, 2, this.f8218b, false);
        o5.c.q(parcel, 3, this.f8219c, false);
        o5.c.e(parcel, 4, this.f8220d, false);
        o5.c.k(parcel, 5, this.f8221e);
        o5.c.n(parcel, 6, this.f8222f);
        o5.c.q(parcel, 7, this.f8223g, false);
        o5.c.b(parcel, a10);
    }
}
