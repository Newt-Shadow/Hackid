package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import f.g;
@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivity extends androidx.activity.j {

    /* renamed from: a  reason: collision with root package name */
    private f.c f5215a;

    /* renamed from: b  reason: collision with root package name */
    private f.c f5216b;

    /* renamed from: c  reason: collision with root package name */
    private ResultReceiver f5217c;

    /* renamed from: d  reason: collision with root package name */
    private ResultReceiver f5218d;

    /* renamed from: e  reason: collision with root package name */
    private ResultReceiver f5219e;

    /* renamed from: f  reason: collision with root package name */
    private ResultReceiver f5220f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5221g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5222h;

    private void q() {
        this.f5219e = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
        this.f5215a.a(new g.a((PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")).a());
    }

    private void r() {
        this.f5220f = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
        this.f5216b.a(new g.a((PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent")).a());
    }

    private Intent s(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        intent.putExtra("BROADCAST_RECEIVER_LOGGING_PAYLOAD", h0.e(3, com.google.android.gms.internal.play_billing.j.t(h0.a(intent.getAction()))).d());
        return intent;
    }

    private Intent t() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("BROADCAST_RECEIVER_LOGGING_PAYLOAD", h0.e(3, com.google.android.gms.internal.play_billing.j.t(h0.a(intent.getAction()))).d());
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    @Override // androidx.activity.j, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, androidx.core.app.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i10;
        PendingIntent pendingIntent;
        int i11;
        super.onCreate(bundle);
        this.f5215a = registerForActivityResult(new g.i(), new f.b() { // from class: com.android.billingclient.api.v0
            @Override // f.b
            public final void a(Object obj) {
                ProxyBillingActivity.this.u((f.a) obj);
            }
        });
        this.f5216b = registerForActivityResult(new g.i(), new f.b() { // from class: com.android.billingclient.api.w0
            @Override // f.b
            public final void a(Object obj) {
                ProxyBillingActivity.this.v((f.a) obj);
            }
        });
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.b0.j("ProxyBillingActivity", "Launching Play Store billing flow");
            if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
                q();
                return;
            } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
                r();
                return;
            } else {
                if (getIntent().hasExtra("BUY_INTENT")) {
                    pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
                    if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                        this.f5222h = true;
                        i11 = 110;
                        i10 = i11;
                    }
                    i10 = 100;
                } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                    pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                    this.f5217c = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
                    i10 = 100;
                } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                    pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                    this.f5218d = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
                    i11 = ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE;
                    i10 = i11;
                } else {
                    i10 = 100;
                    pendingIntent = null;
                }
                try {
                    this.f5221g = true;
                    startIntentSenderForResult(pendingIntent.getIntentSender(), i10, new Intent(), 0, 0, 0);
                    return;
                } catch (IntentSender.SendIntentException e10) {
                    com.google.android.gms.internal.play_billing.b0.l("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e10);
                    ResultReceiver resultReceiver = this.f5217c;
                    if (resultReceiver != null) {
                        resultReceiver.send(6, null);
                    } else {
                        ResultReceiver resultReceiver2 = this.f5218d;
                        if (resultReceiver2 != null) {
                            resultReceiver2.send(0, null);
                        } else {
                            Intent t10 = t();
                            if (this.f5222h) {
                                t10.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                            }
                            t10.putExtra("RESPONSE_CODE", 6);
                            t10.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                            sendBroadcast(t10);
                        }
                    }
                    this.f5221g = false;
                    finish();
                    return;
                }
            }
        }
        com.google.android.gms.internal.play_billing.b0.j("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
        this.f5221g = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
        if (bundle.containsKey("result_receiver")) {
            this.f5217c = (ResultReceiver) bundle.getParcelable("result_receiver");
        } else if (bundle.containsKey("in_app_message_result_receiver")) {
            this.f5218d = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
        } else if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
            this.f5219e = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
        } else if (bundle.containsKey("external_payment_dialog_result_receiver")) {
            this.f5220f = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
        }
        this.f5222h = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f5221g) {
            Intent t10 = t();
            t10.putExtra("RESPONSE_CODE", 1);
            t10.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(t10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, androidx.core.app.g, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f5217c;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f5218d;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.f5219e;
        if (resultReceiver3 != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver3);
        }
        ResultReceiver resultReceiver4 = this.f5220f;
        if (resultReceiver4 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver4);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f5221g);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f5222h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(f.a aVar) {
        Bundle extras;
        Intent a10 = aVar.a();
        int c10 = com.google.android.gms.internal.play_billing.b0.c(a10, "ProxyBillingActivity");
        ResultReceiver resultReceiver = this.f5219e;
        if (resultReceiver != null) {
            if (a10 == null) {
                extras = null;
            } else {
                extras = a10.getExtras();
            }
            resultReceiver.send(c10, extras);
        }
        if (aVar.b() != -1 || c10 != 0) {
            int b10 = aVar.b();
            com.google.android.gms.internal.play_billing.b0.k("ProxyBillingActivity", "Alternative billing only dialog finished with resultCode " + b10 + " and billing's responseCode: " + c10);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(f.a aVar) {
        Bundle extras;
        Intent a10 = aVar.a();
        int c10 = com.google.android.gms.internal.play_billing.b0.c(a10, "ProxyBillingActivity");
        ResultReceiver resultReceiver = this.f5220f;
        if (resultReceiver != null) {
            if (a10 == null) {
                extras = null;
            } else {
                extras = a10.getExtras();
            }
            resultReceiver.send(c10, extras);
        }
        if (aVar.b() != -1 || c10 != 0) {
            com.google.android.gms.internal.play_billing.b0.k("ProxyBillingActivity", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(aVar.b()), Integer.valueOf(c10)));
        }
        finish();
    }
}
