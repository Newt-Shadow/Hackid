package d6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class p extends o5.a {

    /* renamed from: a  reason: collision with root package name */
    final LocationRequest f15031a;

    /* renamed from: b  reason: collision with root package name */
    final List f15032b;

    /* renamed from: c  reason: collision with root package name */
    final String f15033c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f15034d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f15035e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f15036f;

    /* renamed from: g  reason: collision with root package name */
    final String f15037g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f15038h;

    /* renamed from: i  reason: collision with root package name */
    boolean f15039i;

    /* renamed from: j  reason: collision with root package name */
    String f15040j;

    /* renamed from: k  reason: collision with root package name */
    long f15041k;

    /* renamed from: l  reason: collision with root package name */
    static final List f15030l = Collections.emptyList();
    public static final Parcelable.Creator<p> CREATOR = new q();

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(LocationRequest locationRequest, List list, String str, boolean z10, boolean z11, boolean z12, String str2, boolean z13, boolean z14, String str3, long j10) {
        this.f15031a = locationRequest;
        this.f15032b = list;
        this.f15033c = str;
        this.f15034d = z10;
        this.f15035e = z11;
        this.f15036f = z12;
        this.f15037g = str2;
        this.f15038h = z13;
        this.f15039i = z14;
        this.f15040j = str3;
        this.f15041k = j10;
    }

    public static p g(String str, LocationRequest locationRequest) {
        return new p(locationRequest, f15030l, null, false, false, false, null, false, false, null, Long.MAX_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (n5.o.a(this.f15031a, pVar.f15031a) && n5.o.a(this.f15032b, pVar.f15032b) && n5.o.a(this.f15033c, pVar.f15033c) && this.f15034d == pVar.f15034d && this.f15035e == pVar.f15035e && this.f15036f == pVar.f15036f && n5.o.a(this.f15037g, pVar.f15037g) && this.f15038h == pVar.f15038h && this.f15039i == pVar.f15039i && n5.o.a(this.f15040j, pVar.f15040j)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f15031a.hashCode();
    }

    public final p i(String str) {
        this.f15040j = str;
        return this;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f15031a);
        if (this.f15033c != null) {
            sb2.append(" tag=");
            sb2.append(this.f15033c);
        }
        if (this.f15037g != null) {
            sb2.append(" moduleId=");
            sb2.append(this.f15037g);
        }
        if (this.f15040j != null) {
            sb2.append(" contextAttributionTag=");
            sb2.append(this.f15040j);
        }
        sb2.append(" hideAppOps=");
        sb2.append(this.f15034d);
        sb2.append(" clients=");
        sb2.append(this.f15032b);
        sb2.append(" forceCoarseLocation=");
        sb2.append(this.f15035e);
        if (this.f15036f) {
            sb2.append(" exemptFromBackgroundThrottle");
        }
        if (this.f15038h) {
            sb2.append(" locationSettingsIgnored");
        }
        if (this.f15039i) {
            sb2.append(" inaccurateLocationsDelayed");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.p(parcel, 1, this.f15031a, i10, false);
        o5.c.t(parcel, 5, this.f15032b, false);
        o5.c.q(parcel, 6, this.f15033c, false);
        o5.c.c(parcel, 7, this.f15034d);
        o5.c.c(parcel, 8, this.f15035e);
        o5.c.c(parcel, 9, this.f15036f);
        o5.c.q(parcel, 10, this.f15037g, false);
        o5.c.c(parcel, 11, this.f15038h);
        o5.c.c(parcel, 12, this.f15039i);
        o5.c.q(parcel, 13, this.f15040j, false);
        o5.c.n(parcel, 14, this.f15041k);
        o5.c.b(parcel, a10);
    }
}
