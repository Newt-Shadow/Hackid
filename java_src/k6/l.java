package k6;

import android.os.Parcel;
import android.os.Parcelable;
import n5.q0;
/* loaded from: classes.dex */
public final class l extends o5.a {
    public static final Parcelable.Creator<l> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    final int f24778a;

    /* renamed from: b  reason: collision with root package name */
    private final l5.b f24779b;

    /* renamed from: c  reason: collision with root package name */
    private final q0 f24780c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(int i10, l5.b bVar, q0 q0Var) {
        this.f24778a = i10;
        this.f24779b = bVar;
        this.f24780c = q0Var;
    }

    public final l5.b g() {
        return this.f24779b;
    }

    public final q0 i() {
        return this.f24780c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f24778a);
        o5.c.p(parcel, 2, this.f24779b, i10, false);
        o5.c.p(parcel, 3, this.f24780c, i10, false);
        o5.c.b(parcel, a10);
    }
}
