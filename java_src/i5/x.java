package i5;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* loaded from: classes.dex */
public final class x extends s {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17279a;

    public x(Context context) {
        this.f17279a = context;
    }

    private final void k() {
        if (com.google.android.gms.common.util.p.a(this.f17279a, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        throw new SecurityException("Calling UID " + callingUid + " is not Google Play services.");
    }

    @Override // i5.t
    public final void G() {
        k();
        c b10 = c.b(this.f17279a);
        GoogleSignInAccount c10 = b10.c();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f5814l;
        if (c10 != null) {
            googleSignInOptions = b10.d();
        }
        com.google.android.gms.auth.api.signin.b a10 = com.google.android.gms.auth.api.signin.a.a(this.f17279a, googleSignInOptions);
        if (c10 != null) {
            a10.A();
        } else {
            a10.B();
        }
    }

    @Override // i5.t
    public final void q() {
        k();
        r.c(this.f17279a).d();
    }
}
