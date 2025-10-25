.class public final synthetic Lcom/android/billingclient/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lc2/d;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/n;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/n;->b:Lc2/d;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/n;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/n;->b:Lc2/d;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/e;->v0(Lc2/d;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
