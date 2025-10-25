.class public final Lio/sentry/SpotlightIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Lio/sentry/s5$c;
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lio/sentry/s5;

.field private b:Lio/sentry/ILogger;

.field private c:Lio/sentry/x0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/sentry/z1;->e()Lio/sentry/z1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 9
    .line 10
    invoke-static {}, Lio/sentry/e2;->f()Lio/sentry/x0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/sentry/SpotlightIntegration;->c:Lio/sentry/x0;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic b(Lio/sentry/SpotlightIntegration;Lio/sentry/a4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/SpotlightIntegration;->h(Lio/sentry/a4;)V

    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :catch_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 14
    .line 15
    const/16 v0, 0x3e8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 21
    .line 22
    .line 23
    const-string v0, "POST"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "Content-Encoding"

    .line 33
    .line 34
    const-string v1, "gzip"

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Content-Type"

    .line 40
    .line 41
    const-string v1, "application/x-sentry-envelope"

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "Accept"

    .line 47
    .line 48
    const-string v1, "application/json"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "Connection"

    .line 54
    .line 55
    const-string v1, "close"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method private synthetic h(Lio/sentry/a4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/SpotlightIntegration;->j(Lio/sentry/a4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Lio/sentry/a4;)V
    .locals 7

    .line 1
    const-string v0, "Envelope sent to spotlight: %d"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SpotlightIntegration;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->e(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 21
    :try_start_2
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    .line 22
    .line 23
    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    .line 25
    .line 26
    :try_start_3
    iget-object v6, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {v6}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface {v6, p1, v5}, Lio/sentry/y0;->b(Lio/sentry/a4;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 41
    .line 42
    .line 43
    :cond_0
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 48
    .line 49
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 50
    .line 51
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    aput-object p1, v3, v2

    .line 58
    .line 59
    invoke-interface {v4, v5, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->c(Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v5

    .line 72
    :try_start_8
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 76
    :catchall_2
    move-exception p1

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_3
    move-exception v4

    .line 84
    :try_start_a
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 88
    :catchall_4
    move-exception p1

    .line 89
    :try_start_b
    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 90
    .line 91
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 92
    .line 93
    const-string v6, "An exception occurred while submitting the envelope to the Sentry server."

    .line 94
    .line 95
    invoke-interface {v4, v5, v6, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 96
    .line 97
    .line 98
    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 103
    .line 104
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 105
    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    aput-object p1, v3, v2

    .line 113
    .line 114
    invoke-interface {v4, v5, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_5
    move-exception p1

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget-object v5, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 124
    .line 125
    sget-object v6, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 126
    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    aput-object v4, v3, v2

    .line 134
    .line 135
    invoke-interface {v5, v6, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->c(Ljava/net/HttpURLConnection;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string v0, "SentryOptions are required to send envelopes."

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 150
    :catch_0
    move-exception p1

    .line 151
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 152
    .line 153
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 154
    .line 155
    const-string v2, "An exception occurred while creating the connection to spotlight."

    .line 156
    .line 157
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/a4;Lio/sentry/c0;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p2, p0, Lio/sentry/SpotlightIntegration;->c:Lio/sentry/x0;

    .line 2
    .line 3
    new-instance v0, Lio/sentry/q6;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lio/sentry/q6;-><init>(Lio/sentry/SpotlightIntegration;Lio/sentry/a4;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 14
    .line 15
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v1, "Spotlight envelope submission rejected."

    .line 18
    .line 19
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->c:Lio/sentry/x0;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-interface {v0, v1, v2}, Lio/sentry/x0;->a(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/s5;->getBeforeEnvelopeCallback()Lio/sentry/s5$c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-ne v0, p0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lio/sentry/s5;->setBeforeEnvelopeCallback(Lio/sentry/s5$c;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 8
    .line 9
    invoke-virtual {p2}, Lio/sentry/s5;->getBeforeEnvelopeCallback()Lio/sentry/s5$c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lio/sentry/s5;->isEnableSpotlight()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lio/sentry/b5;

    .line 23
    .line 24
    invoke-direct {p1}, Lio/sentry/b5;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/SpotlightIntegration;->c:Lio/sentry/x0;

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Lio/sentry/s5;->setBeforeEnvelopeCallback(Lio/sentry/s5$c;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 33
    .line 34
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v1, "SpotlightIntegration enabled."

    .line 37
    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lio/sentry/SpotlightIntegration;->b:Lio/sentry/ILogger;

    .line 45
    .line 46
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 47
    .line 48
    const-string v1, "SpotlightIntegration is not enabled. BeforeEnvelopeCallback is already set or spotlight is not enabled."

    .line 49
    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/s5;->getSpotlightConnectionUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->a:Lio/sentry/s5;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/sentry/s5;->getSpotlightConnectionUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lio/sentry/util/s;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "http://10.0.2.2:8969/stream"

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const-string v0, "http://localhost:8969/stream"

    .line 28
    .line 29
    return-object v0
.end method
