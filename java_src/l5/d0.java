package l5;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import u5.a;
/* loaded from: classes.dex */
public final class d0 extends o5.a {
    public static final Parcelable.Creator<d0> CREATOR = new e0();

    /* renamed from: a  reason: collision with root package name */
    private final String f25279a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25280b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f25281c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f25282d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f25283e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f25284f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(String str, boolean z10, boolean z11, IBinder iBinder, boolean z12, boolean z13) {
        this.f25279a = str;
        this.f25280b = z10;
        this.f25281c = z11;
        this.f25282d = (Context) u5.b.k(a.AbstractBinderC0341a.d(iBinder));
        this.f25283e = z12;
        this.f25284f = z13;
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [u5.a, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f25279a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, str, false);
        o5.c.c(parcel, 2, this.f25280b);
        o5.c.c(parcel, 3, this.f25281c);
        o5.c.j(parcel, 4, u5.b.e1(this.f25282d), false);
        o5.c.c(parcel, 5, this.f25283e);
        o5.c.c(parcel, 6, this.f25284f);
        o5.c.b(parcel, a10);
    }
}
