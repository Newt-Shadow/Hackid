package i5;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
/* loaded from: classes.dex */
public abstract class u extends y5.c implements v {
    public u() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // y5.c
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        switch (i10) {
            case ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE /* 101 */:
                y5.d.b(parcel);
                f0((GoogleSignInAccount) y5.d.a(parcel, GoogleSignInAccount.CREATOR), (Status) y5.d.a(parcel, Status.CREATOR));
                break;
            case 102:
                y5.d.b(parcel);
                r0((Status) y5.d.a(parcel, Status.CREATOR));
                break;
            case 103:
                y5.d.b(parcel);
                Z((Status) y5.d.a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
