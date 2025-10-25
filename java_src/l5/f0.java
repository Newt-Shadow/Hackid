package l5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class f0 extends o5.a {
    public static final Parcelable.Creator<f0> CREATOR = new g0();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f25289a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25290b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25291c;

    /* renamed from: d  reason: collision with root package name */
    private final int f25292d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(boolean z10, String str, int i10, int i11) {
        this.f25289a = z10;
        this.f25290b = str;
        this.f25291c = m0.a(i10) - 1;
        this.f25292d = s.a(i11) - 1;
    }

    public final String g() {
        return this.f25290b;
    }

    public final boolean i() {
        return this.f25289a;
    }

    public final int l() {
        return s.a(this.f25292d);
    }

    public final int m() {
        return m0.a(this.f25291c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.c(parcel, 1, this.f25289a);
        o5.c.q(parcel, 2, this.f25290b, false);
        o5.c.k(parcel, 3, this.f25291c);
        o5.c.k(parcel, 4, this.f25292d);
        o5.c.b(parcel, a10);
    }
}
