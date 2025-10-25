package i5;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
final class j extends e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k f17269a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(k kVar) {
        this.f17269a = kVar;
    }

    @Override // i5.e, i5.v
    public final void f0(GoogleSignInAccount googleSignInAccount, Status status) {
        if (googleSignInAccount != null) {
            k kVar = this.f17269a;
            r.c(kVar.f17270p).e(kVar.f17271q, googleSignInAccount);
        }
        this.f17269a.f(new h5.b(googleSignInAccount, status));
    }
}
