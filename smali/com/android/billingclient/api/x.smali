.class final Lcom/android/billingclient/api/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc2/m;

.field final synthetic c:Lcom/android/billingclient/api/e;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Lc2/m;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/billingclient/api/x;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/x;->b:Lc2/m;

    iput-object p1, p0, Lcom/android/billingclient/api/x;->c:Lcom/android/billingclient/api/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/x;->c:Lcom/android/billingclient/api/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/x;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->l0(Lcom/android/billingclient/api/e;Ljava/lang/String;)Lcom/android/billingclient/api/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/g0;->a()Lcom/android/billingclient/api/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/g0;->b()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/billingclient/api/x;->b:Lc2/m;

    .line 18
    .line 19
    invoke-interface {v2, v1, v0}, Lc2/m;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method
