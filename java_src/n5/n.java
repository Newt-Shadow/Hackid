package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class n extends o5.a {
    public static final Parcelable.Creator<n> CREATOR = new j0();

    /* renamed from: a  reason: collision with root package name */
    private final int f26341a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26342b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26343c;

    /* renamed from: d  reason: collision with root package name */
    private final long f26344d;

    /* renamed from: e  reason: collision with root package name */
    private final long f26345e;

    /* renamed from: f  reason: collision with root package name */
    private final String f26346f;

    /* renamed from: g  reason: collision with root package name */
    private final String f26347g;

    /* renamed from: h  reason: collision with root package name */
    private final int f26348h;

    /* renamed from: i  reason: collision with root package name */
    private final int f26349i;

    public n(int i10, int i11, int i12, long j10, long j11, String str, String str2, int i13, int i14) {
        this.f26341a = i10;
        this.f26342b = i11;
        this.f26343c = i12;
        this.f26344d = j10;
        this.f26345e = j11;
        this.f26346f = str;
        this.f26347g = str2;
        this.f26348h = i13;
        this.f26349i = i14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f26341a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.k(parcel, 2, this.f26342b);
        o5.c.k(parcel, 3, this.f26343c);
        o5.c.n(parcel, 4, this.f26344d);
        o5.c.n(parcel, 5, this.f26345e);
        o5.c.q(parcel, 6, this.f26346f, false);
        o5.c.q(parcel, 7, this.f26347g, false);
        o5.c.k(parcel, 8, this.f26348h);
        o5.c.k(parcel, 9, this.f26349i);
        o5.c.b(parcel, a10);
    }
}
