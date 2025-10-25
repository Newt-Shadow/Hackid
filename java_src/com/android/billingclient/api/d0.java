package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.j4;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
final class d0 extends j4 {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference f5266a;

    /* renamed from: g  reason: collision with root package name */
    final ResultReceiver f5267g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d0(WeakReference weakReference, ResultReceiver resultReceiver, c2.x xVar) {
        this.f5266a = weakReference;
        this.f5267g = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.i5
    public final void c(Bundle bundle) {
        if (bundle == null) {
            this.f5267g.send(6, null);
        } else if (!bundle.containsKey("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Response bundle doesn't contain a response code");
            this.f5267g.send(6, bundle);
        } else {
            int b10 = com.google.android.gms.internal.play_billing.b0.b(bundle, "BillingClient");
            if (b10 != 0) {
                com.google.android.gms.internal.play_billing.b0.k("BillingClient", "Unable to launch intent for alternative billing only dialog" + b10);
                this.f5267g.send(b10, bundle);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            if (pendingIntent == null) {
                com.google.android.gms.internal.play_billing.b0.j("BillingClient", "User has acknowledged the alternative billing only dialog before.");
                this.f5267g.send(0, bundle);
                return;
            }
            try {
                Activity activity = (Activity) this.f5266a.get();
                Intent intent = new Intent(activity, ProxyBillingActivity.class);
                intent.putExtra("alternative_billing_only_dialog_result_receiver", this.f5267g);
                intent.putExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT", pendingIntent);
                activity.startActivity(intent);
            } catch (RuntimeException e10) {
                com.google.android.gms.internal.play_billing.b0.l("BillingClient", "Runtime error while launching intent for alternative billing only dialog.", e10);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("RESPONSE_CODE", 6);
                bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                bundle2.putInt("INTERNAL_LOG_ERROR_REASON", 75);
                bundle2.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e10.getClass().getName(), com.google.android.gms.internal.play_billing.c.b(e10.getMessage())));
                this.f5267g.send(6, bundle2);
            }
        }
    }
}
