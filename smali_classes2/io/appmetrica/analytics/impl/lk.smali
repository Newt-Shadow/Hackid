.class public final Lio/appmetrica/analytics/impl/lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/fl;

.field public final c:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/fl;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/lk;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/lk;->b:Lio/appmetrica/analytics/impl/fl;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/lk;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAppDataStorage()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lk;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppDataDir(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getAppFileStorage()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lk;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getAppStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getDbStorage()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lk;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkDataStorage()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lk;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->sdkStorage(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTempCacheStorage()Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/lk;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/k7;->o:Lio/appmetrica/analytics/impl/Zm;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/Zm;

    .line 13
    .line 14
    iget-object v2, v0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v3, Lio/appmetrica/analytics/impl/Dm;->a:Lio/appmetrica/analytics/impl/Dm;

    .line 17
    .line 18
    iget-object v4, v0, Lio/appmetrica/analytics/impl/k7;->n:Lio/appmetrica/analytics/impl/Ym;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    new-instance v4, Lio/appmetrica/analytics/impl/Ym;

    .line 23
    .line 24
    new-instance v5, Lio/appmetrica/analytics/impl/bl;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/k7;->h()Lio/appmetrica/analytics/impl/j7;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "temp_cache"

    .line 34
    .line 35
    invoke-direct {v4, v5, v6}, Lio/appmetrica/analytics/impl/Ym;-><init>(Lio/appmetrica/analytics/impl/J6;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v4, v0, Lio/appmetrica/analytics/impl/k7;->n:Lio/appmetrica/analytics/impl/Ym;

    .line 39
    .line 40
    :cond_0
    iget-object v4, v0, Lio/appmetrica/analytics/impl/k7;->n:Lio/appmetrica/analytics/impl/Ym;

    .line 41
    .line 42
    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/Zm;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Dm;Lio/appmetrica/analytics/coreapi/internal/data/TempCacheStorage;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lio/appmetrica/analytics/impl/k7;->o:Lio/appmetrica/analytics/impl/Zm;

    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Lio/appmetrica/analytics/impl/k7;->o:Lio/appmetrica/analytics/impl/Zm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    .line 53
    throw v1
.end method

.method public final legacyModulePreferences()Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Kb;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/lk;->b:Lio/appmetrica/analytics/impl/fl;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Kb;-><init>(Lio/appmetrica/analytics/impl/fl;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/jd;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/lk;->b:Lio/appmetrica/analytics/impl/fl;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/jd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/fl;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
