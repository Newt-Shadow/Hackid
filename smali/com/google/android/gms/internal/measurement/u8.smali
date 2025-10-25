.class public final Lcom/google/android/gms/internal/measurement/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x8;


# static fields
.field private static final i:Ljava/util/concurrent/ConcurrentMap;

.field public static final j:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/Runnable;

.field private d:Landroid/database/ContentObserver;

.field private volatile e:Z

.field private final f:Ljava/lang/Object;

.field private volatile g:Ljava/util/Map;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/u8;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    const-string v0, "key"

    .line 9
    .line 10
    const-string v1, "value"

    .line 11
    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/internal/measurement/u8;->j:[Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->d:Landroid/database/ContentObserver;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->f:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->h:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {p1}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u8;->a:Landroid/content/ContentResolver;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Landroid/net/Uri;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/u8;->c:Ljava/lang/Runnable;

    .line 35
    .line 36
    return-void
.end method

.method public static c(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/u8;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u8;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/t8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/t8;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/android/gms/internal/measurement/u8;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/google/android/gms/internal/measurement/r8;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/r8;-><init>(Lcom/google/android/gms/internal/measurement/u8;Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->a:Landroid/content/ContentResolver;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Landroid/net/Uri;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u8;->d:Landroid/database/ContentObserver;

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :cond_1
    :goto_0
    return-object p0

    .line 47
    :catch_0
    return-object p1
.end method

.method static f()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u8;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/measurement/u8;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/u8;->e:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/u8;->d:Landroid/database/ContentObserver;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/u8;->a:Landroid/content/ContentResolver;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/u8;->d:Landroid/database/ContentObserver;

    .line 43
    .line 44
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0

    .line 52
    :cond_2
    return-void
.end method

.method static synthetic g(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/u8;
    .locals 0

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/measurement/u8;

    .line 2
    .line 3
    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u8;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-object p3
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u8;->d()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    return-object p1
.end method

.method public final d()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->g:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u8;->f:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->g:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/s8;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/s8;-><init>(Lcom/google/android/gms/internal/measurement/u8;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/x8;->b(Lcom/google/android/gms/internal/measurement/w8;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception v2

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception v2

    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception v2

    .line 38
    :goto_1
    :try_start_3
    const-string v3, "ConfigurationContentLdr"

    .line 39
    .line 40
    const-string v4, "Unable to query ContentProvider, using default values"

    .line 41
    .line 42
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :goto_2
    :try_start_4
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/u8;->g:Ljava/util/Map;

    .line 51
    .line 52
    move-object v0, v2

    .line 53
    goto :goto_4

    .line 54
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_0
    :goto_4
    monitor-exit v1

    .line 59
    goto :goto_5

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    throw v0

    .line 63
    :cond_1
    :goto_5
    if-eqz v0, :cond_2

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/u8;->g:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/u8;->c:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->h:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    throw v1
.end method

.method final synthetic h()Ljava/util/Map;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u8;->a:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/u8;->b:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v7, "ConfigurationContentLdr"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    .line 14
    .line 15
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/measurement/u8;->j:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, v0

    .line 30
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :try_start_1
    const-string v2, "ContentProvider query returned null cursor, using default values"

    .line 37
    .line 38
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 61
    .line 62
    .line 63
    move-object v0, v2

    .line 64
    goto :goto_4

    .line 65
    :cond_2
    const/16 v3, 0x100

    .line 66
    .line 67
    if-gt v2, v3, :cond_3

    .line 68
    .line 69
    :try_start_3
    new-instance v3, Lr/a;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Lr/a;-><init>(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    .line 76
    .line 77
    const/high16 v4, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-direct {v3, v2, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_5

    .line 107
    .line 108
    const-string v2, "Cursor read incomplete (ContentProvider dead?), using default values"

    .line 109
    .line 110
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 122
    .line 123
    .line 124
    move-object v0, v3

    .line 125
    goto :goto_4

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_1
    move-exception v1

    .line 134
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_2
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 138
    :catchall_2
    move-exception v1

    .line 139
    goto :goto_5

    .line 140
    :catch_0
    move-exception v1

    .line 141
    :try_start_7
    const-string v2, "ContentProvider query failed, using default values"

    .line 142
    .line 143
    invoke-static {v7, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 150
    :goto_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 151
    .line 152
    .line 153
    move-object v0, v1

    .line 154
    :goto_4
    return-object v0

    .line 155
    :goto_5
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 156
    .line 157
    .line 158
    throw v1
.end method
