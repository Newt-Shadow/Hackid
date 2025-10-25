.class Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;


# static fields
.field static final ACTIVITY_UNAVAILABLE:Ljava/lang/String; = "ACTIVITY_UNAVAILABLE"

.field private static final LOAD_PRODUCT_DOC_URL:Ljava/lang/String; = "https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale"

.field static final PRORATION_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY:I = 0x0

.field static final REPLACEMENT_MODE_UNKNOWN_SUBSCRIPTION_UPGRADE_DOWNGRADE_POLICY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InAppPurchasePlugin"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final applicationContext:Landroid/content/Context;

.field private billingClient:Lcom/android/billingclient/api/d;

.field private final billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

.field private final cachedProducts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/i;",
            ">;"
        }
    .end annotation
.end field

.field final callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/BillingClientFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p4, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

    .line 12
    .line 13
    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 16
    .line 17
    iput-object p3, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 18
    .line 19
    return-void
.end method

.method private endBillingClientConnection()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/d;->d()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 2
    .line 3
    const-string v1, "BillingClient is unset. Try reconnecting."

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "UNAVAILABLE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static synthetic lambda$acknowledgePurchase$8(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$consumeAsync$5(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$createAlternativeBillingOnlyReportingDetailsAsync$1(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromAlternativeBillingOnlyReportingDetails(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$getBillingConfigAsync$3(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingConfig(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$isAlternativeBillingOnlyAvailableAsync$2(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$4(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->updateCachedProducts(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p3}, Lio/flutter/plugins/inapppurchase/Translator;->fromProductDetailsList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p2, p3}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->setProductDetails(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static synthetic lambda$queryPurchaseHistoryAsync$7(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchaseHistoryRecordList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->setPurchases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static synthetic lambda$queryPurchasesAsync$6(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchasesList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->setPurchases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static synthetic lambda$showAlternativeBillingOnlyInformationDialog$0(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic o(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$queryPurchaseHistoryAsync$7(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic p(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$isAlternativeBillingOnlyAvailableAsync$2(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method public static synthetic q(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$queryPurchasesAsync$6(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$getBillingConfigAsync$3(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    return-void
.end method

