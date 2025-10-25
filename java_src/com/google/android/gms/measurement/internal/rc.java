package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class rc extends o5.a {
    public static final Parcelable.Creator<rc> CREATOR = new sc();

    /* renamed from: a  reason: collision with root package name */
    public final String f7974a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7975b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7976c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rc(String str, long j10, int i10) {
        this.f7974a = str;
        this.f7975b = j10;
        this.f7976c = i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f7974a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, str, false);
        o5.c.n(parcel, 2, this.f7975b);
        o5.c.k(parcel, 3, this.f7976c);
        o5.c.b(parcel, a10);
    }
}
