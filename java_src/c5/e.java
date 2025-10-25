package c5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class e extends o5.a {
    public static final Parcelable.Creator<e> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    private final String f5039a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5040b;

    public e(String str, int i10) {
        this.f5039a = str;
        this.f5040b = i10;
    }

    public final int g() {
        return this.f5040b;
    }

    public final String i() {
        return this.f5039a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, this.f5039a, false);
        o5.c.k(parcel, 2, this.f5040b);
        o5.c.b(parcel, a10);
    }
}
