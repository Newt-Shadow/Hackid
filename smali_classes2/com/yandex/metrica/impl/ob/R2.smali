.class public Lcom/yandex/metrica/impl/ob/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/O0;


# static fields
.field private static volatile f:Lcom/yandex/metrica/impl/ob/R2; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile g:Z = false


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/Q2;

.field private final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/yandex/metrica/impl/ob/T0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/S0;

.field private final e:Lcom/yandex/metrica/impl/ob/Im;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q2;Lcom/yandex/metrica/impl/ob/Im;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/Q2;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Im;)Lcom/yandex/metrica/impl/ob/S0;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yandex/metrica/impl/ob/R2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q2;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/Im;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q2;Lcom/yandex/metrica/impl/ob/S0;Lcom/yandex/metrica/impl/ob/Im;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/R2;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/R2;->b:Lcom/yandex/metrica/impl/ob/Q2;

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/R2;->d:Lcom/yandex/metrica/impl/ob/S0;

    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/R2;->e:Lcom/yandex/metrica/impl/ob/Im;

    .line 8
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance p2, Lcom/yandex/metrica/impl/ob/R2$a;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/ob/R2$a;-><init>(Lcom/yandex/metrica/impl/ob/R2;)V

    invoke-direct {p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/R2;->c:Ljava/util/concurrent/FutureTask;

    .line 9
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/Im;->b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yandex/metrica/impl/ob/R2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/R2;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/yandex/metrica/impl/ob/Q2;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Q2;-><init>()V

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/P;->d()Lcom/yandex/metrica/impl/ob/Im;

    move-result-object v3

    .line 7
    invoke-direct {v1, p0, v2, v3}, Lcom/yandex/metrica/impl/ob/R2;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q2;Lcom/yandex/metrica/impl/ob/Im;)V

    .line 8
    sput-object v1, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 9
    sget-object p0, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R2;->e:Lcom/yandex/metrica/impl/ob/Im;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Im;->b()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/S2;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/S2;-><init>(Lcom/yandex/metrica/impl/ob/R2;)V

    invoke-interface {v1, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    return-object p0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/R2;)Lcom/yandex/metrica/impl/ob/T0;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R2;->b:Lcom/yandex/metrica/impl/ob/Q2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R2;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/R2;->d:Lcom/yandex/metrica/impl/ob/S0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/metrica/impl/ob/Q2;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/S0;)Lcom/yandex/metrica/impl/ob/T0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/n1;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/n1;->setUserProfileID(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/n1;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/n1;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/R2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/R2;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static b(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/n1;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/R2;)Lcom/yandex/metrica/impl/ob/Im;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/R2;->e:Lcom/yandex/metrica/impl/ob/Im;

    return-object p0
.end method

.method public static c(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->f()Lcom/yandex/metrica/impl/ob/n1;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ob/n1;->setStatisticsSending(Z)V

    return-void
.end method

.method private static f()Lcom/yandex/metrica/impl/ob/n1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->f()Lcom/yandex/metrica/impl/ob/l0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0
.end method

.method private g()Lcom/yandex/metrica/impl/ob/T0;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R2;->c:Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/T0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public static declared-synchronized h()Z
    .locals 2

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/yandex/metrica/impl/ob/R2;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static declared-synchronized i()Z
    .locals 2

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/R2;->c:Ljava/util/concurrent/FutureTask;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/T0;->d()Lcom/yandex/metrica/impl/ob/k1;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1
.end method

.method public static declared-synchronized j()V
    .locals 2

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/yandex/metrica/impl/ob/R2;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public static k()Lcom/yandex/metrica/impl/ob/R2;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/R2;->f:Lcom/yandex/metrica/impl/ob/R2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/T0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R2;->d:Lcom/yandex/metrica/impl/ob/S0;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/S0;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/N0;
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/O0;->b()Lcom/yandex/metrica/impl/ob/N0;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/T0;->a(Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/j;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R2;->d:Lcom/yandex/metrica/impl/ob/S0;

    invoke-interface {v0, p1, p0}, Lcom/yandex/metrica/impl/ob/S0;->a(Lcom/yandex/metrica/j;Lcom/yandex/metrica/impl/ob/O0;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/T0;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/yandex/metrica/f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/T0;->c(Lcom/yandex/metrica/f;)V

    return-void
.end method

.method public d()Lcom/yandex/metrica/impl/ob/k1;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/R2;->g()Lcom/yandex/metrica/impl/ob/T0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/T0;->d()Lcom/yandex/metrica/impl/ob/k1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/Eb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R2;->d:Lcom/yandex/metrica/impl/ob/S0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/S0;->d()Lcom/yandex/metrica/impl/ob/Eb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
