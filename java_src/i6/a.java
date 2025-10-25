package i6;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class a extends o5.a {
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final Bundle f17280a;

    public a(Bundle bundle) {
        this.f17280a = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = this.f17280a;
        int a10 = o5.c.a(parcel);
        o5.c.e(parcel, 1, bundle, false);
        o5.c.b(parcel, a10);
    }
}
