package k6;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class e extends a6.b implements f {
    public e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // a6.b
    protected final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) {
        switch (i10) {
            case 3:
                l5.b bVar = (l5.b) a6.c.a(parcel, l5.b.CREATOR);
                b bVar2 = (b) a6.c.a(parcel, b.CREATOR);
                a6.c.b(parcel);
                break;
            case 4:
                Status status = (Status) a6.c.a(parcel, Status.CREATOR);
                a6.c.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) a6.c.a(parcel, Status.CREATOR);
                a6.c.b(parcel);
                break;
            case 7:
                Status status3 = (Status) a6.c.a(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) a6.c.a(parcel, GoogleSignInAccount.CREATOR);
                a6.c.b(parcel);
                break;
            case 8:
                a6.c.b(parcel);
                W((l) a6.c.a(parcel, l.CREATOR));
                break;
            case 9:
                h hVar = (h) a6.c.a(parcel, h.CREATOR);
                a6.c.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
