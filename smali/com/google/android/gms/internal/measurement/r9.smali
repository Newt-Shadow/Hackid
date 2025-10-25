.class public final Lcom/google/android/gms/internal/measurement/r9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x8;


# static fields
.field private static final f:Ljava/util/Map;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final c:Ljava/lang/Object;

.field private volatile d:Ljava/util/Map;

.field private final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/r9;->f:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r9;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r9;->e:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r9;->a:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/r9;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "direct_boot:"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/p8;->c(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const-class v0, Lcom/google/android/gms/internal/measurement/r9;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/r9;->f:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/measurement/r9;

    .line 34
    .line 35
    if-nez v2, :cond_4

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/gms/internal/measurement/r9;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 40
    .line 41
    .line 42
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    const-string v4, "direct_boot:"

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_2
    const/16 v4, 0xc

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v6, Lcom/google/android/gms/internal/measurement/e1;->a:Lcom/google/android/gms/internal/measurement/d1;

    .line 69
    .line 70
    invoke-static {p0, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/i1;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/d1;)Landroid/content/SharedPreferences;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_1
    :try_start_2
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/measurement/e1;->a:Lcom/google/android/gms/internal/measurement/d1;

    .line 79
    .line 80
    invoke-static {p0, p1, v5, v4}, Lcom/google/android/gms/internal/measurement/i1;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/d1;)Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    :try_start_4
    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/measurement/r9;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lcom/google/android/gms/internal/measurement/q9;

    .line 89
    .line 90
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/q9;-><init>(Lcom/google/android/gms/internal/measurement/r9;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v2, Lcom/google/android/gms/internal/measurement/r9;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 94
    .line 95
    iget-object p2, v2, Lcom/google/android/gms/internal/measurement/r9;->a:Landroid/content/SharedPreferences;

    .line 96
    .line 97
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_4
    :goto_3
    monitor-exit v0

    .line 110
    return-object v2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    throw p0
.end method

.method static declared-synchronized d()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/r9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/r9;->f:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/internal/measurement/r9;

    .line 25
    .line 26
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/r9;->a:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/r9;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 29
    .line 30
    invoke-static {v3}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 35
    .line 36
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0

    .line 47
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r9;->d:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r9;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r9;->d:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/r9;->a:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/r9;->d:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v1

    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method final synthetic e(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/r9;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 p2, 0x0

    .line 5
    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r9;->d:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p9;->c()V

    .line 8
    .line 9
    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/r9;->e:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :catchall_1
    move-exception p2

    .line 38
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    throw p2
.end method
