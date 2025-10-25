.class Lxb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/m;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/android/billingclient/api/d;

.field private final e:Lcom/yandex/metrica/impl/ob/j;

.field private final f:Ljava/lang/String;

.field private final g:Lxb/f;

.field private final h:Lzb/g;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/lang/String;Lxb/f;Lzb/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxb/b;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 5
    .line 6
    iput-object p2, p0, Lxb/b;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lxb/b;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lxb/b;->d:Lcom/android/billingclient/api/d;

    .line 11
    .line 12
    iput-object p5, p0, Lxb/b;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 13
    .line 14
    iput-object p6, p0, Lxb/b;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lxb/b;->g:Lxb/f;

    .line 17
    .line 18
    iput-object p8, p0, Lxb/b;->h:Lzb/g;

    .line 19
    .line 20
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

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
    new-instance v10, Lzb/a;

    .line 23
    .line 24
    iget-object v2, p0, Lxb/b;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->d(Ljava/lang/String;)Lzb/e;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getSku()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    const-wide/16 v8, 0x0

    .line 43
    .line 44
    move-object v2, v10

    .line 45
    move-object v4, v11

    .line 46
    invoke-direct/range {v2 .. v9}, Lzb/a;-><init>(Lzb/e;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lxb/b;)Lxb/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/b;->g:Lxb/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lxb/b;->a(Ljava/util/List;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lxb/b;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/j;->f()Lcom/yandex/metrica/impl/ob/o;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lxb/b;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 20
    .line 21
    iget-object v1, p0, Lxb/b;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/j;->e()Lcom/yandex/metrica/impl/ob/l;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p2, v0, p1, v1}, Lcom/yandex/metrica/impl/ob/o;->a(Lcom/yandex/metrica/impl/ob/i;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/l;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lxb/b;->d(Ljava/util/Map;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lxb/b$b;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1, p2}, Lxb/b$b;-><init>(Lxb/b;Ljava/util/Map;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2, v0}, Lxb/b;->e(Ljava/util/Map;Ljava/util/concurrent/Callable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method private e(Ljava/util/Map;Ljava/util/concurrent/Callable;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/k;->c()Lcom/android/billingclient/api/k$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lxb/b;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/k$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/k$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/k$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/k$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/k$a;->a()Lcom/android/billingclient/api/k;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v9, Lxb/d;

    .line 29
    .line 30
    iget-object v2, p0, Lxb/b;->f:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lxb/b;->b:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    iget-object v4, p0, Lxb/b;->d:Lcom/android/billingclient/api/d;

    .line 35
    .line 36
    iget-object v5, p0, Lxb/b;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 37
    .line 38
    iget-object v10, p0, Lxb/b;->g:Lxb/f;

    .line 39
    .line 40
    move-object v1, v9

    .line 41
    move-object v6, p2

    .line 42
    move-object v7, p1

    .line 43
    move-object v8, v10

    .line 44
    invoke-direct/range {v1 .. v8}, Lxb/d;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/util/concurrent/Callable;Ljava/util/Map;Lxb/f;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10, v9}, Lxb/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lxb/b;->c:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    new-instance p2, Lxb/b$c;

    .line 53
    .line 54
    invoke-direct {p2, p0, v0, v9}, Lxb/b$c;-><init>(Lxb/b;Lcom/android/billingclient/api/k;Lxb/d;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method static synthetic f(Lxb/b;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxb/b;->c(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lxb/b;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/b;->d:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lxb/b;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/b;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected d(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lxb/b;->e:Lcom/yandex/metrica/impl/ob/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->e()Lcom/yandex/metrica/impl/ob/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lxb/b;->h:Lzb/g;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lzb/a;

    .line 35
    .line 36
    iget-object v5, v4, Lzb/a;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iput-wide v1, v4, Lzb/a;->e:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, v4, Lzb/a;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v5}, Lcom/yandex/metrica/impl/ob/l;->a(Ljava/lang/String;)Lzb/a;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    iget-wide v5, v5, Lzb/a;->e:J

    .line 56
    .line 57
    iput-wide v5, v4, Lzb/a;->e:J

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/l;->a(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/l;->a()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lxb/b;->f:Ljava/lang/String;

    .line 70
    .line 71
    const-string p2, "inapp"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/l;->b()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxb/b;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lxb/b$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lxb/b$a;-><init>(Lxb/b;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
