package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class d extends o5.a {
    public static final Parcelable.Creator<d> CREATOR = new y();

    /* renamed from: a  reason: collision with root package name */
    public final int f26266a;

    /* renamed from: b  reason: collision with root package name */
    public final String f26267b;

    public d(int i10, String str) {
        this.f26266a = i10;
        this.f26267b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (dVar.f26266a == this.f26266a && o.a(dVar.f26267b, this.f26267b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f26266a;
    }

    public final String toString() {
        return this.f26266a + ":" + this.f26267b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f26266a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.q(parcel, 2, this.f26267b, false);
        o5.c.b(parcel, a10);
    }
}
