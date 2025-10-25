package l5;

import android.os.Parcel;
import android.os.Parcelable;
import io.flutter.plugins.firebase.analytics.Constants;
import n5.o;
/* loaded from: classes.dex */
public class d extends o5.a {
    public static final Parcelable.Creator<d> CREATOR = new r();

    /* renamed from: a  reason: collision with root package name */
    private final String f25276a;

    /* renamed from: b  reason: collision with root package name */
    private final int f25277b;

    /* renamed from: c  reason: collision with root package name */
    private final long f25278c;

    public d(String str, int i10, long j10) {
        this.f25276a = str;
        this.f25277b = i10;
        this.f25278c = j10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (((g() != null && g().equals(dVar.g())) || (g() == null && dVar.g() == null)) && i() == dVar.i()) {
                return true;
            }
        }
        return false;
    }

    public String g() {
        return this.f25276a;
    }

    public final int hashCode() {
        return n5.o.b(g(), Long.valueOf(i()));
    }

    public long i() {
        long j10 = this.f25278c;
        return j10 == -1 ? this.f25277b : j10;
    }

    public final String toString() {
        o.a c10 = n5.o.c(this);
        c10.a(Constants.NAME, g());
        c10.a("version", Long.valueOf(i()));
        return c10.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, g(), false);
        o5.c.k(parcel, 2, this.f25277b);
        o5.c.n(parcel, 3, i());
        o5.c.b(parcel, a10);
    }

    public d(String str, long j10) {
        this.f25276a = str;
        this.f25278c = j10;
        this.f25277b = -1;
    }
}
