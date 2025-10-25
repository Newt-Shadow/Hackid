package n5;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class u extends o5.a {
    public static final Parcelable.Creator<u> CREATOR = new z();

    /* renamed from: a  reason: collision with root package name */
    private final int f26400a;

    /* renamed from: b  reason: collision with root package name */
    private List f26401b;

    public u(int i10, List list) {
        this.f26400a = i10;
        this.f26401b = list;
    }

    public final int g() {
        return this.f26400a;
    }

    public final List i() {
        return this.f26401b;
    }

    public final void l(n nVar) {
        if (this.f26401b == null) {
            this.f26401b = new ArrayList();
        }
        this.f26401b.add(nVar);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f26400a);
        o5.c.t(parcel, 2, this.f26401b, false);
        o5.c.b(parcel, a10);
    }
}
