.class public final synthetic Lcom/android/billingclient/api/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/os/ResultReceiver;

.field public final synthetic d:Lc2/e;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Landroid/app/Activity;Landroid/os/ResultReceiver;Lc2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/e1;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/e1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/billingclient/api/e1;->c:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/billingclient/api/e1;->d:Lc2/e;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/e1;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/e1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/billingclient/api/e1;->c:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lcom/android/billingclient/api/e1;->d:Lc2/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/e;->w0(Landroid/app/Activity;Landroid/os/ResultReceiver;Lc2/e;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
