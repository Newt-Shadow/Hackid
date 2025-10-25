.class public Lx4/s;
.super Lx4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/s$c;,
        Lx4/s$b;
    }
.end annotation


# instance fields
.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lx4/b0;

.field private final j:Lx4/b0;

.field private final k:Z

.field private l:Ln6/n;

.field private m:Lx4/n;

.field private n:Ljava/net/HttpURLConnection;

.field private o:Ljava/io/InputStream;

.field private p:Z

.field private q:I

.field private r:J

.field private s:J


# direct methods
.method private constructor <init>(Ljava/lang/String;IIZLx4/b0;Ln6/n;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lx4/f;-><init>(Z)V

    .line 3
    iput-object p1, p0, Lx4/s;->h:Ljava/lang/String;

    .line 4
    iput p2, p0, Lx4/s;->f:I

    .line 5
    iput p3, p0, Lx4/s;->g:I

    .line 6
    iput-boolean p4, p0, Lx4/s;->e:Z

    .line 7
    iput-object p5, p0, Lx4/s;->i:Lx4/b0;

    .line 8
    iput-object p6, p0, Lx4/s;->l:Ln6/n;

    .line 9
    new-instance p1, Lx4/b0;

    invoke-direct {p1}, Lx4/b0;-><init>()V

    iput-object p1, p0, Lx4/s;->j:Lx4/b0;

    .line 10
    iput-boolean p7, p0, Lx4/s;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLx4/b0;Ln6/n;ZLx4/s$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lx4/s;-><init>(Ljava/lang/String;IIZLx4/b0;Ln6/n;Z)V

    return-void
.end method

.method private B([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lx4/s;->r:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-wide v4, p0, Lx4/s;->s:J

    .line 15
    .line 16
    sub-long/2addr v0, v4

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v4

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    int-to-long v4, p3

    .line 25
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    :cond_2
    iget-object v0, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/io/InputStream;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v3, :cond_3

    .line 43
    .line 44
    return v3

    .line 45
    :cond_3
    iget-wide p2, p0, Lx4/s;->s:J

    .line 46
    .line 47
    int-to-long v0, p1

    .line 48
    add-long/2addr p2, v0

    .line 49
    iput-wide p2, p0, Lx4/s;->s:J

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lx4/f;->q(I)V

    .line 52
    .line 53
    .line 54
    return p1
.end method

.method private C(JLx4/n;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v2, 0x1000

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    :goto_0
    cmp-long v4, p1, v0

    .line 13
    .line 14
    if-lez v4, :cond_3

    .line 15
    .line 16
    int-to-long v4, v2

    .line 17
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    long-to-int v4, v4

    .line 22
    iget-object v5, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-static {v5}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Ljava/io/InputStream;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x1

    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    const/4 v5, -0x1

    .line 47
    if-eq v4, v5, :cond_1

    .line 48
    .line 49
    int-to-long v5, v4

    .line 50
    sub-long/2addr p1, v5

    .line 51
    invoke-virtual {p0, v4}, Lx4/f;->q(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Lx4/y;

    .line 56
    .line 57
    const/16 p2, 0x7d8

    .line 58
    .line 59
    invoke-direct {p1, p3, p2, v6}, Lx4/y;-><init>(Lx4/n;II)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    new-instance p1, Lx4/y;

    .line 64
    .line 65
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 68
    .line 69
    .line 70
    const/16 v0, 0x7d0

    .line 71
    .line 72
    invoke-direct {p1, p2, p3, v0, v6}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "DefaultHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private v(Ljava/net/URL;Ljava/lang/String;Lx4/n;)Ljava/net/URL;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x7d1

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v3, "https"

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "http"

    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lx4/y;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Unsupported protocol redirect: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2, p3, v1, v0}, Lx4/y;-><init>(Ljava/lang/String;Lx4/n;II)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lx4/s;->e:Z

    .line 56
    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v2, Lx4/y;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "Disallowed cross-protocol redirect ("

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, " to "

    .line 90
    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, ")"

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v2, p1, p3, v1, v0}, Lx4/y;-><init>(Ljava/lang/String;Lx4/n;II)V

    .line 107
    .line 108
    .line 109
    throw v2

    .line 110
    :cond_3
    :goto_1
    return-object v2

    .line 111
    :catch_0
    move-exception p1

    .line 112
    new-instance p2, Lx4/y;

    .line 113
    .line 114
    invoke-direct {p2, p1, p3, v1, v0}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 115
    .line 116
    .line 117
    throw p2

    .line 118
    :cond_4
    new-instance p1, Lx4/y;

    .line 119
    .line 120
    const-string p2, "Null location redirect"

    .line 121
    .line 122
    invoke-direct {p1, p2, p3, v1, v0}, Lx4/y;-><init>(Ljava/lang/String;Lx4/n;II)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method private static w(Ljava/net/HttpURLConnection;)Z
    .locals 1

    .line 1
    const-string v0, "Content-Encoding"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "gzip"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private x(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lx4/s;->A(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Lx4/s;->f:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lx4/s;->g:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lx4/s;->i:Lx4/b0;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lx4/b0;->b()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lx4/s;->j:Lx4/b0;

    .line 32
    .line 33
    invoke-virtual {v1}, Lx4/b0;->b()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p10

    .line 47
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p10

    .line 51
    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {p4, p5, p6, p7}, Lx4/c0;->a(JJ)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    if-eqz p4, :cond_2

    .line 84
    .line 85
    const-string p5, "Range"

    .line 86
    .line 87
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object p4, p0, Lx4/s;->h:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz p4, :cond_3

    .line 93
    .line 94
    const-string p5, "User-Agent"

    .line 95
    .line 96
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    if-eqz p8, :cond_4

    .line 100
    .line 101
    const-string p4, "gzip"

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const-string p4, "identity"

    .line 105
    .line 106
    :goto_1
    const-string p5, "Accept-Encoding"

    .line 107
    .line 108
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 112
    .line 113
    .line 114
    if-eqz p3, :cond_5

    .line 115
    .line 116
    const/4 p4, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const/4 p4, 0x0

    .line 119
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lx4/n;->c(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    if-eqz p3, :cond_6

    .line 130
    .line 131
    array-length p2, p3

    .line 132
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 150
    .line 151
    .line 152
    :goto_3
    return-object p1
.end method

.method private y(Lx4/n;)Ljava/net/HttpURLConnection;
    .locals 26

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    new-instance v1, Ljava/net/URL;

    .line 6
    .line 7
    iget-object v0, v12, Lx4/n;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, v12, Lx4/n;->c:I

    .line 17
    .line 18
    iget-object v3, v12, Lx4/n;->d:[B

    .line 19
    .line 20
    iget-wide v13, v12, Lx4/n;->g:J

    .line 21
    .line 22
    iget-wide v9, v12, Lx4/n;->h:J

    .line 23
    .line 24
    const/4 v15, 0x1

    .line 25
    invoke-virtual {v12, v15}, Lx4/n;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result v16

    .line 29
    iget-boolean v0, v11, Lx4/s;->e:Z

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-boolean v0, v11, Lx4/s;->k:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    iget-object v12, v12, Lx4/n;->e:Ljava/util/Map;

    .line 39
    .line 40
    move-object/from16 v0, p0

    .line 41
    .line 42
    move-wide v4, v13

    .line 43
    move-wide v6, v9

    .line 44
    move/from16 v8, v16

    .line 45
    .line 46
    move v9, v15

    .line 47
    move-object v10, v12

    .line 48
    invoke-direct/range {v0 .. v10}, Lx4/s;->x(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_0
    const/16 v17, 0x0

    .line 54
    .line 55
    move-object v8, v1

    .line 56
    move v6, v2

    .line 57
    move-object/from16 v18, v3

    .line 58
    .line 59
    move/from16 v0, v17

    .line 60
    .line 61
    :goto_0
    add-int/lit8 v7, v0, 0x1

    .line 62
    .line 63
    const/16 v1, 0x14

    .line 64
    .line 65
    if-gt v0, v1, :cond_8

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    iget-object v4, v12, Lx4/n;->e:Ljava/util/Map;

    .line 70
    .line 71
    move-object/from16 v0, p0

    .line 72
    .line 73
    move-object v1, v8

    .line 74
    move v2, v6

    .line 75
    move-object/from16 v3, v18

    .line 76
    .line 77
    move-object/from16 v20, v4

    .line 78
    .line 79
    move-wide v4, v13

    .line 80
    move-wide/from16 v21, v13

    .line 81
    .line 82
    move v13, v6

    .line 83
    move v14, v7

    .line 84
    move-wide v6, v9

    .line 85
    move-object/from16 v23, v8

    .line 86
    .line 87
    move/from16 v8, v16

    .line 88
    .line 89
    move-wide/from16 v24, v9

    .line 90
    .line 91
    move/from16 v9, v19

    .line 92
    .line 93
    move-object/from16 v10, v20

    .line 94
    .line 95
    invoke-direct/range {v0 .. v10}, Lx4/s;->x(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v2, "Location"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/16 v3, 0x12f

    .line 110
    .line 111
    const/16 v4, 0x12d

    .line 112
    .line 113
    const/16 v5, 0x12c

    .line 114
    .line 115
    const/16 v6, 0x12e

    .line 116
    .line 117
    if-eq v13, v15, :cond_1

    .line 118
    .line 119
    const/4 v7, 0x3

    .line 120
    if-ne v13, v7, :cond_2

    .line 121
    .line 122
    :cond_1
    if-eq v1, v5, :cond_7

    .line 123
    .line 124
    if-eq v1, v4, :cond_7

    .line 125
    .line 126
    if-eq v1, v6, :cond_7

    .line 127
    .line 128
    if-eq v1, v3, :cond_7

    .line 129
    .line 130
    const/16 v7, 0x133

    .line 131
    .line 132
    if-eq v1, v7, :cond_7

    .line 133
    .line 134
    const/16 v7, 0x134

    .line 135
    .line 136
    if-ne v1, v7, :cond_2

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_2
    const/4 v7, 0x2

    .line 140
    if-ne v13, v7, :cond_6

    .line 141
    .line 142
    if-eq v1, v5, :cond_3

    .line 143
    .line 144
    if-eq v1, v4, :cond_3

    .line 145
    .line 146
    if-eq v1, v6, :cond_3

    .line 147
    .line 148
    if-ne v1, v3, :cond_6

    .line 149
    .line 150
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    .line 152
    .line 153
    iget-boolean v0, v11, Lx4/s;->k:Z

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    if-ne v1, v6, :cond_4

    .line 158
    .line 159
    move v0, v15

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    move/from16 v0, v17

    .line 162
    .line 163
    :goto_1
    if-nez v0, :cond_5

    .line 164
    .line 165
    const/16 v18, 0x0

    .line 166
    .line 167
    move v6, v15

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move v6, v13

    .line 170
    :goto_2
    move-object/from16 v1, v23

    .line 171
    .line 172
    invoke-direct {v11, v1, v2, v12}, Lx4/s;->v(Ljava/net/URL;Ljava/lang/String;Lx4/n;)Ljava/net/URL;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object v8, v0

    .line 177
    goto :goto_4

    .line 178
    :cond_6
    return-object v0

    .line 179
    :cond_7
    :goto_3
    move-object/from16 v1, v23

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 182
    .line 183
    .line 184
    invoke-direct {v11, v1, v2, v12}, Lx4/s;->v(Ljava/net/URL;Ljava/lang/String;Lx4/n;)Ljava/net/URL;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move-object v8, v0

    .line 189
    move v6, v13

    .line 190
    :goto_4
    move v0, v14

    .line 191
    move-wide/from16 v13, v21

    .line 192
    .line 193
    move-wide/from16 v9, v24

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_8
    move v14, v7

    .line 198
    new-instance v0, Lx4/y;

    .line 199
    .line 200
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "Too many redirects: "

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/16 v2, 0x7d1

    .line 223
    .line 224
    invoke-direct {v0, v1, v12, v2, v15}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method private static z(Ljava/net/HttpURLConnection;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    sget v0, Ly4/q0;->a:I

    .line 4
    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    if-lt v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v0, p1, v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, -0x1

    .line 29
    if-ne p1, p2, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-wide/16 v0, 0x800

    .line 33
    .line 34
    cmp-long p1, p1, v0

    .line 35
    .line 36
    if-gtz p1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Class;

    .line 76
    .line 77
    const-string p2, "unexpectedEndOfInput"

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    new-array v1, v0, [Ljava/lang/Class;

    .line 81
    .line 82
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 88
    .line 89
    .line 90
    new-array p2, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method A(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    return-object p1
.end method

.method public close()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-wide v3, p0, Lx4/s;->r:J

    .line 8
    .line 9
    const-wide/16 v5, -0x1

    .line 10
    .line 11
    cmp-long v7, v3, v5

    .line 12
    .line 13
    if-nez v7, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v5, p0, Lx4/s;->s:J

    .line 17
    .line 18
    sub-long v5, v3, v5

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    invoke-static {v3, v5, v6}, Lx4/s;->z(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v2

    .line 30
    :try_start_2
    new-instance v3, Lx4/y;

    .line 31
    .line 32
    iget-object v4, p0, Lx4/s;->m:Lx4/n;

    .line 33
    .line 34
    invoke-static {v4}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lx4/n;

    .line 39
    .line 40
    const/16 v5, 0x7d0

    .line 41
    .line 42
    const/4 v6, 0x3

    .line 43
    invoke-direct {v3, v2, v4, v5, v6}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 44
    .line 45
    .line 46
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :cond_1
    :goto_1
    iput-object v1, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-direct {p0}, Lx4/s;->u()V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lx4/s;->p:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p0, Lx4/s;->p:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lx4/f;->r()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    iput-object v1, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 64
    .line 65
    invoke-direct {p0}, Lx4/s;->u()V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lx4/s;->p:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iput-boolean v0, p0, Lx4/s;->p:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lx4/f;->r()V

    .line 75
    .line 76
    .line 77
    :cond_3
    throw v2
.end method

.method public i(Lx4/n;)J
    .locals 13

    .line 1
    iput-object p1, p0, Lx4/s;->m:Lx4/n;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iput-wide v0, p0, Lx4/s;->s:J

    .line 6
    .line 7
    iput-wide v0, p0, Lx4/s;->r:J

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lx4/f;->s(Lx4/n;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    :try_start_0
    invoke-direct {p0, p1}, Lx4/s;->y(Lx4/n;)Ljava/net/HttpURLConnection;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iput v4, p0, Lx4/s;->q:I

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 29
    iget v4, p0, Lx4/s;->q:I

    .line 30
    .line 31
    const-string v5, "Content-Range"

    .line 32
    .line 33
    const/16 v6, 0xc8

    .line 34
    .line 35
    const-wide/16 v8, -0x1

    .line 36
    .line 37
    if-lt v4, v6, :cond_9

    .line 38
    .line 39
    const/16 v10, 0x12b

    .line 40
    .line 41
    if-le v4, v10, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v7, p0, Lx4/s;->l:Ln6/n;

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    invoke-interface {v7, v4}, Ln6/n;->apply(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lx4/s;->u()V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lx4/z;

    .line 64
    .line 65
    invoke-direct {v0, v4, p1}, Lx4/z;-><init>(Ljava/lang/String;Lx4/n;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_0
    iget v4, p0, Lx4/s;->q:I

    .line 70
    .line 71
    if-ne v4, v6, :cond_3

    .line 72
    .line 73
    iget-wide v6, p1, Lx4/n;->g:J

    .line 74
    .line 75
    cmp-long v4, v6, v0

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    move-wide v0, v6

    .line 80
    :cond_3
    invoke-static {v3}, Lx4/s;->w(Ljava/net/HttpURLConnection;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_6

    .line 85
    .line 86
    iget-wide v6, p1, Lx4/n;->h:J

    .line 87
    .line 88
    cmp-long v10, v6, v8

    .line 89
    .line 90
    if-eqz v10, :cond_4

    .line 91
    .line 92
    iput-wide v6, p0, Lx4/s;->r:J

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const-string v6, "Content-Length"

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v6, v5}, Lx4/c0;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    cmp-long v7, v5, v8

    .line 110
    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    sub-long v8, v5, v0

    .line 114
    .line 115
    :cond_5
    iput-wide v8, p0, Lx4/s;->r:J

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget-wide v5, p1, Lx4/n;->h:J

    .line 119
    .line 120
    iput-wide v5, p0, Lx4/s;->r:J

    .line 121
    .line 122
    :goto_1
    const/16 v5, 0x7d0

    .line 123
    .line 124
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 133
    .line 134
    iget-object v4, p0, Lx4/s;->o:Ljava/io/InputStream;

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .line 138
    .line 139
    iput-object v3, p0, Lx4/s;->o:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    :cond_7
    iput-boolean v2, p0, Lx4/s;->p:Z

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lx4/f;->t(Lx4/n;)V

    .line 144
    .line 145
    .line 146
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lx4/s;->C(JLx4/n;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .line 148
    .line 149
    iget-wide v0, p0, Lx4/s;->r:J

    .line 150
    .line 151
    return-wide v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-direct {p0}, Lx4/s;->u()V

    .line 154
    .line 155
    .line 156
    instance-of v1, v0, Lx4/y;

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    check-cast v0, Lx4/y;

    .line 161
    .line 162
    throw v0

    .line 163
    :cond_8
    new-instance v1, Lx4/y;

    .line 164
    .line 165
    invoke-direct {v1, v0, p1, v5, v2}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    invoke-direct {p0}, Lx4/s;->u()V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lx4/y;

    .line 174
    .line 175
    invoke-direct {v1, v0, p1, v5, v2}, Lx4/y;-><init>(Ljava/io/IOException;Lx4/n;II)V

    .line 176
    .line 177
    .line 178
    throw v1

    .line 179
    :cond_9
    :goto_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    iget v6, p0, Lx4/s;->q:I

    .line 184
    .line 185
    const/16 v10, 0x1a0

    .line 186
    .line 187
    if-ne v6, v10, :cond_b

    .line 188
    .line 189
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v5}, Lx4/c0;->c(Ljava/lang/String;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    iget-wide v11, p1, Lx4/n;->g:J

    .line 198
    .line 199
    cmp-long v5, v11, v5

    .line 200
    .line 201
    if-nez v5, :cond_b

    .line 202
    .line 203
    iput-boolean v2, p0, Lx4/s;->p:Z

    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lx4/f;->t(Lx4/n;)V

    .line 206
    .line 207
    .line 208
    iget-wide v2, p1, Lx4/n;->h:J

    .line 209
    .line 210
    cmp-long p1, v2, v8

    .line 211
    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    move-wide v0, v2

    .line 215
    :cond_a
    return-wide v0

    .line 216
    :cond_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    :try_start_3
    invoke-static {v0}, Ly4/q0;->T0(Ljava/io/InputStream;)[B

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    goto :goto_3

    .line 227
    :cond_c
    sget-object v0, Ly4/q0;->f:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    .line 229
    :goto_3
    move-object v11, v0

    .line 230
    goto :goto_4

    .line 231
    :catch_2
    sget-object v0, Ly4/q0;->f:[B

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :goto_4
    invoke-direct {p0}, Lx4/s;->u()V

    .line 235
    .line 236
    .line 237
    iget v0, p0, Lx4/s;->q:I

    .line 238
    .line 239
    if-ne v0, v10, :cond_d

    .line 240
    .line 241
    new-instance v0, Lx4/k;

    .line 242
    .line 243
    const/16 v1, 0x7d8

    .line 244
    .line 245
    invoke-direct {v0, v1}, Lx4/k;-><init>(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_d
    const/4 v0, 0x0

    .line 250
    :goto_5
    move-object v8, v0

    .line 251
    new-instance v0, Lx4/a0;

    .line 252
    .line 253
    iget v6, p0, Lx4/s;->q:I

    .line 254
    .line 255
    move-object v5, v0

    .line 256
    move-object v9, v4

    .line 257
    move-object v10, p1

    .line 258
    invoke-direct/range {v5 .. v11}, Lx4/a0;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lx4/n;[B)V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :catch_3
    move-exception v0

    .line 263
    invoke-direct {p0}, Lx4/s;->u()V

    .line 264
    .line 265
    .line 266
    invoke-static {v0, p1, v2}, Lx4/y;->c(Ljava/io/IOException;Lx4/n;I)Lx4/y;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    throw p1
.end method

.method public k()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lo6/r;->k()Lo6/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lx4/s$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Lx4/s$c;-><init>(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public o()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/s;->n:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lx4/s;->B([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lx4/s;->m:Lx4/n;

    .line 8
    .line 9
    invoke-static {p2}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lx4/n;

    .line 14
    .line 15
    const/4 p3, 0x2

    .line 16
    invoke-static {p1, p2, p3}, Lx4/y;->c(Ljava/io/IOException;Lx4/n;I)Lx4/y;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    throw p1
.end method
