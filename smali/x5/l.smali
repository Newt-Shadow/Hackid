.class public final Lx5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/a;


# static fields
.field private static e:Lc5/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lx5/l;->b:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lx5/l;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lx5/l;->d:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    iput-object p1, p0, Lx5/l;->a:Landroid/content/Context;

    .line 20
    .line 21
    iget-boolean p1, p0, Lx5/l;->b:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance v2, Lx5/j;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-direct {v2, p0, p1}, Lx5/j;-><init>(Lx5/l;Lx5/i;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    const-wide/32 v5, 0x15180

    .line 34
    .line 35
    .line 36
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lx5/l;->b:Z

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method static bridge synthetic c(Lx5/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lx5/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static declared-synchronized d(Landroid/content/Context;)Lc5/a;
    .locals 2

    .line 1
    const-class v0, Lx5/l;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Context must not be null"

    .line 5
    .line 6
    invoke-static {p0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lx5/l;->e:Lc5/a;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lx5/l;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, p0}, Lx5/l;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lx5/l;->e:Lc5/a;

    .line 23
    .line 24
    :cond_0
    sget-object p0, Lx5/l;->e:Lc5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0

    .line 30
    throw p0
.end method

.method protected static final f(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "app_set_id"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "AppSet"

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "Failed to clear app set ID generated for App "

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p0}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "app_set_id_last_used_time"

    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const-string v2, "Failed to clear app set ID last used time for App "

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method private static final g(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-string v0, "app_set_id_storage"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static final h(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v3, "app_set_id_last_used_time"

    .line 18
    .line 19
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v1, "Failed to store app set ID last used time for App "

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    const-string v0, "AppSet"

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance p0, Lx5/k;

    .line 61
    .line 62
    const-string v0, "Failed to store the app set ID last used time."

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lx5/k;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lm6/Task;
    .locals 3

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx5/l;->d:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lx5/h;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lx5/h;-><init>(Lx5/l;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method protected final b()J
    .locals 5

    .line 1
    iget-object v0, p0, Lx5/l;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "app_set_id_last_used_time"

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const-wide v2, 0x7d8702800L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    add-long/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    :cond_0
    return-wide v2
.end method

.method final synthetic e(Lm6/l;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lx5/l;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "app_set_id"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lx5/l;->b()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v1, v5, v3

    .line 29
    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lx5/l;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lx5/l;->h(Landroid/content/Context;)V
    :try_end_0
    .catch Lx5/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :try_start_1
    iget-object v1, p0, Lx5/l;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_1
    .catch Lx5/k; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    const-string v3, "AppSet"

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    :try_start_2
    const-string v0, "Failed to store app set ID generated for App "

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v0, v1

    .line 102
    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    new-instance v0, Lx5/k;

    .line 106
    .line 107
    const-string v1, "Failed to store the app set ID."

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lx5/k;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_3
    invoke-static {v1}, Lx5/l;->h(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lx5/l;->a:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v1}, Lx5/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v6, "app_set_id_creation_time"

    .line 135
    .line 136
    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    const-string v0, "Failed to store app set ID creation time for App "

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v0, v1

    .line 173
    :goto_2
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    new-instance v0, Lx5/k;

    .line 177
    .line 178
    const-string v1, "Failed to store the app set ID creation time."

    .line 179
    .line 180
    invoke-direct {v0, v1}, Lx5/k;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0
    :try_end_2
    .catch Lx5/k; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    :cond_5
    :goto_3
    new-instance v1, Lc5/b;

    .line 185
    .line 186
    const/4 v2, 0x1

    .line 187
    invoke-direct {v1, v0, v2}, Lc5/b;-><init>(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method
