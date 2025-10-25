package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import n5.o;
/* loaded from: classes.dex */
public final class LocationRequest extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    int f7187a;

    /* renamed from: b  reason: collision with root package name */
    long f7188b;

    /* renamed from: c  reason: collision with root package name */
    long f7189c;

    /* renamed from: d  reason: collision with root package name */
    boolean f7190d;

    /* renamed from: e  reason: collision with root package name */
    long f7191e;

    /* renamed from: f  reason: collision with root package name */
    int f7192f;

    /* renamed from: g  reason: collision with root package name */
    float f7193g;

    /* renamed from: h  reason: collision with root package name */
    long f7194h;

    /* renamed from: i  reason: collision with root package name */
    boolean f7195i;

    @Deprecated
    public LocationRequest() {
        this.f7187a = 102;
        this.f7188b = 3600000L;
        this.f7189c = 600000L;
        this.f7190d = false;
        this.f7191e = Long.MAX_VALUE;
        this.f7192f = Integer.MAX_VALUE;
        this.f7193g = 0.0f;
        this.f7194h = 0L;
        this.f7195i = false;
    }

    public static LocationRequest g() {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.n(true);
        return locationRequest;
    }

    private static void o(long j10) {
        if (j10 >= 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(38);
        sb2.append("invalid interval: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            if (this.f7187a == locationRequest.f7187a && this.f7188b == locationRequest.f7188b && this.f7189c == locationRequest.f7189c && this.f7190d == locationRequest.f7190d && this.f7191e == locationRequest.f7191e && this.f7192f == locationRequest.f7192f && this.f7193g == locationRequest.f7193g && i() == locationRequest.i() && this.f7195i == locationRequest.f7195i) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return o.b(Integer.valueOf(this.f7187a), Long.valueOf(this.f7188b), Float.valueOf(this.f7193g), Long.valueOf(this.f7194h));
    }

    public long i() {
        long j10 = this.f7194h;
        long j11 = this.f7188b;
        return j10 < j11 ? j11 : j10;
    }

    public LocationRequest l(long j10) {
        o(j10);
        this.f7188b = j10;
        if (!this.f7190d) {
            this.f7189c = (long) (j10 / 6.0d);
        }
        return this;
    }

    public LocationRequest m(int i10) {
        if (i10 != 100 && i10 != 102 && i10 != 104 && i10 != 105) {
            StringBuilder sb2 = new StringBuilder(28);
            sb2.append("invalid quality: ");
            sb2.append(i10);
            throw new IllegalArgumentException(sb2.toString());
        }
        this.f7187a = i10;
        return this;
    }

    public LocationRequest n(boolean z10) {
        this.f7195i = z10;
        return this;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request[");
        int i10 = this.f7187a;
        if (i10 != 100) {
            if (i10 != 102) {
                if (i10 != 104) {
                    if (i10 != 105) {
                        str = "???";
                    } else {
                        str = "PRIORITY_NO_POWER";
                    }
                } else {
                    str = "PRIORITY_LOW_POWER";
                }
            } else {
                str = "PRIORITY_BALANCED_POWER_ACCURACY";
            }
        } else {
            str = "PRIORITY_HIGH_ACCURACY";
        }
        sb2.append(str);
        if (this.f7187a != 105) {
            sb2.append(" requested=");
            sb2.append(this.f7188b);
            sb2.append("ms");
        }
        sb2.append(" fastest=");
        sb2.append(this.f7189c);
        sb2.append("ms");
        if (this.f7194h > this.f7188b) {
            sb2.append(" maxWait=");
            sb2.append(this.f7194h);
            sb2.append("ms");
        }
        if (this.f7193g > 0.0f) {
            sb2.append(" smallestDisplacement=");
            sb2.append(this.f7193g);
            sb2.append("m");
        }
        long j10 = this.f7191e;
        if (j10 != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb2.append(" expireIn=");
            sb2.append(j10 - elapsedRealtime);
            sb2.append("ms");
        }
        if (this.f7192f != Integer.MAX_VALUE) {
            sb2.append(" num=");
            sb2.append(this.f7192f);
        }
        sb2.append(']');
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f7187a);
        o5.c.n(parcel, 2, this.f7188b);
        o5.c.n(parcel, 3, this.f7189c);
        o5.c.c(parcel, 4, this.f7190d);
        o5.c.n(parcel, 5, this.f7191e);
        o5.c.k(parcel, 6, this.f7192f);
        o5.c.h(parcel, 7, this.f7193g);
        o5.c.n(parcel, 8, this.f7194h);
        o5.c.c(parcel, 9, this.f7195i);
        o5.c.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationRequest(int i10, long j10, long j11, boolean z10, long j12, int i11, float f10, long j13, boolean z11) {
        this.f7187a = i10;
        this.f7188b = j10;
        this.f7189c = j11;
        this.f7190d = z10;
        this.f7191e = j12;
        this.f7192f = i11;
        this.f7193g = f10;
        this.f7194h = j13;
        this.f7195i = z11;
    }
}
