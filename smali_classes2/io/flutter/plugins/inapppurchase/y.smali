.class public final synthetic Lio/flutter/plugins/inapppurchase/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/j;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/inapppurchase/Messages$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/inapppurchase/Messages$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/y;->a:Lio/flutter/plugins/inapppurchase/Messages$Result;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/y;->a:Lio/flutter/plugins/inapppurchase/Messages$Result;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/inapppurchase/MethodCallHandlerImpl;->v(Lio/flutter/plugins/inapppurchase/Messages$Result;Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    return-void
.end method
