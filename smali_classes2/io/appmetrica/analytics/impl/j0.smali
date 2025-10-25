.class public final Lio/appmetrica/analytics/impl/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/En;

.field public volatile b:Ljava/lang/Boolean;

.field public c:Lio/appmetrica/analytics/impl/Na;

.field public d:Lio/appmetrica/analytics/impl/Oa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/En;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/En;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/j0;-><init>(Lio/appmetrica/analytics/impl/En;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/En;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/j0;->a:Lio/appmetrica/analytics/impl/En;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/impl/j4;)Lio/appmetrica/analytics/impl/Na;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/j0;->c:Lio/appmetrica/analytics/impl/Na;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/j0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/l0;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/l0;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/j0;->c:Lio/appmetrica/analytics/impl/Na;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/i0;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/i0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/j4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/j0;->c:Lio/appmetrica/analytics/impl/Na;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/j0;->c:Lio/appmetrica/analytics/impl/Na;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/j0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/j0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/j0;->a:Lio/appmetrica/analytics/impl/En;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/En;->a(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/j0;->b:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const-string v1, "AppMetrica"

    const-string v2, "User is locked. So use stubs. Events will not be sent."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    .line 13
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
