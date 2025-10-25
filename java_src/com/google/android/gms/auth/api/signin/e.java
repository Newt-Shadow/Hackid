package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    arrayList = o5.b.i(parcel, q10, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) o5.b.e(parcel, q10, Account.CREATOR);
                    break;
                case 4:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 5:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 6:
                    z12 = o5.b.l(parcel, q10);
                    break;
                case 7:
                    str = o5.b.f(parcel, q10);
                    break;
                case 8:
                    str2 = o5.b.f(parcel, q10);
                    break;
                case 9:
                    arrayList2 = o5.b.i(parcel, q10, i5.a.CREATOR);
                    break;
                case 10:
                    str3 = o5.b.f(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new GoogleSignInOptions(i10, arrayList, account, z10, z11, z12, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new GoogleSignInOptions[i10];
    }
}
