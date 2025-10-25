package n5;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
/* loaded from: classes.dex */
public final class p0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Account account = null;
        int i10 = 0;
        int i11 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                if (k10 != 2) {
                    if (k10 != 3) {
                        if (k10 != 4) {
                            o5.b.w(parcel, q10);
                        } else {
                            googleSignInAccount = (GoogleSignInAccount) o5.b.e(parcel, q10, GoogleSignInAccount.CREATOR);
                        }
                    } else {
                        i11 = o5.b.s(parcel, q10);
                    }
                } else {
                    account = (Account) o5.b.e(parcel, q10, Account.CREATOR);
                }
            } else {
                i10 = o5.b.s(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new o0(i10, account, i11, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new o0[i10];
    }
}
