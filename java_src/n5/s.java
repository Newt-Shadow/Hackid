package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class s extends o5.a {
    public static final Parcelable.Creator<s> CREATOR = new c1();

    /* renamed from: a  reason: collision with root package name */
    private final int f26387a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26388b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26389c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26390d;

    /* renamed from: e  reason: collision with root package name */
    private final int f26391e;

    public s(int i10, boolean z10, boolean z11, int i11, int i12) {
        this.f26387a = i10;
        this.f26388b = z10;
        this.f26389c = z11;
        this.f26390d = i11;
        this.f26391e = i12;
    }

    public int g() {
        return this.f26390d;
    }

    public int i() {
        return this.f26391e;
    }

    public boolean l() {
        return this.f26388b;
    }

    public boolean m() {
        return this.f26389c;
    }

    public int n() {
        return this.f26387a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, n());
        o5.c.c(parcel, 2, l());
        o5.c.c(parcel, 3, m());
        o5.c.k(parcel, 4, g());
        o5.c.k(parcel, 5, i());
        o5.c.b(parcel, a10);
    }
}
