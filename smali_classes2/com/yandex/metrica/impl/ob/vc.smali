.class public Lcom/yandex/metrica/impl/ob/vc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/vc$c;
    }
.end annotation


# static fields
.field private static volatile n:Lcom/yandex/metrica/impl/ob/vc;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final o:J

.field private static final p:Ljava/lang/Object;

.field public static final synthetic q:I


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/yandex/metrica/impl/ob/mc;

.field private d:Lcom/yandex/metrica/impl/ob/pi;

.field private e:Lcom/yandex/metrica/impl/ob/Mc;

.field private f:Lcom/yandex/metrica/impl/ob/vc$c;

.field private g:Ljava/lang/Runnable;

.field private final h:Lcom/yandex/metrica/impl/ob/Sb;

.field private final i:Lcom/yandex/metrica/impl/ob/U7;

.field private final j:Lcom/yandex/metrica/impl/ob/T7;

.field private final k:Lcom/yandex/metrica/impl/ob/Ed;

.field private l:Z

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/yandex/metrica/impl/ob/vc;->o:J

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/yandex/metrica/impl/ob/vc;->p:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/wc;Lcom/yandex/metrica/impl/ob/vc$c;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->l:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sb;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/wc;->a()Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/wc;->d()Lcom/yandex/metrica/impl/ob/yd;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Sb;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;Lcom/yandex/metrica/impl/ob/yd;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/wc;->c()Lcom/yandex/metrica/impl/ob/U7;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->i:Lcom/yandex/metrica/impl/ob/U7;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/wc;->b()Lcom/yandex/metrica/impl/ob/T7;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->j:Lcom/yandex/metrica/impl/ob/T7;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/wc;->e()Lcom/yandex/metrica/impl/ob/Ed;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->k:Lcom/yandex/metrica/impl/ob/Ed;

    .line 48
    .line 49
    new-instance p1, Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->a:Ljava/util/WeakHashMap;

    .line 55
    .line 56
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/vc;->f:Lcom/yandex/metrica/impl/ob/vc$c;

    .line 57
    .line 58
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/vc;->d:Lcom/yandex/metrica/impl/ob/pi;

    .line 59
    .line 60
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/vc;)Lcom/yandex/metrica/impl/ob/Mc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/vc;->e:Lcom/yandex/metrica/impl/ob/Mc;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/vc;
    .locals 5

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/vc;->n:Lcom/yandex/metrica/impl/ob/vc;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/vc;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/vc;->n:Lcom/yandex/metrica/impl/ob/vc;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    new-instance v2, Lcom/yandex/metrica/impl/ob/wc;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/wc;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/vc$c;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/vc$c;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-direct {v4, p0}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/pi$b;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v4

    .line 8
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/vc;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/wc;Lcom/yandex/metrica/impl/ob/vc$c;Lcom/yandex/metrica/impl/ob/pi;)V

    .line 9
    sput-object v1, Lcom/yandex/metrica/impl/ob/vc;->n:Lcom/yandex/metrica/impl/ob/vc;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/vc;->n:Lcom/yandex/metrica/impl/ob/vc;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->l:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/sc;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/sc;-><init>(Lcom/yandex/metrica/impl/ob/vc;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->l:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->e:Lcom/yandex/metrica/impl/ob/Mc;

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->f:Lcom/yandex/metrica/impl/ob/vc$c;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/vc;->i:Lcom/yandex/metrica/impl/ob/U7;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/vc;->j:Lcom/yandex/metrica/impl/ob/T7;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/vc;->d:Lcom/yandex/metrica/impl/ob/pi;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/vc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 14
    new-instance v7, Lcom/yandex/metrica/impl/ob/Nc;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Nc;-><init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/Mc;

    invoke-direct {v0, v7}, Lcom/yandex/metrica/impl/ob/Mc;-><init>(Lcom/yandex/metrica/impl/ob/Nc;)V

    .line 17
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->e:Lcom/yandex/metrica/impl/ob/Mc;

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/tc;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/tc;-><init>(Lcom/yandex/metrica/impl/ob/vc;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/uc;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/uc;-><init>(Lcom/yandex/metrica/impl/ob/vc;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->g:Ljava/lang/Runnable;

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    sget-wide v2, Lcom/yandex/metrica/impl/ob/vc;->o:J

    invoke-interface {v1, v0, v2, v3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/rc;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/rc;-><init>(Lcom/yandex/metrica/impl/ob/vc;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vc;->l:Z

    :cond_5
    :goto_0
    return-void
.end method

.method static b(Lcom/yandex/metrica/impl/ob/vc;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/vc;->g:Ljava/lang/Runnable;

    sget-wide v1, Lcom/yandex/metrica/impl/ob/vc;->o:J

    invoke-interface {v0, p0, v1, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->e:Lcom/yandex/metrica/impl/ob/Mc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Mc;->b()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/vc$b;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/vc$b;-><init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/mc;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->d:Lcom/yandex/metrica/impl/ob/pi;

    .line 28
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->k:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/Ed;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->c:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/vc;->k:Lcom/yandex/metrica/impl/ob/Ed;

    .line 30
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/yd;->a(Lcom/yandex/metrica/impl/ob/wd;)V

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    new-instance v2, Lcom/yandex/metrica/impl/ob/vc$a;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/ob/vc$a;-><init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/pi;)V

    invoke-interface {v1, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 33
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->c:Lcom/yandex/metrica/impl/ob/mc;

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/vc;->b()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/vc;->b:Z

    if-eq v1, p1, :cond_0

    .line 19
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/vc;->b:Z

    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->k:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/Ed;->a(Z)V

    .line 21
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/vc;->h:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sb;->c:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->k:Lcom/yandex/metrica/impl/ob/Ed;

    .line 22
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/yd;->a(Lcom/yandex/metrica/impl/ob/wd;)V

    .line 24
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/vc;->b()V

    .line 25
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vc;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vc;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/vc;->b()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
