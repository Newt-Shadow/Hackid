.class public final synthetic Lcom/android/billingclient/api/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lc2/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Landroid/os/Bundle;Lc2/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/i1;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/i1;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/billingclient/api/i1;->c:Lc2/h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/i1;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/i1;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/billingclient/api/i1;->c:Lc2/h;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->r0(Landroid/os/Bundle;Lc2/h;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
