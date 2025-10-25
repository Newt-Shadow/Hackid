.class Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/o;


# instance fields
.field private final callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;


# direct methods
.method constructor <init>(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/h;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

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
    iget-object p2, p0, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener$1;-><init>(Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->onPurchasesUpdated(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
