.class Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->startConnection(Ljava/lang/Long;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private alreadyFinished:Z

.field final synthetic this$0:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

.field final synthetic val$handle:Ljava/lang/Long;

.field final synthetic val$result:Lio/flutter/plugins/inapppurchase/Messages$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->this$0:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->val$result:Lio/flutter/plugins/inapppurchase/Messages$Result;

    .line 4
    .line 5
    iput-object p3, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->val$handle:Ljava/lang/Long;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->alreadyFinished:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->this$0:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->callbackApi:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->val$handle:Ljava/lang/Long;

    .line 6
    .line 7
    new-instance v2, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1$1;-><init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->onBillingServiceDisconnected(Ljava/lang/Long;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/h;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->alreadyFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "InAppPurchasePlugin"

    .line 6
    .line 7
    const-string v0, "Tried to call onBillingSetupFinished multiple times."

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->alreadyFinished:Z

    .line 15
    .line 16
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl$1;->val$result:Lio/flutter/plugins/inapppurchase/Messages$Result;

    .line 17
    .line 18
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lio/flutter/plugins/inapppurchase/Messages$Result;->success(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
