.class public final Lyb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/n;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/j;

.field private final b:Lid/a;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Lyb/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/j;Lid/a;Ljava/util/List;Ljava/util/List;Lyb/g;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "utilsProvider"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "billingInfoSentListener"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "purchaseHistoryRecords"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "skuDetails"

    .line 22
    .line 23
    invoke-static {p5, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "billingLibraryConnectionHolder"

    .line 27
    .line 28
    invoke-static {p6, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lyb/c;->a:Lcom/yandex/metrica/impl/ob/j;

    .line 35
    .line 36
    iput-object p3, p0, Lyb/c;->b:Lid/a;

    .line 37
    .line 38
    iput-object p4, p0, Lyb/c;->c:Ljava/util/List;

    .line 39
    .line 40
    iput-object p5, p0, Lyb/c;->d:Ljava/util/List;

    .line 41
    .line 42
    iput-object p6, p0, Lyb/c;->e:Lyb/g;

    .line 43
    .line 44
    return-void
.end method

.method private final a(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->h()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "sku"

    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method private final b(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lyb/c;->e(Ljava/util/List;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lyb/c;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lyb/c;->a(Ljava/util/List;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lyb/c;->d:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, p2

    .line 46
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    sget-object v4, Lcom/yandex/metrica/impl/ob/e;->a:Lcom/yandex/metrica/impl/ob/e;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v6, p1

    .line 63
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/android/billingclient/api/Purchase;

    .line 70
    .line 71
    invoke-virtual {v4, v3, v2, v5}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/android/billingclient/api/SkuDetails;Lcom/android/billingclient/api/Purchase;)Lzb/d;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v2, 0x0

    .line 77
    :goto_1
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lyb/c;->a:Lcom/yandex/metrica/impl/ob/j;

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->d()Lcom/yandex/metrica/impl/ob/m;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/yandex/metrica/impl/ob/b3;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/b3;->a(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lyb/c;->b:Lid/a;

    .line 95
    .line 96
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static final synthetic c(Lyb/c;)Lyb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/c;->e:Lyb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lyb/c;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyb/c;->b(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->l()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "sku"

    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "purchases"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lyb/c;->a:Lcom/yandex/metrica/impl/ob/j;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lyb/c$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1, p2}, Lyb/c$a;-><init>(Lyb/c;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
