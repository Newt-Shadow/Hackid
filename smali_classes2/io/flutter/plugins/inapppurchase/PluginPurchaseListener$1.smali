.class Lio/flutter/plugins/inapppurchase/PluginPurchaseListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/inapppurchase/Messages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;


# direct methods
.method constructor <init>(Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener$1;->this$0:Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPurchaseUpdated handler error: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "IN_APP_PURCHASE"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public success()V
    .locals 0

    return-void
.end method
