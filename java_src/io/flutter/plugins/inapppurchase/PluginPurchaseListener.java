package io.flutter.plugins.inapppurchase;

import com.android.billingclient.api.Purchase;
import io.flutter.Log;
import io.flutter.plugins.inapppurchase.Messages;
import java.util.List;
/* loaded from: classes2.dex */
class PluginPurchaseListener implements c2.o {
    private final Messages.InAppPurchaseCallbackApi callbackApi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PluginPurchaseListener(Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi) {
        this.callbackApi = inAppPurchaseCallbackApi;
    }

    @Override // c2.o
    public void onPurchasesUpdated(com.android.billingclient.api.h hVar, List<Purchase> list) {
        this.callbackApi.onPurchasesUpdated(new Messages.PlatformPurchasesResponse.Builder().setBillingResult(Translator.fromBillingResult(hVar)).setPurchases(Translator.fromPurchasesList(list)).build(), new Messages.VoidResult() { // from class: io.flutter.plugins.inapppurchase.PluginPurchaseListener.1
            @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
            public void error(Throwable th) {
                Log.e("IN_APP_PURCHASE", "onPurchaseUpdated handler error: " + th);
            }

            @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
            public void success() {
            }
        });
    }
}
