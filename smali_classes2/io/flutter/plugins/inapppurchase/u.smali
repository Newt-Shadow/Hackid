.class public final synthetic Lio/flutter/plugins/inapppurchase/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

.field public final synthetic b:Lio/flutter/plugins/inapppurchase/Messages$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/u;->a:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/u;->b:Lio/flutter/plugins/inapppurchase/Messages$Result;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/u;->a:Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;

    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/u;->b:Lio/flutter/plugins/inapppurchase/Messages$Result;

    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->w(Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method
