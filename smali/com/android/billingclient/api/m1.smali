.class public final synthetic Lcom/android/billingclient/api/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lc2/r;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lc2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/m1;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/m1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/m1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/android/billingclient/api/m1;->d:Lc2/r;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/billingclient/api/m1;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/m1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/m1;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/billingclient/api/m1;->d:Lc2/r;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/billingclient/api/e;->t0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lc2/r;)Ljava/lang/Object;

    return-object v4
.end method
