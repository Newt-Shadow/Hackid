package g6;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class t extends o5.a {
    public static final Parcelable.Creator<t> CREATOR = new u();

    /* renamed from: a  reason: collision with root package name */
    public final int f16282a;

    /* renamed from: b  reason: collision with root package name */
    public final int f16283b;

    /* renamed from: c  reason: collision with root package name */
    public final long f16284c;

    /* renamed from: d  reason: collision with root package name */
    public final long f16285d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(int i10, int i11, long j10, long j11) {
        this.f16282a = i10;
        this.f16283b = i11;
        this.f16284c = j10;
        this.f16285d = j11;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f16282a == tVar.f16282a && this.f16283b == tVar.f16283b && this.f16284c == tVar.f16284c && this.f16285d == tVar.f16285d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return n5.o.b(Integer.valueOf(this.f16283b), Integer.valueOf(this.f16282a), Long.valueOf(this.f16285d), Long.valueOf(this.f16284c));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f16282a + " Cell status: " + this.f16283b + " elapsed time NS: " + this.f16285d + " system time ms: " + this.f16284c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f16282a);
        o5.c.k(parcel, 2, this.f16283b);
        o5.c.n(parcel, 3, this.f16284c);
        o5.c.n(parcel, 4, this.f16285d);
        o5.c.b(parcel, a10);
    }
}
