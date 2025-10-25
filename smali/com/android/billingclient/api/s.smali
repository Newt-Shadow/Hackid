.class public final synthetic Lcom/android/billingclient/api/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lcom/android/billingclient/api/j;

.field public final synthetic c:Lc2/l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/j;Lc2/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/s;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/s;->b:Lcom/android/billingclient/api/j;

    iput-object p3, p0, Lcom/android/billingclient/api/s;->c:Lc2/l;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/s;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/s;->b:Lcom/android/billingclient/api/j;

    iget-object v2, p0, Lcom/android/billingclient/api/s;->c:Lc2/l;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->s0(Lcom/android/billingclient/api/j;Lc2/l;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
