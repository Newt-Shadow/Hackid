.class Lxb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/android/billingclient/api/d;

.field private final d:Lcom/yandex/metrica/impl/ob/j;

.field private final e:Ljava/util/concurrent/Callable;

.field private final f:Ljava/util/Map;

.field private final g:Lxb/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/billingclient/api/d;Lcom/yandex/metrica/impl/ob/j;Ljava/util/concurrent/Callable;Ljava/util/Map;Lxb/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxb/d;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lxb/d;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lxb/d;->c:Lcom/android/billingclient/api/d;

    .line 9
    .line 10
    iput-object p4, p0, Lxb/d;->d:Lcom/yandex/metrica/impl/ob/j;

    .line 11
    .line 12
    iput-object p5, p0, Lxb/d;->e:Ljava/util/concurrent/Callable;

    .line 13
    .line 14
    iput-object p6, p0, Lxb/d;->f:Ljava/util/Map;

    .line 15
    .line 16
    iput-object p7, p0, Lxb/d;->g:Lxb/f;

    .line 17
    .line 18
    return-void
.end method

.method private b(Lcom/android/billingclient/api/SkuDetails;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    return-wide v0
.end method

.method private c()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lxb/d;->c:Lcom/android/billingclient/api/d;

    .line 7
    .line 8
    iget-object v2, p0, Lxb/d;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/d;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method static synthetic d(Lxb/d;)Lxb/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/d;->g:Lxb/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Lcom/android/billingclient/api/SkuDetails;Lzb/a;Lcom/android/billingclient/api/Purchase;)Lzb/d;
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v18, Lzb/d;

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(Ljava/lang/String;)Lzb/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/SkuDetails;->e()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-direct/range {p0 .. p1}, Lxb/d;->b(Lcom/android/billingclient/api/SkuDetails;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-direct/range {p0 .. p1}, Lxb/d;->i(Lcom/android/billingclient/api/SkuDetails;)Lzb/c;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-direct/range {p0 .. p1}, Lxb/d;->h(Lcom/android/billingclient/api/SkuDetails;)I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/SkuDetails;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static {v11}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->k()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v12, ""

    .line 54
    .line 55
    :goto_0
    iget-object v13, v0, Lzb/a;->c:Ljava/lang/String;

    .line 56
    .line 57
    iget-wide v14, v0, Lzb/a;->d:J

    .line 58
    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->n()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    :goto_1
    move/from16 v16, v0

    .line 68
    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const-string v0, "{}"

    .line 77
    .line 78
    :goto_2
    move-object/from16 v17, v0

    .line 79
    .line 80
    move-object/from16 v0, v18

    .line 81
    .line 82
    invoke-direct/range {v0 .. v17}, Lzb/d;-><init>(Lzb/e;Ljava/lang/String;IJLjava/lang/String;JLzb/c;ILzb/c;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v18
.end method

.method private f(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 5

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
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    invoke-direct {p0}, Lxb/d;->c()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 39
    .line 40
    iget-object v2, p0, Lxb/d;->f:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lzb/a;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v4, p1

    .line 57
    check-cast v4, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-direct {p0, v1, v2, v3}, Lxb/d;->e(Lcom/android/billingclient/api/SkuDetails;Lzb/a;Lcom/android/billingclient/api/Purchase;)Lzb/d;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lxb/d;->d:Lcom/yandex/metrica/impl/ob/j;

    .line 76
    .line 77
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->d()Lcom/yandex/metrica/impl/ob/m;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/yandex/metrica/impl/ob/b3;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/b3;->a(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lxb/d;->e:Ljava/util/concurrent/Callable;

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method static synthetic g(Lxb/d;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxb/d;->f(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h(Lcom/android/billingclient/api/SkuDetails;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return p1

    .line 16
    :catchall_0
    const/4 v0, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    const-string v2, "getIntroductoryPriceCycles"

    .line 22
    .line 23
    :try_start_2
    new-array v3, v0, [Ljava/lang/Class;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-array v2, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    return p1

    .line 44
    :catchall_1
    :cond_0
    return v0

    .line 45
    :cond_1
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method private i(Lcom/android/billingclient/api/SkuDetails;)Lzb/c;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxb/d;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lxb/d$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lxb/d$a;-><init>(Lxb/d;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
