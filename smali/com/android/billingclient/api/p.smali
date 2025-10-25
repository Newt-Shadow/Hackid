.class public final synthetic Lcom/android/billingclient/api/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lc2/i;

.field public final synthetic c:Lc2/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/i;Lc2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/p;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/p;->b:Lc2/i;

    iput-object p3, p0, Lcom/android/billingclient/api/p;->c:Lc2/j;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/p;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/p;->b:Lc2/i;

    iget-object v2, p0, Lcom/android/billingclient/api/p;->c:Lc2/j;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->q0(Lc2/i;Lc2/j;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
