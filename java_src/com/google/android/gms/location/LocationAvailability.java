package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import g6.t;
import java.util.Arrays;
import n5.o;
/* loaded from: classes.dex */
public final class LocationAvailability extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    int f7182a;

    /* renamed from: b  reason: collision with root package name */
    int f7183b;

    /* renamed from: c  reason: collision with root package name */
    long f7184c;

    /* renamed from: d  reason: collision with root package name */
    int f7185d;

    /* renamed from: e  reason: collision with root package name */
    t[] f7186e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationAvailability(int i10, int i11, int i12, long j10, t[] tVarArr) {
        this.f7185d = i10;
        this.f7182a = i11;
        this.f7183b = i12;
        this.f7184c = j10;
        this.f7186e = tVarArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocationAvailability) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            if (this.f7182a == locationAvailability.f7182a && this.f7183b == locationAvailability.f7183b && this.f7184c == locationAvailability.f7184c && this.f7185d == locationAvailability.f7185d && Arrays.equals(this.f7186e, locationAvailability.f7186e)) {
                return true;
            }
        }
        return false;
    }

    public boolean g() {
        return this.f7185d < 1000;
    }

    public int hashCode() {
        return o.b(Integer.valueOf(this.f7185d), Integer.valueOf(this.f7182a), Integer.valueOf(this.f7183b), Long.valueOf(this.f7184c), this.f7186e);
    }

    public String toString() {
        boolean g10 = g();
        StringBuilder sb2 = new StringBuilder(48);
        sb2.append("LocationAvailability[isLocationAvailable: ");
        sb2.append(g10);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f7182a);
        o5.c.k(parcel, 2, this.f7183b);
        o5.c.n(parcel, 3, this.f7184c);
        o5.c.k(parcel, 4, this.f7185d);
        o5.c.s(parcel, 5, this.f7186e, i10, false);
        o5.c.b(parcel, a10);
    }
}
