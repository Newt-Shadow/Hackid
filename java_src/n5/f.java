package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class f extends o5.a {
    public static final Parcelable.Creator<f> CREATOR = new l1();

    /* renamed from: a  reason: collision with root package name */
    private final s f26292a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26293b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26294c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f26295d;

    /* renamed from: e  reason: collision with root package name */
    private final int f26296e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f26297f;

    public f(s sVar, boolean z10, boolean z11, int[] iArr, int i10, int[] iArr2) {
        this.f26292a = sVar;
        this.f26293b = z10;
        this.f26294c = z11;
        this.f26295d = iArr;
        this.f26296e = i10;
        this.f26297f = iArr2;
    }

    public int g() {
        return this.f26296e;
    }

    public int[] i() {
        return this.f26295d;
    }

    public int[] l() {
        return this.f26297f;
    }

    public boolean m() {
        return this.f26293b;
    }

    public boolean n() {
        return this.f26294c;
    }

    public final s o() {
        return this.f26292a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.p(parcel, 1, this.f26292a, i10, false);
        o5.c.c(parcel, 2, m());
        o5.c.c(parcel, 3, n());
        o5.c.l(parcel, 4, i(), false);
        o5.c.k(parcel, 5, g());
        o5.c.l(parcel, 6, l(), false);
        o5.c.b(parcel, a10);
    }
}
