package n5;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes.dex */
public final class m1 implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(g gVar, Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, gVar.f26302a);
        o5.c.k(parcel, 2, gVar.f26303b);
        o5.c.k(parcel, 3, gVar.f26304c);
        o5.c.q(parcel, 4, gVar.f26305d, false);
        o5.c.j(parcel, 5, gVar.f26306e, false);
        o5.c.s(parcel, 6, gVar.f26307f, i10, false);
        o5.c.e(parcel, 7, gVar.f26308g, false);
        o5.c.p(parcel, 8, gVar.f26309h, i10, false);
        o5.c.s(parcel, 10, gVar.f26310i, i10, false);
        o5.c.s(parcel, 11, gVar.f26311j, i10, false);
        o5.c.c(parcel, 12, gVar.f26312k);
        o5.c.k(parcel, 13, gVar.f26313l);
        o5.c.c(parcel, 14, gVar.f26314m);
        o5.c.q(parcel, 15, gVar.g(), false);
        o5.c.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Scope[] scopeArr = g.f26300o;
        Bundle bundle = new Bundle();
        l5.d[] dVarArr = g.f26301p;
        l5.d[] dVarArr2 = dVarArr;
        String str = null;
        IBinder iBinder = null;
        Account account = null;
        String str2 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        int i13 = 0;
        boolean z11 = false;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    i11 = o5.b.s(parcel, q10);
                    break;
                case 3:
                    i12 = o5.b.s(parcel, q10);
                    break;
                case 4:
                    str = o5.b.f(parcel, q10);
                    break;
                case 5:
                    iBinder = o5.b.r(parcel, q10);
                    break;
                case 6:
                    scopeArr = (Scope[]) o5.b.h(parcel, q10, Scope.CREATOR);
                    break;
                case 7:
                    bundle = o5.b.a(parcel, q10);
                    break;
                case 8:
                    account = (Account) o5.b.e(parcel, q10, Account.CREATOR);
                    break;
                case 9:
                default:
                    o5.b.w(parcel, q10);
                    break;
                case 10:
                    dVarArr = (l5.d[]) o5.b.h(parcel, q10, l5.d.CREATOR);
                    break;
                case 11:
                    dVarArr2 = (l5.d[]) o5.b.h(parcel, q10, l5.d.CREATOR);
                    break;
                case 12:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 13:
                    i13 = o5.b.s(parcel, q10);
                    break;
                case 14:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 15:
                    str2 = o5.b.f(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new g(i10, i11, i12, str, iBinder, scopeArr, bundle, account, dVarArr, dVarArr2, z10, i13, z11, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new g[i10];
    }
}
