.class public final Lio/sentry/android/core/internal/debugmeta/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/internal/debugmeta/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/sentry/android/core/internal/debugmeta/a;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lio/sentry/android/core/internal/debugmeta/a;->b:Lio/sentry/ILogger;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/debugmeta/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    sget-object v2, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lio/sentry/android/core/internal/debugmeta/a;->b:Lio/sentry/ILogger;

    .line 46
    .line 47
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 48
    .line 49
    sget-object v3, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 50
    .line 51
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "%s file is malformed."

    .line 56
    .line 57
    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    iget-object v1, p0, Lio/sentry/android/core/internal/debugmeta/a;->b:Lio/sentry/ILogger;

    .line 63
    .line 64
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 65
    .line 66
    const-string v3, "Error getting Proguard UUIDs."

    .line 67
    .line 68
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    .line 73
    iget-object v1, p0, Lio/sentry/android/core/internal/debugmeta/a;->b:Lio/sentry/ILogger;

    .line 74
    .line 75
    sget-object v2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 76
    .line 77
    sget-object v3, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 78
    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "%s file was not found."

    .line 84
    .line 85
    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    const/4 v0, 0x0

    .line 89
    return-object v0
.end method
