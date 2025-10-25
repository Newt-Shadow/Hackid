.class Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/inapppurchase/Messages$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugins/inapppurchase/Messages$Result<",
        "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

.field final synthetic val$wrapped:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$wrapped:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public success(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$wrapped:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->val$wrapped:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi$6;->success(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;)V

    return-void
.end method
