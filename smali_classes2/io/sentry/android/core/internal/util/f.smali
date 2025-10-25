.class public final Lio/sentry/android/core/internal/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lio/sentry/android/core/internal/util/f;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/util/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/internal/util/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/internal/util/f;->b:Lio/sentry/android/core/internal/util/f;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/internal/util/f;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lio/sentry/android/core/internal/util/f;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/internal/util/f;->b:Lio/sentry/android/core/internal/util/f;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/sys/devices/system/cpu"

    return-object v0
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/f;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/core/internal/util/f;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/f;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v0

    .line 36
    :cond_1
    :try_start_2
    array-length v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_6

    .line 39
    .line 40
    aget-object v3, v0, v2

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "cpu[0-9]+"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 56
    .line 57
    const-string v5, "cpufreq/cpuinfo_max_freq"

    .line 58
    .line 59
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    .line 69
    .line 70
    .line 71
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :try_start_3
    invoke-static {v4}, Lio/sentry/util/e;->c(Ljava/io/File;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :try_start_4
    iget-object v5, p0, Lio/sentry/android/core/internal/util/f;->a:Ljava/util/List;

    .line 91
    .line 92
    const-wide/16 v6, 0x3e8

    .line 93
    .line 94
    div-long/2addr v3, v6

    .line 95
    long-to-int v3, v3

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    iget-object v0, p0, Lio/sentry/android/core/internal/util/f;->a:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    .line 108
    monitor-exit p0

    .line 109
    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0

    .line 112
    throw v0
.end method
