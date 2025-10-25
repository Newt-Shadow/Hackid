package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class LocationResult extends o5.a implements ReflectedParcelable {

    /* renamed from: a  reason: collision with root package name */
    private final List f7197a;

    /* renamed from: b  reason: collision with root package name */
    static final List f7196b = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationResult(List list) {
        this.f7197a = list;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.f7197a.size() != this.f7197a.size()) {
            return false;
        }
        Iterator it = locationResult.f7197a.iterator();
        Iterator it2 = this.f7197a.iterator();
        while (it.hasNext()) {
            if (((Location) it2.next()).getTime() != ((Location) it.next()).getTime()) {
                return false;
            }
        }
        return true;
    }

    public Location g() {
        int size = this.f7197a.size();
        if (size == 0) {
            return null;
        }
        return (Location) this.f7197a.get(size - 1);
    }

    public int hashCode() {
        int i10 = 17;
        for (Location location : this.f7197a) {
            long time = location.getTime();
            i10 = (i10 * 31) + ((int) (time ^ (time >>> 32)));
        }
        return i10;
    }

    public List i() {
        return this.f7197a;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f7197a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 27);
        sb2.append("LocationResult[locations: ");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.t(parcel, 1, i(), false);
        o5.c.b(parcel, a10);
    }
}
