.class public final Lio/sentry/internal/modules/f;
.super Lio/sentry/internal/modules/d;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    const-class v0, Lio/sentry/internal/modules/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/modules/f;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/internal/modules/d;-><init>(Lio/sentry/ILogger;)V

    .line 3
    invoke-static {p2}, Lio/sentry/util/a;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/modules/f;->d:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method protected b()Ljava/util/Map;
    .locals 8

    .line 1
    const-string v0, "sentry-external-modules.txt"

    .line 2
    .line 3
    new-instance v1, Ljava/util/TreeMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lio/sentry/internal/modules/f;->d:Ljava/lang/ClassLoader;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    :try_start_1
    iget-object v3, p0, Lio/sentry/internal/modules/d;->a:Lio/sentry/ILogger;

    .line 17
    .line 18
    sget-object v4, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 19
    .line 20
    const-string v5, "%s file was not found."

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    new-array v6, v6, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    aput-object v0, v6, v7

    .line 27
    .line 28
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v1

    .line 37
    :cond_1
    :try_start_3
    invoke-virtual {p0, v2}, Lio/sentry/internal/modules/d;->c(Ljava/io/InputStream;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v2

    .line 53
    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v2, p0, Lio/sentry/internal/modules/d;->a:Lio/sentry/ILogger;

    .line 59
    .line 60
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 61
    .line 62
    const-string v4, "Access to resources failed."

    .line 63
    .line 64
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    iget-object v2, p0, Lio/sentry/internal/modules/d;->a:Lio/sentry/ILogger;

    .line 70
    .line 71
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 72
    .line 73
    const-string v4, "Access to resources denied."

    .line 74
    .line 75
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v1
.end method
