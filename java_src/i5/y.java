package i5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
/* loaded from: classes.dex */
public final class y implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 2) {
                if (k10 != 5) {
                    o5.b.w(parcel, q10);
                } else {
                    googleSignInOptions = (GoogleSignInOptions) o5.b.e(parcel, q10, GoogleSignInOptions.CREATOR);
                }
            } else {
                str = o5.b.f(parcel, q10);
            }
        }
        o5.b.j(parcel, x10);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new SignInConfiguration[i10];
    }
}
