.class public final synthetic Lio/flutter/plugins/inapppurchase/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/f;->a:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/f;->a:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;->c(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
