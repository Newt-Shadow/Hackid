package c5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class c extends o5.a {
    public static final Parcelable.Creator<c> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    private final String f5037a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5038b;

    public c(String str, String str2) {
        this.f5037a = str;
        this.f5038b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, this.f5037a, false);
        o5.c.q(parcel, 2, this.f5038b, false);
        o5.c.b(parcel, a10);
    }
}
