package h5;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.k;
/* loaded from: classes.dex */
public class b implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Status f16852a;

    /* renamed from: b  reason: collision with root package name */
    private final GoogleSignInAccount f16853b;

    public b(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f16853b = googleSignInAccount;
        this.f16852a = status;
    }

    public GoogleSignInAccount a() {
        return this.f16853b;
    }

    @Override // com.google.android.gms.common.api.k
    public Status d() {
        return this.f16852a;
    }
}
