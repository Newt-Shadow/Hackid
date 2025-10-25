.class public final synthetic Lcom/android/billingclient/api/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/h1;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/h1;->b:Lc2/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/h1;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/h1;->b:Lc2/b;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/e;->K(Lc2/b;)V

    return-void
.end method
