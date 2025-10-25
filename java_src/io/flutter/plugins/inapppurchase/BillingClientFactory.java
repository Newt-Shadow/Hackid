package io.flutter.plugins.inapppurchase;

import android.content.Context;
import io.flutter.plugins.inapppurchase.Messages;
/* loaded from: classes2.dex */
interface BillingClientFactory {
    com.android.billingclient.api.d createBillingClient(Context context, Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi, Messages.PlatformBillingChoiceMode platformBillingChoiceMode);
}
