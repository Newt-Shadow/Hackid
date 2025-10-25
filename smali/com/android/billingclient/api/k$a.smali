.class public Lcom/android/billingclient/api/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lc2/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/k$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/billingclient/api/k$a;->b:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/android/billingclient/api/k;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/android/billingclient/api/k;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/android/billingclient/api/k;->d(Lcom/android/billingclient/api/k;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/k$a;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/android/billingclient/api/k;->e(Lcom/android/billingclient/api/k;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "SKU list must be set"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v1, "SKU type must be set"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public b(Ljava/util/List;)Lcom/android/billingclient/api/k$a;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/billingclient/api/k$a;->b:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/billingclient/api/k$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/k$a;->a:Ljava/lang/String;

    return-object p0
.end method
