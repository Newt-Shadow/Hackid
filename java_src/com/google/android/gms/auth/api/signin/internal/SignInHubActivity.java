package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.u;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import i5.r;
@KeepName
/* loaded from: classes.dex */
public class SignInHubActivity extends u {

    /* renamed from: f */
    private static boolean f5849f = false;

    /* renamed from: a */
    private boolean f5850a = false;

    /* renamed from: b */
    private SignInConfiguration f5851b;

    /* renamed from: c */
    private boolean f5852c;

    /* renamed from: d */
    private int f5853d;

    /* renamed from: e */
    private Intent f5854e;

    private final void C() {
        getSupportLoaderManager().c(0, null, new a(this, null));
        f5849f = false;
    }

    private final void D(int i10) {
        Status status = new Status(i10);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f5849f = false;
    }

    private final void E(String str) {
        Intent intent = new Intent(str);
        if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent.setPackage("com.google.android.gms");
        } else {
            intent.setPackage(getPackageName());
        }
        intent.putExtra("config", this.f5851b);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException unused) {
            this.f5850a = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            D(17);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.u, androidx.activity.j, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        if (!this.f5850a) {
            setResult(0);
            if (i10 != 40962) {
                return;
            }
            if (intent != null) {
                SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
                if (signInAccount != null && signInAccount.g() != null) {
                    GoogleSignInAccount g10 = signInAccount.g();
                    r c10 = r.c(this);
                    GoogleSignInOptions g11 = this.f5851b.g();
                    g10.getClass();
                    c10.e(g11, g10);
                    intent.removeExtra("signInAccount");
                    intent.putExtra("googleSignInAccount", g10);
                    this.f5852c = true;
                    this.f5853d = i11;
                    this.f5854e = intent;
                    C();
                    return;
                } else if (intent.hasExtra("errorCode")) {
                    int intExtra = intent.getIntExtra("errorCode", 8);
                    if (intExtra == 13) {
                        intExtra = 12501;
                    }
                    D(intExtra);
                    return;
                }
            }
            D(8);
        }
    }

    @Override // androidx.fragment.app.u, androidx.activity.j, androidx.core.app.g, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        action.getClass();
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            D(12500);
        } else if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
        } else {
            Bundle bundleExtra = intent.getBundleExtra("config");
            bundleExtra.getClass();
            SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f5851b = signInConfiguration;
            if (bundle == null) {
                if (f5849f) {
                    setResult(0);
                    D(12502);
                    return;
                }
                f5849f = true;
                E(action);
                return;
            }
            boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
            this.f5852c = z10;
            if (z10) {
                this.f5853d = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                intent2.getClass();
                this.f5854e = intent2;
                C();
            }
        }
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f5849f = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, androidx.core.app.g, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f5852c);
        if (this.f5852c) {
            bundle.putInt("signInResultCode", this.f5853d);
            bundle.putParcelable("signInResultData", this.f5854e);
        }
    }
}
