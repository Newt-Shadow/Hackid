.class public final Lio/appmetrica/analytics/screenshot/impl/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/d0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/a0;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/screenshot/impl/d0;Lio/appmetrica/analytics/screenshot/impl/a0;Lio/appmetrica/analytics/screenshot/impl/m;Landroid/app/ActivityManager;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 46
    .line 47
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "com.android.systemui:screenshot"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    :goto_1
    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/d0;->b:Lio/appmetrica/analytics/screenshot/impl/Q;

    .line 64
    .line 65
    const-string v0, "ServiceScreenshotCaptor"

    .line 66
    .line 67
    check-cast p3, Lio/appmetrica/analytics/screenshot/impl/v;

    .line 68
    .line 69
    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/screenshot/impl/v;->a(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d0;->c:Landroid/os/Handler;

    .line 73
    .line 74
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 75
    .line 76
    iget-wide v0, p2, Lio/appmetrica/analytics/screenshot/impl/m;->b:J

    .line 77
    .line 78
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/a0;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/screenshot/impl/d0;->e:Lio/appmetrica/analytics/screenshot/impl/m;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/a0;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    .line 6
    .line 7
    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/d0;->d:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/m;->a:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/a0;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    .line 19
    .line 20
    iget-object v1, v1, Lio/appmetrica/analytics/screenshot/impl/d0;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 21
    .line 22
    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lio/appmetrica/analytics/screenshot/impl/a0;->a:Lio/appmetrica/analytics/screenshot/impl/d0;

    .line 27
    .line 28
    new-instance v3, Ltc/b;

    .line 29
    .line 30
    invoke-direct {v3, v2, p0, v0}, Ltc/b;-><init>(Lio/appmetrica/analytics/screenshot/impl/d0;Lio/appmetrica/analytics/screenshot/impl/a0;Lio/appmetrica/analytics/screenshot/impl/m;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "running service screenshot captor"

    .line 34
    .line 35
    const-string v2, "ActivityManager"

    .line 36
    .line 37
    const-string v4, "activity"

    .line 38
    .line 39
    invoke-static {v1, v4, v0, v2, v3}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
