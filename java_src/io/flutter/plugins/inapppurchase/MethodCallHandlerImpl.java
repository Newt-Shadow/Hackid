package io.flutter.plugins.inapppurchase;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import c2.q;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import io.flutter.plugins.inapppurchase.Messages;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class MethodCallHandlerImpl implements Application.ActivityLifecycleCallbacks, Messages.InAppPurchaseApi {
    static final String ACTIVITY_UNAVAILABLE = "ACTIVITY_UNAVAILABLE";
    private static final String LOAD_PRODUCT_DOC_URL = "https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale";
    static final int PRORATION_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY = 0;
    static final int REPLACEMENT_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY = 0;
    private static final String TAG = "InAppPurchasePlugin";
    private Activity activity;
    private final Context applicationContext;
    private com.android.billingclient.api.d billingClient;
    private final BillingClientFactory billingClientFactory;
    private final HashMap<String, com.android.billingclient.api.i> cachedProducts = new HashMap<>();
    final Messages.InAppPurchaseCallbackApi callbackApi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MethodCallHandlerImpl(Activity activity, Context context, Messages.InAppPurchaseCallbackApi inAppPurchaseCallbackApi, BillingClientFactory billingClientFactory) {
        this.billingClientFactory = billingClientFactory;
        this.applicationContext = context;
        this.activity = activity;
        this.callbackApi = inAppPurchaseCallbackApi;
    }

    private void endBillingClientConnection() {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar != null) {
            dVar.d();
            this.billingClient = null;
        }
    }

    private Messages.FlutterError getNullBillingClientError() {
        return new Messages.FlutterError("UNAVAILABLE", "BillingClient is unset. Try reconnecting.", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$acknowledgePurchase$8(Messages.Result result, com.android.billingclient.api.h hVar) {
        result.success(Translator.fromBillingResult(hVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$consumeAsync$5(Messages.Result result, com.android.billingclient.api.h hVar, String str) {
        result.success(Translator.fromBillingResult(hVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createAlternativeBillingOnlyReportingDetailsAsync$1(Messages.Result result, com.android.billingclient.api.h hVar, com.android.billingclient.api.b bVar) {
        result.success(Translator.fromAlternativeBillingOnlyReportingDetails(hVar, bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getBillingConfigAsync$3(Messages.Result result, com.android.billingclient.api.h hVar, com.android.billingclient.api.f fVar) {
        result.success(Translator.fromBillingConfig(hVar, fVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$isAlternativeBillingOnlyAvailableAsync$2(Messages.Result result, com.android.billingclient.api.h hVar) {
        result.success(Translator.fromBillingResult(hVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$queryProductDetailsAsync$4(Messages.Result result, com.android.billingclient.api.h hVar, List list) {
        updateCachedProducts(list);
        result.success(new Messages.PlatformProductDetailsResponse.Builder().setBillingResult(Translator.fromBillingResult(hVar)).setProductDetails(Translator.fromProductDetailsList(list)).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$queryPurchaseHistoryAsync$7(Messages.Result result, com.android.billingclient.api.h hVar, List list) {
        result.success(new Messages.PlatformPurchaseHistoryResponse.Builder().setBillingResult(Translator.fromBillingResult(hVar)).setPurchases(Translator.fromPurchaseHistoryRecordList(list)).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$queryPurchasesAsync$6(Messages.Result result, com.android.billingclient.api.h hVar, List list) {
        result.success(new Messages.PlatformPurchasesResponse.Builder().setBillingResult(Translator.fromBillingResult(hVar)).setPurchases(Translator.fromPurchasesList(list)).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showAlternativeBillingOnlyInformationDialog$0(Messages.Result result, com.android.billingclient.api.h hVar) {
        result.success(Translator.fromBillingResult(hVar));
    }

    private void setReplaceProrationMode(g.c.a aVar, int i10) {
        aVar.e(i10);
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void acknowledgePurchase(String str, final Messages.Result<Messages.PlatformBillingResult> result) {
        if (this.billingClient == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            this.billingClient.a(c2.a.b().b(str).a(), new c2.b() { // from class: io.flutter.plugins.inapppurchase.z
                @Override // c2.b
                public final void a(com.android.billingclient.api.h hVar) {
                    MethodCallHandlerImpl.lambda$acknowledgePurchase$8(Messages.Result.this, hVar);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void consumeAsync(String str, final Messages.Result<Messages.PlatformBillingResult> result) {
        if (this.billingClient == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            c2.j jVar = new c2.j() { // from class: io.flutter.plugins.inapppurchase.y
                @Override // c2.j
                public final void a(com.android.billingclient.api.h hVar, String str2) {
                    MethodCallHandlerImpl.lambda$consumeAsync$5(Messages.Result.this, hVar, str2);
                }
            };
            this.billingClient.b(c2.i.b().b(str).a(), jVar);
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void createAlternativeBillingOnlyReportingDetailsAsync(final Messages.Result<Messages.PlatformAlternativeBillingOnlyReportingDetailsResponse> result) {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            dVar.c(new c2.f() { // from class: io.flutter.plugins.inapppurchase.w
                @Override // c2.f
                public final void a(com.android.billingclient.api.h hVar, com.android.billingclient.api.b bVar) {
                    MethodCallHandlerImpl.lambda$createAlternativeBillingOnlyReportingDetailsAsync$1(Messages.Result.this, hVar, bVar);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void endConnection() {
        endBillingClientConnection();
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void getBillingConfigAsync(final Messages.Result<Messages.PlatformBillingConfigResponse> result) {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            dVar.e(c2.k.a().a(), new c2.h() { // from class: io.flutter.plugins.inapppurchase.a0
                @Override // c2.h
                public final void a(com.android.billingclient.api.h hVar, com.android.billingclient.api.f fVar) {
                    MethodCallHandlerImpl.lambda$getBillingConfigAsync$3(Messages.Result.this, hVar, fVar);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void isAlternativeBillingOnlyAvailableAsync(final Messages.Result<Messages.PlatformBillingResult> result) {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            dVar.f(new c2.d() { // from class: io.flutter.plugins.inapppurchase.x
                @Override // c2.d
                public final void a(com.android.billingclient.api.h hVar) {
                    MethodCallHandlerImpl.lambda$isAlternativeBillingOnlyAvailableAsync$2(Messages.Result.this, hVar);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public Boolean isFeatureSupported(String str) {
        boolean z10;
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar != null) {
            if (dVar.g(str).b() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
        throw getNullBillingClientError();
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public Boolean isReady() {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar != null) {
            return Boolean.valueOf(dVar.h());
        }
        throw getNullBillingClientError();
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public Messages.PlatformBillingResult launchBillingFlow(Messages.PlatformBillingFlowParams platformBillingFlowParams) {
        boolean z10;
        if (this.billingClient != null) {
            com.android.billingclient.api.i iVar = this.cachedProducts.get(platformBillingFlowParams.getProduct());
            if (iVar != null) {
                List f10 = iVar.f();
                if (f10 != null) {
                    Iterator it = f10.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            i.d dVar = (i.d) it.next();
                            if (platformBillingFlowParams.getOfferToken() != null && platformBillingFlowParams.getOfferToken().equals(dVar.d())) {
                                z10 = true;
                                break;
                            }
                        } else {
                            z10 = false;
                            break;
                        }
                    }
                    if (!z10) {
                        throw new Messages.FlutterError("INVALID_OFFER_TOKEN", "Offer token " + platformBillingFlowParams.getOfferToken() + " for product " + platformBillingFlowParams.getProduct() + " is not valid. Make sure to only pass offer tokens that belong to the product. To obtain offer tokens for a product, fetch the products. An example of how to fetch the products could be found here: " + LOAD_PRODUCT_DOC_URL, null);
                    }
                }
                if (platformBillingFlowParams.getProrationMode().longValue() != 0 && platformBillingFlowParams.getReplacementMode().longValue() != 0) {
                    throw new Messages.FlutterError("IN_APP_PURCHASE_CONFLICT_PRORATION_MODE_REPLACEMENT_MODE", "launchBillingFlow failed because you provided both prorationMode and replacementMode. You can only provide one of them.", null);
                }
                if (platformBillingFlowParams.getOldProduct() == null && (platformBillingFlowParams.getProrationMode().longValue() != 0 || platformBillingFlowParams.getReplacementMode().longValue() != 0)) {
                    throw new Messages.FlutterError("IN_APP_PURCHASE_REQUIRE_OLD_PRODUCT", "launchBillingFlow failed because oldProduct is null. You must provide a valid oldProduct in order to use a proration mode.", null);
                }
                if (platformBillingFlowParams.getOldProduct() != null && !this.cachedProducts.containsKey(platformBillingFlowParams.getOldProduct())) {
                    throw new Messages.FlutterError("IN_APP_PURCHASE_INVALID_OLD_PRODUCT", "Details for product " + platformBillingFlowParams.getOldProduct() + " are not available. It might because products were not fetched prior to the call. Please fetch the products first. An example of how to fetch the products could be found here: " + LOAD_PRODUCT_DOC_URL, null);
                } else if (this.activity != null) {
                    g.b.a a10 = g.b.a();
                    a10.c(iVar);
                    if (platformBillingFlowParams.getOfferToken() != null) {
                        a10.b(platformBillingFlowParams.getOfferToken());
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a10.a());
                    g.a d10 = com.android.billingclient.api.g.a().d(arrayList);
                    if (platformBillingFlowParams.getAccountId() != null && !platformBillingFlowParams.getAccountId().isEmpty()) {
                        d10.b(platformBillingFlowParams.getAccountId());
                    }
                    if (platformBillingFlowParams.getObfuscatedProfileId() != null && !platformBillingFlowParams.getObfuscatedProfileId().isEmpty()) {
                        d10.c(platformBillingFlowParams.getObfuscatedProfileId());
                    }
                    g.c.a a11 = g.c.a();
                    if (platformBillingFlowParams.getOldProduct() != null && !platformBillingFlowParams.getOldProduct().isEmpty() && platformBillingFlowParams.getPurchaseToken() != null) {
                        a11.b(platformBillingFlowParams.getPurchaseToken());
                        if (platformBillingFlowParams.getProrationMode().longValue() != 0) {
                            setReplaceProrationMode(a11, platformBillingFlowParams.getProrationMode().intValue());
                        }
                        if (platformBillingFlowParams.getReplacementMode().longValue() != 0) {
                            a11.g(platformBillingFlowParams.getReplacementMode().intValue());
                        }
                        d10.e(a11.a());
                    }
                    return Translator.fromBillingResult(this.billingClient.i(this.activity, d10.a()));
                } else {
                    throw new Messages.FlutterError(ACTIVITY_UNAVAILABLE, "Details for product " + platformBillingFlowParams.getProduct() + " are not available. This method must be run with the app in foreground.", null);
                }
            }
            throw new Messages.FlutterError("NOT_FOUND", "Details for product " + platformBillingFlowParams.getProduct() + " are not available. It might because products were not fetched prior to the call. Please fetch the products first. An example of how to fetch the products could be found here: " + LOAD_PRODUCT_DOC_URL, null);
        }
        throw getNullBillingClientError();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Context context;
        if (this.activity == activity && (context = this.applicationContext) != null) {
            ((Application) context).unregisterActivityLifecycleCallbacks(this);
            endBillingClientConnection();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDetachedFromActivity() {
        endBillingClientConnection();
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void queryProductDetailsAsync(List<Messages.PlatformQueryProduct> list, final Messages.Result<Messages.PlatformProductDetailsResponse> result) {
        if (this.billingClient == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            this.billingClient.k(com.android.billingclient.api.j.a().b(Translator.toProductList(list)).a(), new c2.l() { // from class: io.flutter.plugins.inapppurchase.u
                @Override // c2.l
                public final void onProductDetailsResponse(com.android.billingclient.api.h hVar, List list2) {
                    MethodCallHandlerImpl.this.lambda$queryProductDetailsAsync$4(result, hVar, list2);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void queryPurchaseHistoryAsync(Messages.PlatformProductType platformProductType, final Messages.Result<Messages.PlatformPurchaseHistoryResponse> result) {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            dVar.l(c2.p.a().b(Translator.toProductTypeString(platformProductType)).a(), new c2.m() { // from class: io.flutter.plugins.inapppurchase.b0
                @Override // c2.m
                public final void onPurchaseHistoryResponse(com.android.billingclient.api.h hVar, List list) {
                    MethodCallHandlerImpl.lambda$queryPurchaseHistoryAsync$7(Messages.Result.this, hVar, list);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void queryPurchasesAsync(Messages.PlatformProductType platformProductType, final Messages.Result<Messages.PlatformPurchasesResponse> result) {
        if (this.billingClient == null) {
            result.error(getNullBillingClientError());
            return;
        }
        try {
            q.a a10 = c2.q.a();
            a10.b(Translator.toProductTypeString(platformProductType));
            this.billingClient.n(a10.a(), new c2.n() { // from class: io.flutter.plugins.inapppurchase.t
                @Override // c2.n
                public final void onQueryPurchasesResponse(com.android.billingclient.api.h hVar, List list) {
                    MethodCallHandlerImpl.lambda$queryPurchasesAsync$6(Messages.Result.this, hVar, list);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void showAlternativeBillingOnlyInformationDialog(final Messages.Result<Messages.PlatformBillingResult> result) {
        com.android.billingclient.api.d dVar = this.billingClient;
        if (dVar == null) {
            result.error(getNullBillingClientError());
            return;
        }
        Activity activity = this.activity;
        if (activity == null) {
            result.error(new Messages.FlutterError(ACTIVITY_UNAVAILABLE, "Not attempting to show dialog", null));
            return;
        }
        try {
            dVar.q(activity, new c2.e() { // from class: io.flutter.plugins.inapppurchase.v
                @Override // c2.e
                public final void a(com.android.billingclient.api.h hVar) {
                    MethodCallHandlerImpl.lambda$showAlternativeBillingOnlyInformationDialog$0(Messages.Result.this, hVar);
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    @Override // io.flutter.plugins.inapppurchase.Messages.InAppPurchaseApi
    public void startConnection(final Long l10, Messages.PlatformBillingChoiceMode platformBillingChoiceMode, final Messages.Result<Messages.PlatformBillingResult> result) {
        if (this.billingClient == null) {
            this.billingClient = this.billingClientFactory.createBillingClient(this.applicationContext, this.callbackApi, platformBillingChoiceMode);
        }
        try {
            this.billingClient.r(new c2.g() { // from class: io.flutter.plugins.inapppurchase.MethodCallHandlerImpl.1
                private boolean alreadyFinished = false;

                @Override // c2.g
                public void onBillingServiceDisconnected() {
                    MethodCallHandlerImpl.this.callbackApi.onBillingServiceDisconnected(l10, new Messages.VoidResult() { // from class: io.flutter.plugins.inapppurchase.MethodCallHandlerImpl.1.1
                        @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
                        public void error(Throwable th) {
                            io.flutter.Log.e("IN_APP_PURCHASE", "onBillingServiceDisconnected handler error: " + th);
                        }

                        @Override // io.flutter.plugins.inapppurchase.Messages.VoidResult
                        public void success() {
                        }
                    });
                }

                @Override // c2.g
                public void onBillingSetupFinished(com.android.billingclient.api.h hVar) {
                    if (this.alreadyFinished) {
                        Log.d(MethodCallHandlerImpl.TAG, "Tried to call onBillingSetupFinished multiple times.");
                        return;
                    }
                    this.alreadyFinished = true;
                    result.success(Translator.fromBillingResult(hVar));
                }
            });
        } catch (RuntimeException e10) {
            result.error(new Messages.FlutterError("error", e10.getMessage(), Log.getStackTraceString(e10)));
        }
    }

    protected void updateCachedProducts(List<com.android.billingclient.api.i> list) {
        if (list == null) {
            return;
        }
        for (com.android.billingclient.api.i iVar : list) {
            this.cachedProducts.put(iVar.d(), iVar);
        }
    }
}
