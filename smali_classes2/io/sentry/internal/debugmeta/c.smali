.class public final Lio/sentry/internal/debugmeta/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/internal/debugmeta/a;


# instance fields
.field private final a:Lio/sentry/ILogger;

.field private final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    const-class v0, Lio/sentry/internal/debugmeta/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/debugmeta/c;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/internal/debugmeta/c;->a:Lio/sentry/ILogger;

    .line 4
    invoke-static {p2}, Lio/sentry/util/a;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/debugmeta/c;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/debugmeta/c;->b:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    sget-object v2, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :try_start_2
    new-instance v4, Ljava/util/Properties;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lio/sentry/internal/debugmeta/c;->a:Lio/sentry/ILogger;

    .line 42
    .line 43
    sget-object v5, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 44
    .line 45
    const-string v6, "Debug Meta Data Properties loaded from %s"

    .line 46
    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v4

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v3

    .line 68
    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 72
    :catch_0
    move-exception v3

    .line 73
    :try_start_6
    iget-object v4, p0, Lio/sentry/internal/debugmeta/c;->a:Lio/sentry/ILogger;

    .line 74
    .line 75
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 76
    .line 77
    const-string v6, "%s file is malformed."

    .line 78
    .line 79
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    .line 88
    iget-object v2, p0, Lio/sentry/internal/debugmeta/c;->a:Lio/sentry/ILogger;

    .line 89
    .line 90
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 91
    .line 92
    sget-object v4, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 93
    .line 94
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v5, "Failed to load %s"

    .line 99
    .line 100
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lio/sentry/internal/debugmeta/c;->a:Lio/sentry/ILogger;

    .line 110
    .line 111
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 112
    .line 113
    sget-object v2, Lio/sentry/util/c;->a:Ljava/lang/String;

    .line 114
    .line 115
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "No %s file was found."

    .line 120
    .line 121
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    :cond_3
    return-object v0
.end method
