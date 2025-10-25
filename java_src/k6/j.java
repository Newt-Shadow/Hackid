package k6;

import android.os.Parcel;
import android.os.Parcelable;
import n5.o0;
/* loaded from: classes.dex */
public final class j extends o5.a {
    public static final Parcelable.Creator<j> CREATOR = new k();

    /* renamed from: a  reason: collision with root package name */
    final int f24776a;

    /* renamed from: b  reason: collision with root package name */
    final o0 f24777b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(int i10, o0 o0Var) {
        this.f24776a = i10;
        this.f24777b = o0Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f24776a);
        o5.c.p(parcel, 2, this.f24777b, i10, false);
        o5.c.b(parcel, a10);
    }
}
