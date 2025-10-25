.class final Lcom/google/android/gms/internal/measurement/a9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/x8;


# static fields
.field private static d:Lcom/google/android/gms/internal/measurement/a9;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/database/ContentObserver;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a9;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a9;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a9;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a9;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/measurement/y8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/y8;-><init>(Lcom/google/android/gms/internal/measurement/a9;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    return-void
.end method

.method static c(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/a9;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/a9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 9
    .line 10
    invoke-static {p0, v1}, Landroidx/core/content/e;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/measurement/a9;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/a9;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/a9;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/a9;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 28
    .line 29
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/a9;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/measurement/j8;->a:Landroid/net/Uri;

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 56
    .line 57
    invoke-static {p0}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/google/android/gms/internal/measurement/a9;

    .line 62
    .line 63
    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/a9;->c:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    :try_start_2
    const-string v1, "GservicesLoader"

    .line 68
    .line 69
    const-string v2, "Unable to register Gservices content observer"

    .line 70
    .line 71
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 75
    .line 76
    invoke-static {p0}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/google/android/gms/internal/measurement/a9;

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method

.method static declared-synchronized e()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/a9;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/a9;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/a9;->c:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/a9;->b:Landroid/database/ContentObserver;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/google/android/gms/internal/measurement/a9;->d:Lcom/google/android/gms/internal/measurement/a9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    .line 38
    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/a9;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a9;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/p8;->b(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/z8;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/z8;-><init>(Lcom/google/android/gms/internal/measurement/a9;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x8;->b(Lcom/google/android/gms/internal/measurement/w8;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :catch_2
    move-exception v0

    .line 30
    :goto_0
    const-string v2, "Unable to read GServices for: "

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "GservicesLoader"

    .line 37
    .line 38
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    return-object v1
.end method

.method final synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a9;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/i8;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
