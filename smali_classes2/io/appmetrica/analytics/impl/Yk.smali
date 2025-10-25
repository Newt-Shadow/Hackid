.class public final Lio/appmetrica/analytics/impl/Yk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xm;


# static fields
.field public static final d:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/appmetrica/analytics/impl/Yk;->d:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 5
    .line 6
    sget-wide v3, Lio/appmetrica/analytics/impl/Yk;->d:J

    .line 7
    .line 8
    const-string v5, "sim-info"

    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-wide v1, v3

    .line 12
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;-><init>(JJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lio/appmetrica/analytics/impl/Yk;->c:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 16
    .line 17
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/za;->i()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yk;->b:Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Yk;->c()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Tk;
    .locals 12

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Tk;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lio/appmetrica/analytics/impl/Uk;

    .line 6
    .line 7
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Uk;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "phone"

    .line 11
    .line 12
    const-string v4, "getting SimMcc"

    .line 13
    .line 14
    const-string v5, "TelephonyManager"

    .line 15
    .line 16
    invoke-static {v1, v3, v4, v5, v2}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v4, Lio/appmetrica/analytics/impl/Vk;

    .line 25
    .line 26
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Vk;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v6, "getting SimMnc"

    .line 30
    .line 31
    invoke-static {v2, v3, v6, v5, v4}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 38
    .line 39
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    new-instance v11, Lio/appmetrica/analytics/impl/Xk;

    .line 42
    .line 43
    invoke-direct {v11, p0}, Lio/appmetrica/analytics/impl/Xk;-><init>(Lio/appmetrica/analytics/impl/Yk;)V

    .line 44
    .line 45
    .line 46
    const-string v7, "phone"

    .line 47
    .line 48
    const-string v8, "getting NetworkRoaming"

    .line 49
    .line 50
    const-string v9, "TelephonyManager"

    .line 51
    .line 52
    invoke-static/range {v6 .. v11}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafelyOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 63
    .line 64
    new-instance v7, Lio/appmetrica/analytics/impl/Wk;

    .line 65
    .line 66
    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Wk;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v8, "getting SimOperatorName"

    .line 70
    .line 71
    invoke-static {v6, v3, v8, v5, v7}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {v0, v1, v2, v4, v3}, Lio/appmetrica/analytics/impl/Tk;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Tk;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yk;->c:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->getData()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yk;->c:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->shouldUpdateData()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 32
    .line 33
    iget-object v1, v1, Lio/appmetrica/analytics/impl/za;->u:Lio/appmetrica/analytics/impl/Sl;

    .line 34
    .line 35
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Sl;->b()Lio/appmetrica/analytics/impl/Ql;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 40
    .line 41
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/C4;->d:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/16 v1, 0x17

    .line 46
    .line 47
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yk;->b:Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    .line 54
    .line 55
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 56
    .line 57
    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 58
    .line 59
    invoke-interface {v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yk;->a:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Zk;->a(Landroid/content/Context;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Yk;->b()Lio/appmetrica/analytics/impl/Tk;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Yk;->b()Lio/appmetrica/analytics/impl/Tk;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yk;->c:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    monitor-exit p0

    .line 101
    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0

    .line 104
    throw v0
.end method
