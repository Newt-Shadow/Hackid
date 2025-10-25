.class public final synthetic Lio/flutter/plugins/inapppurchase/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/m;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/inapppurchase/Messages$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/b0;->a:Lio/flutter/plugins/inapppurchase/Messages$Result;

    return-void
.end method


# virtual methods
.method public final onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/b0;->a:Lio/flutter/plugins/inapppurchase/Messages$Result;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->o(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method
