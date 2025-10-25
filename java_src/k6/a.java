package k6;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.f;
import n5.c;
import n5.o0;
import n5.q;
/* loaded from: classes.dex */
public class a extends n5.h implements j6.e {
    public static final /* synthetic */ int M = 0;
    private final boolean I;
    private final n5.e J;
    private final Bundle K;
    private final Integer L;

    public a(Context context, Looper looper, boolean z10, n5.e eVar, Bundle bundle, f.a aVar, f.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.I = true;
        this.J = eVar;
        this.K = bundle;
        this.L = eVar.i();
    }

    public static Bundle m0(n5.e eVar) {
        eVar.h();
        Integer i10 = eVar.i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.a());
        if (i10 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", i10.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override // n5.c
    protected final Bundle A() {
        if (!y().getPackageName().equals(this.J.f())) {
            this.K.putString("com.google.android.gms.signin.internal.realClientPackageName", this.J.f());
        }
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final String E() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // n5.c
    protected final String F() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final int j() {
        return l5.k.f25303a;
    }

    @Override // j6.e
    public final void n(f fVar) {
        GoogleSignInAccount googleSignInAccount;
        q.l(fVar, "Expecting a valid ISignInCallbacks");
        try {
            Account c10 = this.J.c();
            if ("<<default account>>".equals(c10.name)) {
                googleSignInAccount = i5.c.b(y()).c();
            } else {
                googleSignInAccount = null;
            }
            ((g) D()).g1(new j(1, new o0(c10, ((Integer) q.k(this.L)).intValue(), googleSignInAccount)), fVar);
        } catch (RemoteException e10) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                fVar.W(new l(1, new l5.b(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e10);
            }
        }
    }

    @Override // n5.c, com.google.android.gms.common.api.a.f
    public final boolean o() {
        return this.I;
    }

    @Override // j6.e
    public final void p() {
        d(new c.d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n5.c
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof g) {
            return (g) queryLocalInterface;
        }
        return new g(iBinder);
    }
}
