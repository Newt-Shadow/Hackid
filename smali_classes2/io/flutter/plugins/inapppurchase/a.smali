.class public final synthetic Lio/flutter/plugins/inapppurchase/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;

.field public final synthetic b:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/a;->a:Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;

    iput-object p2, p0, Lio/flutter/plugins/inapppurchase/a;->b:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/a;->a:Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;

    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/a;->b:Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;

    invoke-static {v0, v1, p1}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;->a(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/l;)V

    return-void
.end method
