.class public Lcom/yandex/metrica/impl/ob/Jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/yandex/metrica/impl/ob/Gh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Jh$f;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ServiceConnection;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Bh;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private volatile f:Z

.field private g:Ljava/net/ServerSocket;

.field private h:Lcom/yandex/metrica/impl/ob/di;

.field private i:Lcom/yandex/metrica/impl/ob/Lm;

.field private final j:Lcom/yandex/metrica/impl/ob/M0;

.field private final k:Ldc/b$d;

.field private final l:Lcom/yandex/metrica/impl/ob/zh;

.field private final m:Lcom/yandex/metrica/impl/ob/zh;

.field private final n:Lcom/yandex/metrica/impl/ob/Fh;

.field private final o:Lcom/yandex/metrica/impl/ob/Pm;

.field private final p:Lcom/yandex/metrica/impl/ob/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/di;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Lcom/yandex/metrica/impl/ob/yh;

.field private final r:Lcom/yandex/metrica/impl/ob/Ih;

.field private final s:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Fh;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wh;Lcom/yandex/metrica/impl/ob/wh;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/pi;",
            "Lcom/yandex/metrica/impl/ob/Fh;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/di;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/yandex/metrica/impl/ob/wh;",
            "Lcom/yandex/metrica/impl/ob/wh;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldc/f;->c()Ldc/f;

    move-result-object v0

    invoke-virtual {v0}, Ldc/f;->b()Ldc/b;

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v6

    new-instance v7, Lcom/yandex/metrica/impl/ob/zh;

    const-string v0, "open"

    move-object/from16 v1, p5

    invoke-direct {v7, v0, v1}, Lcom/yandex/metrica/impl/ob/zh;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wh;)V

    new-instance v8, Lcom/yandex/metrica/impl/ob/zh;

    const-string v0, "port_already_in_use"

    move-object/from16 v1, p6

    invoke-direct {v8, v0, v1}, Lcom/yandex/metrica/impl/ob/zh;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wh;)V

    new-instance v9, Lcom/yandex/metrica/impl/ob/yh;

    move-object v0, p1

    move-object/from16 v3, p2

    invoke-direct {v9, p1, v3}, Lcom/yandex/metrica/impl/ob/yh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;)V

    new-instance v10, Lcom/yandex/metrica/impl/ob/Ih;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/Ih;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    .line 4
    invoke-direct/range {v1 .. v13}, Lcom/yandex/metrica/impl/ob/Jh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Ldc/b;Lcom/yandex/metrica/impl/ob/Pm;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/impl/ob/zh;Lcom/yandex/metrica/impl/ob/zh;Lcom/yandex/metrica/impl/ob/yh;Lcom/yandex/metrica/impl/ob/Ih;Lcom/yandex/metrica/impl/ob/Fh;Lcom/yandex/metrica/impl/ob/nm;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Ldc/b;Lcom/yandex/metrica/impl/ob/Pm;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/impl/ob/zh;Lcom/yandex/metrica/impl/ob/zh;Lcom/yandex/metrica/impl/ob/yh;Lcom/yandex/metrica/impl/ob/Ih;Lcom/yandex/metrica/impl/ob/Fh;Lcom/yandex/metrica/impl/ob/nm;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/pi;",
            "Ldc/b;",
            "Lcom/yandex/metrica/impl/ob/Pm;",
            "Lcom/yandex/metrica/impl/ob/M0;",
            "Lcom/yandex/metrica/impl/ob/zh;",
            "Lcom/yandex/metrica/impl/ob/zh;",
            "Lcom/yandex/metrica/impl/ob/yh;",
            "Lcom/yandex/metrica/impl/ob/Ih;",
            "Lcom/yandex/metrica/impl/ob/Fh;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Lcom/yandex/metrica/impl/ob/di;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Jh$a;-><init>(Lcom/yandex/metrica/impl/ob/Jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->a:Landroid/content/ServiceConnection;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/Jh$b;-><init>(Lcom/yandex/metrica/impl/ob/Jh;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->b:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$c;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Jh$c;-><init>(Lcom/yandex/metrica/impl/ob/Jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->c:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jh$d;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Jh$d;-><init>(Lcom/yandex/metrica/impl/ob/Jh;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->d:Ljava/util/HashMap;

    .line 10
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->e:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    .line 12
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Jh;->l:Lcom/yandex/metrica/impl/ob/zh;

    .line 13
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Jh;->m:Lcom/yandex/metrica/impl/ob/zh;

    .line 14
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/Jh;->n:Lcom/yandex/metrica/impl/ob/Fh;

    .line 15
    iput-object p11, p0, Lcom/yandex/metrica/impl/ob/Jh;->p:Lcom/yandex/metrica/impl/ob/nm;

    .line 16
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Jh;->o:Lcom/yandex/metrica/impl/ob/Pm;

    .line 17
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Jh;->q:Lcom/yandex/metrica/impl/ob/yh;

    .line 18
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    .line 19
    filled-new-array {p12}, [Ljava/lang/Object;

    move-result-object p1

    const-string p5, "[YandexUID%sServer]"

    invoke-static {p5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->s:Ljava/lang/String;

    .line 20
    new-instance p5, Lcom/yandex/metrica/impl/ob/Jh$e;

    invoke-direct {p5, p0}, Lcom/yandex/metrica/impl/ob/Jh$e;-><init>(Lcom/yandex/metrica/impl/ob/Jh;)V

    .line 21
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object p4

    .line 22
    invoke-virtual {p3, p5, p4, p1}, Ldc/b;->b(Ljava/lang/Runnable;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Ljava/lang/String;)Ldc/b$d;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->k:Ldc/b$d;

    .line 23
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/pi;->M()Lcom/yandex/metrica/impl/ob/di;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Lcom/yandex/metrica/impl/ob/di;)V

    .line 24
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->c(Lcom/yandex/metrica/impl/ob/di;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Jh;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->a:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/yandex/metrica/impl/ob/di;)Lcom/yandex/metrica/impl/ob/Jh$f;
    .locals 9

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->p:Lcom/yandex/metrica/impl/ob/nm;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/nm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jh$f;->c:Lcom/yandex/metrica/impl/ob/Jh$f;

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    .line 10
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/yandex/metrica/impl/ob/Fh$a; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 11
    :try_start_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->n:Lcom/yandex/metrica/impl/ob/Fh;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/yandex/metrica/impl/ob/Fh;->a(I)Ljava/net/ServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;

    .line 12
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jh$f;->a:Lcom/yandex/metrica/impl/ob/Jh$f;

    .line 13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->l:Lcom/yandex/metrica/impl/ob/zh;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, p0, v4, p1}, Lcom/yandex/metrica/impl/ob/zh;->a(Lcom/yandex/metrica/impl/ob/Gh;ILcom/yandex/metrica/impl/ob/di;)V
    :try_end_2
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/yandex/metrica/impl/ob/Fh$a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-object v2, v3

    goto :goto_4

    :cond_0
    :goto_1
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 14
    :goto_2
    :try_start_3
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v4

    .line 15
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "exception"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    const-string v5, "open_error"

    invoke-direct {p0, v5}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 17
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 19
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v5

    .line 20
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "exception"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    invoke-direct {p0, v4}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 22
    :catch_3
    :goto_4
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jh$f;->b:Lcom/yandex/metrica/impl/ob/Jh$f;

    .line 23
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Jh;->m:Lcom/yandex/metrica/impl/ob/zh;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p0, v4, p1}, Lcom/yandex/metrica/impl/ob/zh;->a(Lcom/yandex/metrica/impl/ob/Gh;ILcom/yandex/metrica/impl/ob/di;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILcom/yandex/metrica/impl/ob/Hh;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yandex/metrica/impl/ob/Hh;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ih;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "idle_interval"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ih;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "background_interval"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Hh;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "request_read_time"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Hh;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "response_form_time"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Hh;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "response_send_time"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "port"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Jh;Lcom/yandex/metrica/impl/ob/di;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->c(Lcom/yandex/metrica/impl/ob/di;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/Jh;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->e:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/yandex/metrica/impl/ob/di;)V
    .locals 3

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->k:Ldc/b$d;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/di;->e:J

    invoke-virtual {v0, v1, v2}, Ldc/b$d;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/M0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    return-object p0
.end method

.method private declared-synchronized c(Lcom/yandex/metrica/impl/ob/di;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->k:Ldc/b$d;

    iget p1, p1, Lcom/yandex/metrica/impl/ob/di;->f:I

    invoke-virtual {v0, p1}, Ldc/b$d;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/di;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/yh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->q:Lcom/yandex/metrica/impl/ob/yh;

    .line 2
    .line 3
    return-object p0
.end method

.method static f(Lcom/yandex/metrica/impl/ob/Jh;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->e:Landroid/content/Context;

    .line 7
    .line 8
    const-class v2, Lcom/yandex/metrica/MetricaService;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->e:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->a:Landroid/content/ServiceConnection;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    .line 30
    .line 31
    const-string v1, "socket_bind_has_failed"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    .line 38
    .line 39
    const-string v1, "socket_bind_has_thrown_exception"

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->o:Lcom/yandex/metrica/impl/ob/Pm;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/Pm;->b(Ljava/lang/Runnable;)Lcom/yandex/metrica/impl/ob/Lm;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->i:Lcom/yandex/metrica/impl/ob/Lm;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ih;->d()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ih;->e()V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->M()Lcom/yandex/metrica/impl/ob/di;

    move-result-object p1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->c(Lcom/yandex/metrica/impl/ob/di;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uri"

    .line 33
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socket_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/util/Map;ILcom/yandex/metrica/impl/ob/Hh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/yandex/metrica/impl/ob/Hh;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/Jh;->a(ILcom/yandex/metrica/impl/ob/Hh;)Ljava/util/Map;

    move-result-object p2

    .line 39
    move-object p3, p2

    check-cast p3, Ljava/util/HashMap;

    const-string v0, "params"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    const-string p3, "reversed_sync_succeed"

    invoke-direct {p0, p3}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Jh;->a()V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    iget-wide v3, v3, Lcom/yandex/metrica/impl/ob/di;->a:J

    .line 5
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->r:Lcom/yandex/metrica/impl/ob/Ih;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ih;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(ILcom/yandex/metrica/impl/ob/Hh;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->j:Lcom/yandex/metrica/impl/ob/M0;

    const-string v1, "sync_succeed"

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Jh;->a(ILcom/yandex/metrica/impl/ob/Hh;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->q:Lcom/yandex/metrica/impl/ob/yh;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/yh;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 12
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->M()Lcom/yandex/metrica/impl/ob/di;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->k:Ldc/b$d;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/di;->e:J

    invoke-virtual {v0, v1, v2}, Ldc/b$d;->a(J)V

    .line 15
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->c(Lcom/yandex/metrica/impl/ob/di;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Jh;->c()V

    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jh;->b(Lcom/yandex/metrica/impl/ob/di;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->i:Lcom/yandex/metrica/impl/ob/Lm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lm;->stopRunning()V

    .line 8
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->i:Lcom/yandex/metrica/impl/ob/Lm;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 11
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Jh;->a(Lcom/yandex/metrica/impl/ob/di;)Lcom/yandex/metrica/impl/ob/Jh$f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jh$f;->b:Lcom/yandex/metrica/impl/ob/Jh$f;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh;->h:Lcom/yandex/metrica/impl/ob/di;

    .line 18
    .line 19
    iget-wide v0, v0, Lcom/yandex/metrica/impl/ob/di;->j:J

    .line 20
    .line 21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jh;->o:Lcom/yandex/metrica/impl/ob/Pm;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Jh;->c:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-interface {v2, v3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Jh;->c:Ljava/lang/Runnable;

    .line 33
    .line 34
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    const/16 v0, 0x1a

    .line 43
    .line 44
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const v1, 0x9d26

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    :catch_0
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->f:Z

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jh;->g:Ljava/net/ServerSocket;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v1, v2

    .line 74
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v1, Lcom/yandex/metrica/impl/ob/Hh;

    .line 82
    .line 83
    new-instance v3, Ldc/c;

    .line 84
    .line 85
    invoke-direct {v3}, Ldc/c;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v4, Lcom/yandex/metrica/impl/ob/gm;

    .line 89
    .line 90
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/gm;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v3, v4}, Lcom/yandex/metrica/impl/ob/Hh;-><init>(Ldc/d;Lcom/yandex/metrica/impl/ob/gm;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-static {v2}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    new-instance v3, Lcom/yandex/metrica/impl/ob/Ch;

    .line 106
    .line 107
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Jh;->d:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {v3, v2, p0, v4, v1}, Lcom/yandex/metrica/impl/ob/Ch;-><init>(Ljava/net/Socket;Lcom/yandex/metrica/impl/ob/Gh;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Hh;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Ch;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    if-eqz v2, :cond_2

    .line 119
    .line 120
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    throw v0

    .line 127
    :cond_5
    return-void

    .line 128
    :catchall_2
    move-exception v0

    .line 129
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    throw v0
.end method
