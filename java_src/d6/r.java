package d6;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class r extends o5.a {
    public static final Parcelable.Creator<r> CREATOR = new s();

    /* renamed from: a  reason: collision with root package name */
    final int f15042a;

    /* renamed from: b  reason: collision with root package name */
    final p f15043b;

    /* renamed from: c  reason: collision with root package name */
    final g6.r f15044c;

    /* renamed from: d  reason: collision with root package name */
    final PendingIntent f15045d;

    /* renamed from: e  reason: collision with root package name */
    final g6.o f15046e;

    /* renamed from: f  reason: collision with root package name */
    final g f15047f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(int i10, p pVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        g6.r d10;
        g6.o d11;
        this.f15042a = i10;
        this.f15043b = pVar;
        g gVar = null;
        if (iBinder == null) {
            d10 = null;
        } else {
            d10 = g6.q.d(iBinder);
        }
        this.f15044c = d10;
        this.f15045d = pendingIntent;
        if (iBinder2 == null) {
            d11 = null;
        } else {
            d11 = g6.n.d(iBinder2);
        }
        this.f15046e = d11;
        if (iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            if (queryLocalInterface instanceof g) {
                gVar = (g) queryLocalInterface;
            } else {
                gVar = new e(iBinder3);
            }
        }
        this.f15047f = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, g6.o] */
    public static r g(g6.o oVar, g gVar) {
        if (gVar == null) {
            gVar = null;
        }
        return new r(2, null, null, null, oVar, gVar);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        IBinder asBinder;
        IBinder asBinder2;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f15042a);
        o5.c.p(parcel, 2, this.f15043b, i10, false);
        g6.r rVar = this.f15044c;
        IBinder iBinder = null;
        if (rVar == null) {
            asBinder = null;
        } else {
            asBinder = rVar.asBinder();
        }
        o5.c.j(parcel, 3, asBinder, false);
        o5.c.p(parcel, 4, this.f15045d, i10, false);
        g6.o oVar = this.f15046e;
        if (oVar == null) {
            asBinder2 = null;
        } else {
            asBinder2 = oVar.asBinder();
        }
        o5.c.j(parcel, 5, asBinder2, false);
        g gVar = this.f15047f;
        if (gVar != null) {
            iBinder = gVar.asBinder();
        }
        o5.c.j(parcel, 6, iBinder, false);
        o5.c.b(parcel, a10);
    }
}
