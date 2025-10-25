package io.flutter.plugins.inapppurchase;

import android.content.Context;
import com.android.billingclient.api.d;
import io.flutter.Log;
import io.flutter.plugins.inapppurchase.Messages;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class BillingClientFactoryImpl implements BillingClientFactory {

    /* renamed from: io.flutter.plugins.inapppurchase.BillingClientFactoryImpl$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode;

        static {
            int[] iArr = new int[Messages.PlatformBillingChoiceMode.values().length];
            $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode = iArr;
            try {
                iArr[Messages.PlatformBillingChoiceMode.ALTERNATIVE_BILLING_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode[Messages.PlatformBillingChoiceMode.USER_CHOICE_BILLING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode[Messages.PlatformBillingChoiceMode.PLAY_BILLING_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createUserChoiceBillingListener$0(Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi, com.android.billingclient.api.l lVar) {
        inAppPurchaseCallbackApi.userSelectedalternativeBilling(Translator.fromUserChoiceDetails(lVar), new Messages.VoidResult() { // from class: io.flutter.plugins.inapppurchase.BillingClientFactoryImpl.1
            @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
            public void error(Throwable th) {
                Log.e("IN_APP_PURCHASE", "userSelectedalternativeBilling handler error: " + th);
            }

            @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
            public void success() {
            }
        });
    }

    @Override // io.flutter.plugins.inapppurchase.BillingClientFactory
    public com.android.billingclient.api.d createBillingClient(Context context, Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi, Messages.PlatformBillingChoiceMode platformBillingChoiceMode) {
        d.a c10 = com.android.billingclient.api.d.j(context).c();
        int i10 = AnonymousClass2.$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode[platformBillingChoiceMode.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    Log.e("BillingClientFactoryImpl", "Unknown BillingChoiceMode " + platformBillingChoiceMode + ", Defaulting to PLAY_BILLING_ONLY");
                }
            } else {
                c10.d(createUserChoiceBillingListener(inAppPurchaseCallbackApi));
            }
        } else {
            c10.b();
        }
        return c10.e(new PluginPurchaseListener(inAppPurchaseCallbackApi)).a();
    }

    c2.s createUserChoiceBillingListener(final Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi) {
        return new c2.s() { // from class: io.flutter.plugins.inapppurchase.a
            @Override // c2.s
            public final void a(com.android.billingclient.api.l lVar) {
                BillingClientFactoryImpl.this.lambda$createUserChoiceBillingListener$0(inAppPurchaseCallbackApi, lVar);
            }
        };
    }
}
