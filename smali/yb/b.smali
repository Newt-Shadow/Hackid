.class public final Lyb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/m;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Lcom/android/billingclient/api/d;

.field private final c:Lcom/yandex/metrica/impl/ob/j;

.field private final d:Ljava/lang/String;

.field private final e:Lyb/g;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/lang/String;Lyb/g;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "billingClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "utilsProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "type"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "billingLibraryConnectionHolder"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lyb/b;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 30
    .line 31
    iput-object p2, p0, Lyb/b;->b:Lcom/android/billingclient/api/d;

    .line 32
    .line 33
    iput-object p3, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 34
    .line 35
    iput-object p4, p0, Lyb/b;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p5, p0, Lyb/b;->e:Lyb/g;

    .line 38
    .line 39
    return-void
.end method

.method private final a(Ljava/util/List;)Ljava/util/Map;
    .locals 13

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
    if-eqz v1, :cond_4

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
    new-instance v12, Lzb/a;

    .line 43
    .line 44
    iget-object v4, p0, Lyb/b;->d:Ljava/lang/String;

    .line 45
    .line 46
    const-string v5, "type"

    .line 47
    .line 48
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const v6, 0x360a33

    .line 56
    .line 57
    .line 58
    if-eq v5, v6, :cond_2

    .line 59
    .line 60
    const v6, 0x5fb1edc

    .line 61
    .line 62
    .line 63
    if-eq v5, v6, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string v5, "inapp"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    sget-object v4, Lzb/e;->a:Lzb/e;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-string v5, "subs"

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    sget-object v4, Lzb/e;->b:Lzb/e;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    sget-object v4, Lzb/e;->c:Lzb/e;

    .line 89
    .line 90
    :goto_2
    move-object v5, v4

    .line 91
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    const-wide/16 v10, 0x0

    .line 100
    .line 101
    move-object v4, v12

    .line 102
    move-object v6, v3

    .line 103
    invoke-direct/range {v4 .. v11}, Lzb/a;-><init>(Lzb/e;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 104
    .line 105
    .line 106
    const-string v4, "info.sku"

    .line 107
    .line 108
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
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
    if-nez p1, :cond_2

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lyb/b;->a(Ljava/util/List;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object p1, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->f()Lcom/yandex/metrica/impl/ob/o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lyb/b;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 21
    .line 22
    iget-object v2, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/j;->e()Lcom/yandex/metrica/impl/ob/l;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/o;->a(Lcom/yandex/metrica/impl/ob/i;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/l;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string p1, "utilsProvider.updatePoli\u2026lingInfoManager\n        )"

    .line 33
    .line 34
    invoke-static {v2, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/yandex/metrica/impl/ob/g;->a:Lcom/yandex/metrica/impl/ob/g;

    .line 44
    .line 45
    iget-object v3, p0, Lyb/b;->d:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->e()Lcom/yandex/metrica/impl/ob/l;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string p1, "utilsProvider.billingInfoManager"

    .line 54
    .line 55
    invoke-static {v4, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/16 v6, 0x10

    .line 60
    .line 61
    invoke-static/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/g;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/l;Lzb/g;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lyb/b$b;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1, v2}, Lyb/b$b;-><init>(Lyb/b;Ljava/util/Map;Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p2, p1, v0}, Lyb/b;->c(Ljava/util/List;Ljava/util/List;Lid/a;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method private final c(Ljava/util/List;Ljava/util/List;Lid/a;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/k;->c()Lcom/android/billingclient/api/k$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lyb/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/k$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/k$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/k$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/k$a;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/k$a;->a()Lcom/android/billingclient/api/k;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "SkuDetailsParams.newBuil\u2026kus)\n            .build()"

    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lyb/e;

    .line 25
    .line 26
    iget-object v2, p0, Lyb/b;->d:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lyb/b;->b:Lcom/android/billingclient/api/d;

    .line 29
    .line 30
    iget-object v4, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 31
    .line 32
    iget-object v7, p0, Lyb/b;->e:Lyb/g;

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    move-object v5, p3

    .line 36
    move-object v6, p1

    .line 37
    invoke-direct/range {v1 .. v7}, Lyb/e;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Lid/a;Ljava/util/List;Lyb/g;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lyb/b;->e:Lyb/g;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lyb/g;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->c()Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p3, Lyb/b$c;

    .line 52
    .line 53
    invoke-direct {p3, p0, p2, v0}, Lyb/b$c;-><init>(Lyb/b;Lcom/android/billingclient/api/k;Lyb/e;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static final synthetic d(Lyb/b;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/b;->b:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lyb/b;)Lyb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/b;->e:Lyb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lyb/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lyb/b;)Lcom/yandex/metrica/impl/ob/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lyb/b;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyb/b;->b(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/b;->c:Lcom/yandex/metrica/impl/ob/j;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lyb/b$a;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lyb/b$a;-><init>(Lyb/b;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
