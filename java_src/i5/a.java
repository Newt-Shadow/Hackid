package i5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class a extends o5.a {
    public static final Parcelable.Creator<a> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f17256a;

    /* renamed from: b  reason: collision with root package name */
    private int f17257b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f17258c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i10, int i11, Bundle bundle) {
        this.f17256a = i10;
        this.f17257b = i11;
        this.f17258c = bundle;
    }

    public int g() {
        return this.f17257b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f17256a);
        o5.c.k(parcel, 2, g());
        o5.c.e(parcel, 3, this.f17258c, false);
        o5.c.b(parcel, a10);
    }
}