.method public static synthetic s(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$createAlternativeBillingOnlyReportingDetailsAsync$1(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    return-void
.end method

.method private setReplaceProrationMode(Lcom/android/billingclient/api/g$c$a;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/g$c$a;->e(I)Lcom/android/billingclient/api/g$c$a;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$showAlternativeBillingOnlyInformationDialog$0(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method public static synthetic u(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$acknowledgePurchase$8(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method public static synthetic v(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$consumeAsync$5(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->lambda$queryProductDetailsAsync$4(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lc2/a;->b()Lc2/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lc2/a$a;->b(Ljava/lang/String;)Lc2/a$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lc2/a$a;->a()Lc2/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 26
    .line 27
    new-instance v1, Lio/flutter/plugins/inapppurchase/z;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/z;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/d;->a(Lc2/a;Lc2/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v2, "error"

    .line 48
    .line 49
    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public consumeAsync(Ljava/lang/String;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lio/flutter/plugins/inapppurchase/y;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Lio/flutter/plugins/inapppurchase/y;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lc2/i;->b()Lc2/i$a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lc2/i$a;->b(Ljava/lang/String;)Lc2/i$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lc2/i$a;->a()Lc2/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/d;->b(Lc2/i;Lc2/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v2, "error"

    .line 48
    .line 49
    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public createAlternativeBillingOnlyReportingDetailsAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Lio/flutter/plugins/inapppurchase/w;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lio/flutter/plugins/inapppurchase/w;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d;->c(Lc2/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "error"

    .line 34
    .line 35
    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public endConnection()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getBillingConfigAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lc2/k;->a()Lc2/k$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lc2/k$a;->a()Lc2/k;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lio/flutter/plugins/inapppurchase/a0;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lio/flutter/plugins/inapppurchase/a0;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->e(Lc2/k;Lc2/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "error"

    .line 42
    .line 43
    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public isAlternativeBillingOnlyAvailableAsync(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Lio/flutter/plugins/inapppurchase/x;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lio/flutter/plugins/inapppurchase/x;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d;->f(Lc2/d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "error"

    .line 34
    .line 35
    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/d;->g(Ljava/lang/String;)Lcom/android/billingclient/api/h;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/d;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0
.end method

.method public launchBillingFlow(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/billingclient/api/i;

    .line 16
    .line 17
    const-string v1, " are not available. It might because products were not fetched prior to the call. Please fetch the products first. An example of how to fetch the products could be found here: "

    .line 18
    .line 19
    const-string v2, "https://github.com/flutter/packages/blob/main/packages/in_app_purchase/in_app_purchase/README.md#loading-products-for-sale"

    .line 20
    .line 21
    const-string v3, "Details for product "

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_11

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->f()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/android/billingclient/api/i$d;

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v6}, Lcom/android/billingclient/api/i$d;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v5, 0x0

    .line 71
    :goto_0
    if-eqz v5, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "Offer token "

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, " for product "

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " is not valid. Make sure to only pass offer tokens that belong to the product. To obtain offer tokens for a product, fetch the products. An example of how to fetch the products could be found here: "

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v1, "INVALID_OFFER_TOKEN"

    .line 118
    .line 119
    invoke-direct {v0, v1, p1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    const-wide/16 v7, 0x0

    .line 132
    .line 133
    cmp-long v5, v5, v7

    .line 134
    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    cmp-long v5, v5, v7

    .line 146
    .line 147
    if-nez v5, :cond_4

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 151
    .line 152
    const-string v0, "IN_APP_PURCHASE_CONFLICT_PRORATION_MODE_REPLACEMENT_MODE"

    .line 153
    .line 154
    const-string v1, "launchBillingFlow failed because you provided both prorationMode and replacementMode. You can only provide one of them."

    .line 155
    .line 156
    invoke-direct {p1, v0, v1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-nez v5, :cond_7

    .line 165
    .line 166
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    cmp-long v5, v5, v7

    .line 175
    .line 176
    if-nez v5, :cond_6

    .line 177
    .line 178
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    cmp-long v5, v5, v7

    .line 187
    .line 188
    if-nez v5, :cond_6

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 192
    .line 193
    const-string v0, "IN_APP_PURCHASE_REQUIRE_OLD_PRODUCT"

    .line 194
    .line 195
    const-string v1, "launchBillingFlow failed because oldProduct is null. You must provide a valid oldProduct in order to use a proration mode."

    .line 196
    .line 197
    invoke-direct {p1, v0, v1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-eqz v5, :cond_9

    .line 206
    .line 207
    iget-object v5, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_8

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_8
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 221
    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string v1, "IN_APP_PURCHASE_INVALID_OLD_PRODUCT"

    .line 248
    .line 249
    invoke-direct {v0, v1, p1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_9
    :goto_4
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 254
    .line 255
    if-eqz v1, :cond_10

    .line 256
    .line 257
    invoke-static {}, Lcom/android/billingclient/api/g$b;->a()Lcom/android/billingclient/api/g$b$a;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/g$b$a;->c(Lcom/android/billingclient/api/i;)Lcom/android/billingclient/api/g$b$a;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOfferToken()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/g$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$b$a;

    .line 275
    .line 276
    .line 277
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$b$a;->a()Lcom/android/billingclient/api/g$b;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/g$a;->d(Ljava/util/List;)Lcom/android/billingclient/api/g$a;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    if-eqz v1, :cond_b

    .line 302
    .line 303
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_b

    .line 312
    .line 313
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getAccountId()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 318
    .line 319
    .line 320
    :cond_b
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-eqz v1, :cond_c

    .line 325
    .line 326
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_c

    .line 335
    .line 336
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getObfuscatedProfileId()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 341
    .line 342
    .line 343
    :cond_c
    invoke-static {}, Lcom/android/billingclient/api/g$c;->a()Lcom/android/billingclient/api/g$c$a;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    if-eqz v2, :cond_f

    .line 352
    .line 353
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getOldProduct()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_f

    .line 362
    .line 363
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getPurchaseToken()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-eqz v2, :cond_f

    .line 368
    .line 369
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getPurchaseToken()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$c$a;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 381
    .line 382
    .line 383
    move-result-wide v2

    .line 384
    cmp-long v2, v2, v7

    .line 385
    .line 386
    if-eqz v2, :cond_d

    .line 387
    .line 388
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProrationMode()Ljava/lang/Long;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    invoke-direct {p0, v1, v2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->setReplaceProrationMode(Lcom/android/billingclient/api/g$c$a;I)V

    .line 397
    .line 398
    .line 399
    :cond_d
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v2

    .line 407
    cmp-long v2, v2, v7

    .line 408
    .line 409
    if-eqz v2, :cond_e

    .line 410
    .line 411
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getReplacementMode()Ljava/lang/Long;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/g$c$a;->g(I)Lcom/android/billingclient/api/g$c$a;

    .line 420
    .line 421
    .line 422
    :cond_e
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$c$a;->a()Lcom/android/billingclient/api/g$c;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/g$a;->e(Lcom/android/billingclient/api/g$c;)Lcom/android/billingclient/api/g$a;

    .line 427
    .line 428
    .line 429
    :cond_f
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 430
    .line 431
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 432
    .line 433
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/d;->i(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    return-object p1

    .line 446
    :cond_10
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 447
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string p1, " are not available. This method must be run with the app in foreground."

    .line 464
    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    const-string v1, "ACTIVITY_UNAVAILABLE"

    .line 473
    .line 474
    invoke-direct {v0, v1, p1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    throw v0

    .line 478
    :cond_11
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 479
    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->getProduct()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    const-string v1, "NOT_FOUND"

    .line 506
    .line 507
    invoke-direct {v0, v1, p1, v4}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    throw v0

    .line 511
    :cond_12
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/app/Application;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->endBillingClientConnection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public queryProductDetailsAsync(Ljava/util/List;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;",
            ">;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/j;->a()Lcom/android/billingclient/api/j$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/j$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/j$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/j$a;->a()Lcom/android/billingclient/api/j;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 30
    .line 31
    new-instance v1, Lio/flutter/plugins/inapppurchase/u;

    .line 32
    .line 33
    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/inapppurchase/u;-><init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/d;->k(Lcom/android/billingclient/api/j;Lc2/l;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "error"

    .line 52
    .line 53
    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public queryPurchaseHistoryAsync(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lc2/p;->a()Lc2/p$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Lc2/p$a;->b(Ljava/lang/String;)Lc2/p$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lc2/p$a;->a()Lc2/p;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v1, Lio/flutter/plugins/inapppurchase/b0;

    .line 30
    .line 31
    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/b0;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/d;->l(Lc2/p;Lc2/m;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "error"

    .line 50
    .line 51
    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public queryPurchasesAsync(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lc2/q;->a()Lc2/q$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lc2/q$a;->b(Ljava/lang/String;)Lc2/q$a;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 25
    .line 26
    invoke-virtual {v0}, Lc2/q$a;->a()Lc2/q;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lio/flutter/plugins/inapppurchase/t;

    .line 31
    .line 32
    invoke-direct {v1, p2}, Lio/flutter/plugins/inapppurchase/t;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/d;->n(Lc2/q;Lc2/n;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "error"

    .line 51
    .line 52
    invoke-direct {v0, v2, v1, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public showAlternativeBillingOnlyInformationDialog(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->getNullBillingClientError()Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 18
    .line 19
    const-string v1, "Not attempting to show dialog"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "ACTIVITY_UNAVAILABLE"

    .line 23
    .line 24
    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_0
    new-instance v2, Lio/flutter/plugins/inapppurchase/v;

    .line 32
    .line 33
    invoke-direct {v2, p1}, Lio/flutter/plugins/inapppurchase/v;-><init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/d;->q(Landroid/app/Activity;Lc2/e;)Lcom/android/billingclient/api/h;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "error"

    .line 52
    .line 53
    invoke-direct {v1, v3, v2, v0}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public startConnection(Ljava/lang/Long;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;",
            "Lio/flutter/plugins/inapppurchase/Messages$Result<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClientFactory:Lio/flutter/plugins/inapppurchase/BillingClientFactory;

    .line 6
    .line 7
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactory;->createBillingClient(Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;)Lcom/android/billingclient/api/d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->billingClient:Lcom/android/billingclient/api/d;

    .line 18
    .line 19
    new-instance v0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;

    .line 20
    .line 21
    invoke-direct {v0, p0, p3, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;-><init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Ljava/lang/Long;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/d;->r(Lc2/g;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "error"

    .line 40
    .line 41
    invoke-direct {p2, v1, v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, p2}, Lio/flutter/plugins/inapppurchase/Messages$Result;->error(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected updateCachedProducts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/billingclient/api/i;

    .line 19
    .line 20
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->cachedProducts:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method
