package i5;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
/* loaded from: classes.dex */
public final class w extends y5.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void f1(v vVar, GoogleSignInOptions googleSignInOptions) {
        Parcel k10 = k();
        y5.d.d(k10, vVar);
        y5.d.c(k10, googleSignInOptions);
        e1(103, k10);
    }

    public final void g1(v vVar, GoogleSignInOptions googleSignInOptions) {
        Parcel k10 = k();
        y5.d.d(k10, vVar);
        y5.d.c(k10, googleSignInOptions);
        e1(102, k10);
    }

    public final void h1(v vVar, GoogleSignInOptions googleSignInOptions) {
        Parcel k10 = k();
        y5.d.d(k10, vVar);
        y5.d.c(k10, googleSignInOptions);
        e1(ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE, k10);
    }
}
