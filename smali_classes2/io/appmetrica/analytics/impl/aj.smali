.class public final Lio/appmetrica/analytics/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/k;


# instance fields
.field public a:Lio/appmetrica/analytics/impl/Te;

.field public b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

.field public c:Z

.field public d:Z

.field public final e:Lio/appmetrica/analytics/impl/Zi;

.field public f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Zi;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zi;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->e:Lio/appmetrica/analytics/impl/Zi;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->f:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 21
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 23
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Te;->p()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 25
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 27
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v2

    .line 28
    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 29
    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Te;->t()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->c:Z

    .line 31
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/aj;->d:Z

    .line 32
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/aj;->b(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    if-nez v0, :cond_5

    const/16 v0, 0x1e

    .line 34
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->c:Z

    if-nez v0, :cond_5

    .line 36
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/aj;->b(Landroid/content/Context;)V

    .line 37
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/aj;->c:Z

    .line 38
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    if-nez v0, :cond_3

    .line 39
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 40
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 42
    :cond_3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Te;->v()V

    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/aj;->b(Landroid/content/Context;)V

    .line 45
    :cond_5
    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->f:Ljava/lang/ref/WeakReference;

    .line 2
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 7
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Te;->p()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 11
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 13
    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Te;->t()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->c:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/aj;->d:Z

    .line 16
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/aj;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Te;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->e:Lio/appmetrica/analytics/impl/Zi;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Zi;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 23
    .line 24
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lio/appmetrica/analytics/impl/Te;

    .line 29
    .line 30
    invoke-static {p1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/k7;->a()Lio/appmetrica/analytics/impl/Ta;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Te;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/Te;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Te;->a(Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
