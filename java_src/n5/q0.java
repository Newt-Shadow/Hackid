package n5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import n5.k;
/* loaded from: classes.dex */
public final class q0 extends o5.a {
    public static final Parcelable.Creator<q0> CREATOR = new r0();

    /* renamed from: a  reason: collision with root package name */
    final int f26371a;

    /* renamed from: b  reason: collision with root package name */
    final IBinder f26372b;

    /* renamed from: c  reason: collision with root package name */
    private final l5.b f26373c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f26374d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f26375e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(int i10, IBinder iBinder, l5.b bVar, boolean z10, boolean z11) {
        this.f26371a = i10;
        this.f26372b = iBinder;
        this.f26373c = bVar;
        this.f26374d = z10;
        this.f26375e = z11;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (!this.f26373c.equals(q0Var.f26373c) || !o.a(i(), q0Var.i())) {
            return false;
        }
        return true;
    }

    public final l5.b g() {
        return this.f26373c;
    }

    public final k i() {
        IBinder iBinder = this.f26372b;
        if (iBinder == null) {
            return null;
        }
        return k.a.d(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f26371a);
        o5.c.j(parcel, 2, this.f26372b, false);
        o5.c.p(parcel, 3, this.f26373c, i10, false);
        o5.c.c(parcel, 4, this.f26374d);
        o5.c.c(parcel, 5, this.f26375e);
        o5.c.b(parcel, a10);
    }
}
