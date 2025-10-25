package n5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j1 extends o5.a {
    public static final Parcelable.Creator<j1> CREATOR = new k1();

    /* renamed from: a  reason: collision with root package name */
    Bundle f26333a;

    /* renamed from: b  reason: collision with root package name */
    l5.d[] f26334b;

    /* renamed from: c  reason: collision with root package name */
    int f26335c;

    /* renamed from: d  reason: collision with root package name */
    f f26336d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(Bundle bundle, l5.d[] dVarArr, int i10, f fVar) {
        this.f26333a = bundle;
        this.f26334b = dVarArr;
        this.f26335c = i10;
        this.f26336d = fVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.e(parcel, 1, this.f26333a, false);
        o5.c.s(parcel, 2, this.f26334b, i10, false);
        o5.c.k(parcel, 3, this.f26335c);
        o5.c.p(parcel, 4, this.f26336d, i10, false);
        o5.c.b(parcel, a10);
    }
}
