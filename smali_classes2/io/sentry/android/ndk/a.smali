.class public final Lio/sentry/android/ndk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/core/f1;


# static fields
.field private static volatile c:Ljava/util/List;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/android/ndk/NativeModuleListLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/ndk/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/ndk/NativeModuleListLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "The SentryAndroidOptions is required."

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/sentry/s5;

    .line 11
    .line 12
    iput-object p1, p0, Lio/sentry/android/ndk/a;->a:Lio/sentry/s5;

    .line 13
    .line 14
    const-string p1, "The NativeModuleListLoader is required."

    .line 15
    .line 16
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lio/sentry/android/ndk/NativeModuleListLoader;

    .line 21
    .line 22
    iput-object p1, p0, Lio/sentry/android/ndk/a;->b:Lio/sentry/android/ndk/NativeModuleListLoader;

    .line 23
    .line 24
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;
    .locals 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "0x"

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v3, v4, :cond_6

    .line 16
    .line 17
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lio/sentry/protocol/DebugImage;

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x0

    .line 30
    if-ge v3, v5, :cond_1

    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lio/sentry/protocol/DebugImage;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v5, v6

    .line 40
    :goto_1
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    :catch_0
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Ljava/lang/String;

    .line 61
    .line 62
    :try_start_0
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const/16 v8, 0x10

    .line 67
    .line 68
    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-virtual {v4}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    invoke-virtual {v4}, Lio/sentry/protocol/DebugImage;->getImageSize()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    add-long/2addr v7, v11

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    if-eqz v6, :cond_5

    .line 99
    .line 100
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const-wide v7, 0x7fffffffffffffffL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :goto_2
    cmp-long v11, v9, v11

    .line 115
    .line 116
    if-ltz v11, :cond_3

    .line 117
    .line 118
    cmp-long v7, v9, v7

    .line 119
    .line 120
    if-gez v7, :cond_3

    .line 121
    .line 122
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    return-object v2
.end method


# virtual methods
.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 7

    .line 1
    sget-object v0, Lio/sentry/android/ndk/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/ndk/a;->b()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-direct {p0, v1, p1}, Lio/sentry/android/ndk/a;->c(Ljava/util/List;Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lio/sentry/android/ndk/a;->a:Lio/sentry/s5;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 38
    .line 39
    const-string v4, "No debug images found for any of the %d addresses."

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    new-array v5, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v6, 0x0

    .line 53
    aput-object p1, v5, v6

    .line 54
    .line 55
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object v2

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 7

    .line 1
    sget-object v0, Lio/sentry/android/ndk/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lio/sentry/android/ndk/a;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/ndk/a;->b:Lio/sentry/android/ndk/NativeModuleListLoader;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/sentry/android/ndk/NativeModuleListLoader;->a()[Lio/sentry/protocol/DebugImage;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sput-object v2, Lio/sentry/android/ndk/a;->c:Ljava/util/List;

    .line 22
    .line 23
    iget-object v2, p0, Lio/sentry/android/ndk/a;->a:Lio/sentry/s5;

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 30
    .line 31
    const-string v4, "Debug images loaded: %d"

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    new-array v5, v5, [Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v6, Lio/sentry/android/ndk/a;->c:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    aput-object v6, v5, v1

    .line 47
    .line 48
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    :try_start_2
    iget-object v3, p0, Lio/sentry/android/ndk/a;->a:Lio/sentry/s5;

    .line 54
    .line 55
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 60
    .line 61
    const-string v5, "Failed to load debug images."

    .line 62
    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    sget-object v0, Lio/sentry/android/ndk/a;->c:Ljava/util/List;

    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_1
    move-exception v1

    .line 73
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    throw v1
.end method
