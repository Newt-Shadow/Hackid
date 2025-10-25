package i5;

import android.os.IInterface;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public interface v extends IInterface {
    void Z(Status status);

    void f0(GoogleSignInAccount googleSignInAccount, Status status);

    void r0(Status status);
}
