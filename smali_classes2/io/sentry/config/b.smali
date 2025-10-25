.class final Lio/sentry/config/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ClassLoader;

.field private final c:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 2

    .line 5
    const-class v0, Lio/sentry/config/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "sentry.properties"

    invoke-direct {p0, v1, v0, p1}, Lio/sentry/config/b;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/config/b;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lio/sentry/util/a;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/config/b;->b:Ljava/lang/ClassLoader;

    .line 4
    iput-object p3, p0, Lio/sentry/config/b;->c:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Properties;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/config/b;->b:Ljava/lang/ClassLoader;

    .line 3
    .line 4
    iget-object v2, p0, Lio/sentry/config/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    .line 16
    .line 17
    :try_start_2
    new-instance v3, Ljava/util/Properties;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    .line 27
    .line 28
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :catchall_0
    move-exception v3

    .line 33
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception v2

    .line 38
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 42
    :catchall_2
    move-exception v2

    .line 43
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_3
    move-exception v1

    .line 48
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    throw v2

    .line 52
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    iget-object v2, p0, Lio/sentry/config/b;->c:Lio/sentry/ILogger;

    .line 60
    .line 61
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 62
    .line 63
    iget-object v4, p0, Lio/sentry/config/b;->a:Ljava/lang/String;

    .line 64
    .line 65
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "Failed to load Sentry configuration from classpath resource: %s"

    .line 70
    .line 71
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method
