.class public final Lcom/yandex/metrica/impl/ob/rd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/qd;",
            "Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field public static final c:Lcom/yandex/metrica/impl/ob/rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/rd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/rd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/rd;->c:Lcom/yandex/metrica/impl/ob/rd;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/yandex/metrica/impl/ob/rd;->a:Ljava/util/Map;

    .line 14
    .line 15
    const-string v0, "5.3.0"

    .line 16
    .line 17
    const-string v1, "45003240"

    .line 18
    .line 19
    const-string v2, "com.yandex.mobile.metrica.sdk"

    .line 20
    .line 21
    invoke-static {v2, v0, v1}, Lcc/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/yandex/metrica/impl/ob/rd;->b:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/rd;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    .line 4
    new-instance v2, Lcom/yandex/metrica/impl/ob/pd;

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.get\u2026ance().servicePreferences"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v2, v3, p1}, Lcom/yandex/metrica/impl/ob/pd;-><init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/qd;)V

    .line 7
    invoke-direct {v1, v2}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;)V

    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    check-cast v1, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;)Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 18

    .line 27
    new-instance v9, Lcom/yandex/metrica/impl/ob/zm;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/zm;-><init>()V

    .line 28
    new-instance v4, Lcom/yandex/metrica/impl/ob/Pg;

    invoke-direct {v4, v9}, Lcom/yandex/metrica/impl/ob/Pg;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    .line 29
    new-instance v5, Lcom/yandex/metrica/impl/ob/C0;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/C0;-><init>(Ljava/lang/Object;)V

    .line 30
    new-instance v17, Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 31
    new-instance v11, Lcom/yandex/metrica/impl/ob/Gm;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/Gm;-><init>()V

    .line 32
    new-instance v12, Lcom/yandex/metrica/impl/ob/od;

    move-object/from16 v1, p0

    invoke-direct {v12, v1}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v13, Lcom/yandex/metrica/impl/ob/ld;

    sget-object v0, Lcom/yandex/metrica/impl/ob/rd;->c:Lcom/yandex/metrica/impl/ob/rd;

    sget-object v2, Lcom/yandex/metrica/impl/ob/qd;->b:Lcom/yandex/metrica/impl/ob/qd;

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/yandex/metrica/impl/ob/ld;-><init>(Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;)V

    .line 34
    new-instance v14, Lcom/yandex/metrica/impl/ob/cd;

    .line 35
    new-instance v6, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    invoke-direct {v6}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;-><init>()V

    .line 36
    new-instance v7, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    .line 38
    invoke-direct {v7, v0}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/ResponseValidityChecker;)V

    .line 39
    new-instance v8, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    invoke-direct {v8, v4, v5}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;-><init>(Lcom/yandex/metrica/networktasks/api/IParamsAppender;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    move-object v0, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    .line 41
    invoke-static {}, Lcom/yandex/metrica/impl/ob/A2;->a()Lcom/yandex/metrica/networktasks/api/NetworkTask$ShouldTryNextHostCondition;

    move-result-object v0

    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 42
    sget-object v16, Lcom/yandex/metrica/impl/ob/rd;->b:Ljava/lang/String;

    move-object/from16 v10, v17

    .line 43
    invoke-direct/range {v10 .. v16}, Lcom/yandex/metrica/networktasks/api/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object v17
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/E4;Lcom/yandex/metrica/impl/ob/b8;)Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 14

    .line 10
    new-instance v8, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/Og;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Og;-><init>()V

    move-object v1, p1

    .line 12
    invoke-direct {v8, v0, p1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;-><init>(Lcom/yandex/metrica/networktasks/api/IParamsAppender;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    .line 13
    new-instance v9, Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 14
    new-instance v10, Lcom/yandex/metrica/impl/ob/Gm;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/Gm;-><init>()V

    .line 15
    new-instance v11, Lcom/yandex/metrica/impl/ob/od;

    move-object v0, p0

    invoke-direct {v11, p0}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v12, Lcom/yandex/metrica/impl/ob/ld;

    sget-object v0, Lcom/yandex/metrica/impl/ob/rd;->c:Lcom/yandex/metrica/impl/ob/rd;

    sget-object v2, Lcom/yandex/metrica/impl/ob/qd;->d:Lcom/yandex/metrica/impl/ob/qd;

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/yandex/metrica/impl/ob/ld;-><init>(Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;)V

    .line 17
    new-instance v13, Lcom/yandex/metrica/impl/ob/B4;

    .line 18
    new-instance v5, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;

    invoke-direct {v5}, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;-><init>()V

    .line 19
    new-instance v6, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    invoke-direct {v6}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;-><init>()V

    .line 20
    new-instance v7, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    .line 22
    invoke-direct {v7, v0}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/ResponseValidityChecker;)V

    move-object v0, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/B4;-><init>(Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/E4;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;)V

    .line 24
    invoke-static {}, Lcom/yandex/metrica/impl/ob/A2;->a()Lcom/yandex/metrica/networktasks/api/NetworkTask$ShouldTryNextHostCondition;

    move-result-object v0

    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 25
    sget-object v7, Lcom/yandex/metrica/impl/ob/rd;->b:Ljava/lang/String;

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/networktasks/api/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object v9
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 16

    .line 44
    new-instance v7, Lcom/yandex/metrica/impl/ob/zm;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/zm;-><init>()V

    .line 45
    new-instance v2, Lcom/yandex/metrica/impl/ob/Qg;

    invoke-direct {v2, v7}, Lcom/yandex/metrica/impl/ob/Qg;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    .line 46
    new-instance v3, Lcom/yandex/metrica/impl/ob/d1;

    move-object/from16 v1, p0

    invoke-direct {v3, v1}, Lcom/yandex/metrica/impl/ob/d1;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 47
    new-instance v15, Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 48
    new-instance v9, Lcom/yandex/metrica/impl/ob/Gm;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/Gm;-><init>()V

    .line 49
    new-instance v10, Lcom/yandex/metrica/impl/ob/od;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v11, Lcom/yandex/metrica/impl/ob/ld;

    sget-object v0, Lcom/yandex/metrica/impl/ob/rd;->c:Lcom/yandex/metrica/impl/ob/rd;

    sget-object v4, Lcom/yandex/metrica/impl/ob/qd;->a:Lcom/yandex/metrica/impl/ob/qd;

    invoke-direct {v0, v4}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/yandex/metrica/impl/ob/ld;-><init>(Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;)V

    .line 51
    new-instance v12, Lcom/yandex/metrica/impl/ob/P1;

    .line 52
    new-instance v4, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    invoke-direct {v4, v2, v3}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;-><init>(Lcom/yandex/metrica/networktasks/api/IParamsAppender;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    .line 53
    new-instance v5, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    invoke-direct {v5}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;-><init>()V

    .line 54
    new-instance v6, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    .line 56
    invoke-direct {v6, v0}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/ResponseValidityChecker;)V

    move-object v0, v12

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/P1;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    .line 58
    invoke-static {}, Lcom/yandex/metrica/impl/ob/A2;->a()Lcom/yandex/metrica/networktasks/api/NetworkTask$ShouldTryNextHostCondition;

    move-result-object v0

    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 59
    sget-object v14, Lcom/yandex/metrica/impl/ob/rd;->b:Ljava/lang/String;

    move-object v8, v15

    .line 60
    invoke-direct/range {v8 .. v14}, Lcom/yandex/metrica/networktasks/api/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object v15
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/impl/ob/Mg;)Lcom/yandex/metrica/networktasks/api/NetworkTask;
    .locals 12

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rg;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Kg;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Kg;-><init>()V

    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v2

    const-string v3, "GlobalServiceLocator.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->j()Lcom/yandex/metrica/impl/ob/jd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rg;-><init>(Lcom/yandex/metrica/impl/ob/Kg;Lcom/yandex/metrica/impl/ob/kd;)V

    .line 62
    new-instance v8, Lcom/yandex/metrica/impl/ob/C0;

    invoke-direct {v8, p1}, Lcom/yandex/metrica/impl/ob/C0;-><init>(Ljava/lang/Object;)V

    .line 63
    new-instance p1, Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 64
    new-instance v2, Lcom/yandex/metrica/impl/ob/Qm;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Qm;-><init>()V

    .line 65
    new-instance v9, Lcom/yandex/metrica/impl/ob/od;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ri;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v10, Lcom/yandex/metrica/impl/ob/ld;

    sget-object v1, Lcom/yandex/metrica/impl/ob/rd;->c:Lcom/yandex/metrica/impl/ob/rd;

    sget-object v3, Lcom/yandex/metrica/impl/ob/qd;->c:Lcom/yandex/metrica/impl/ob/qd;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/yandex/metrica/impl/ob/ld;-><init>(Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;)V

    .line 67
    new-instance v11, Lcom/yandex/metrica/impl/ob/q2;

    .line 68
    new-instance v5, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    invoke-direct {v5, v0, v8}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;-><init>(Lcom/yandex/metrica/networktasks/api/IParamsAppender;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    .line 69
    new-instance v6, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    invoke-direct {v6}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;-><init>()V

    .line 70
    new-instance v7, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    .line 72
    invoke-direct {v7, v0}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/ResponseValidityChecker;)V

    move-object v3, v11

    move-object v4, p0

    .line 73
    invoke-direct/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/q2;-><init>(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    .line 74
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    move-result-object v6

    .line 75
    sget-object v7, Lcom/yandex/metrica/impl/ob/rd;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/networktasks/api/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method
