.class public Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field static final PROXY_PACKAGE_KEY:Ljava/lang/String; = "PROXY_PACKAGE"

.field static final PROXY_VALUE:Ljava/lang/String; = "io.flutter.plugins.inapppurchase"


# instance fields
.field private methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setUpMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;

    .line 9
    .line 10
    invoke-direct {v2}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v3, p2, v0, v2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;-><init>(Landroid/app/Activity;Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/BillingClientFactory;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private teardownMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "PROXY_PACKAGE"

    .line 10
    .line 11
    const-string v2, "io.flutter.plugins.inapppurchase"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 17
    .line 18
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->setUpMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->onDetachedFromActivity()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->teardownMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setMethodCallHandler(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/InAppPurchasePlugin;->methodCallHandler:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 2
    .line 3
    return-void
.end method
