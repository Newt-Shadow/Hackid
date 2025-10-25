.class public final Lio/sentry/q2;
.super Lio/sentry/p;
.source "SourceFile"

# interfaces
.implements Lio/sentry/n0;


# static fields
.field private static final i:Ljava/nio/charset/Charset;


# instance fields
.field private final e:Lio/sentry/o0;

.field private final f:Lio/sentry/m0;

.field private final g:Lio/sentry/y0;

.field private final h:Lio/sentry/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/q2;->i:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/o0;Lio/sentry/m0;Lio/sentry/y0;Lio/sentry/ILogger;JI)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p4

    .line 4
    move-wide v3, p5

    .line 5
    move v5, p7

    .line 6
    invoke-direct/range {v0 .. v5}, Lio/sentry/p;-><init>(Lio/sentry/o0;Lio/sentry/ILogger;JI)V

    .line 7
    .line 8
    .line 9
    const-string p5, "Hub is required."

    .line 10
    .line 11
    invoke-static {p1, p5}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/sentry/o0;

    .line 16
    .line 17
    iput-object p1, p0, Lio/sentry/q2;->e:Lio/sentry/o0;

    .line 18
    .line 19
    const-string p1, "Envelope reader is required."

    .line 20
    .line 21
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/sentry/m0;

    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/q2;->f:Lio/sentry/m0;

    .line 28
    .line 29
    const-string p1, "Serializer is required."

    .line 30
    .line 31
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lio/sentry/y0;

    .line 36
    .line 37
    iput-object p1, p0, Lio/sentry/q2;->g:Lio/sentry/y0;

    .line 38
    .line 39
    const-string p1, "Logger is required."

    .line 40
    .line 41
    invoke-static {p4, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lio/sentry/ILogger;

    .line 46
    .line 47
    iput-object p1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic g(Lio/sentry/q2;Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/q2;->k(Ljava/io/File;Lio/sentry/hints/k;)V

    return-void
.end method

.method public static synthetic h(Lio/sentry/hints/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/q2;->j(Lio/sentry/hints/j;)V

    return-void
.end method

.method private i(Lio/sentry/v6;)Lio/sentry/x6;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/v6;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lio/sentry/util/u;->e(Ljava/lang/Double;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 25
    .line 26
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 27
    .line 28
    const-string v2, "Invalid sample rate parsed from TraceContext: %s"

    .line 29
    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lio/sentry/x6;

    .line 39
    .line 40
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Lio/sentry/x6;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :catch_0
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 47
    .line 48
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 49
    .line 50
    const-string v2, "Unable to parse sample rate from TraceContext: %s"

    .line 51
    .line 52
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    new-instance p1, Lio/sentry/x6;

    .line 60
    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lio/sentry/x6;-><init>(Ljava/lang/Boolean;)V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method

.method private static synthetic j(Lio/sentry/hints/j;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/sentry/hints/j;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic k(Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 5

    .line 1
    const-string v0, "Failed to delete: %s"

    .line 2
    .line 3
    invoke-interface {p2}, Lio/sentry/hints/k;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 16
    .line 17
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    invoke-interface {p2, v1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p2

    .line 34
    iget-object v1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 35
    .line 36
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v1, v2, p2, v0, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    return-void
.end method

.method private l(Lio/sentry/x4;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "Item %d of type %s returned null by the parser."

    .line 22
    .line 23
    invoke-interface {v0, v1, p2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private m(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, "Item %d is being captured."

    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private n(Lio/sentry/protocol/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 4
    .line 5
    const-string v2, "Timed out waiting for event id submission: %s"

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private o(Lio/sentry/a4;Lio/sentry/protocol/r;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "Item %d of has a different event id (%s) to the envelope header (%s)"

    .line 22
    .line 23
    invoke-interface {v0, v1, p2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private p(Lio/sentry/a4;Lio/sentry/c0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lio/sentry/util/b;->e(Ljava/lang/Iterable;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "Processing Envelope with %d item(s)"

    .line 22
    .line 23
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_d

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lio/sentry/x4;

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    invoke-virtual {v2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    iget-object v2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 56
    .line 57
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "Item %d has no header"

    .line 68
    .line 69
    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget-object v3, Lio/sentry/i5;->Event:Lio/sentry/i5;

    .line 74
    .line 75
    invoke-virtual {v2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const-string v4, "Item failed to process."

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 92
    .line 93
    new-instance v5, Ljava/io/InputStreamReader;

    .line 94
    .line 95
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 96
    .line 97
    invoke-virtual {v2}, Lio/sentry/x4;->E()[B

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    .line 103
    .line 104
    sget-object v7, Lio/sentry/q2;->i:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    .line 111
    .line 112
    :try_start_1
    iget-object v5, p0, Lio/sentry/q2;->g:Lio/sentry/y0;

    .line 113
    .line 114
    const-class v6, Lio/sentry/z4;

    .line 115
    .line 116
    invoke-interface {v5, v3, v6}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Lio/sentry/z4;

    .line 121
    .line 122
    if-nez v5, :cond_1

    .line 123
    .line 124
    invoke-direct {p0, v2, v1}, Lio/sentry/q2;->l(Lio/sentry/x4;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v5}, Lio/sentry/t3;->L()Lio/sentry/protocol/p;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_2

    .line 133
    .line 134
    invoke-virtual {v5}, Lio/sentry/t3;->L()Lio/sentry/protocol/p;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lio/sentry/protocol/p;->f()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {p2, v2}, Lio/sentry/util/j;->s(Lio/sentry/c0;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v2, v6}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_3

    .line 172
    .line 173
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-direct {p0, p1, v2, v1}, Lio/sentry/q2;->o(Lio/sentry/a4;Lio/sentry/protocol/r;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_3
    :try_start_3
    iget-object v2, p0, Lio/sentry/q2;->e:Lio/sentry/o0;

    .line 186
    .line 187
    invoke-interface {v2, v5, p2}, Lio/sentry/o0;->D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v1}, Lio/sentry/q2;->m(I)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, p2}, Lio/sentry/q2;->q(Lio/sentry/c0;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-nez v2, :cond_4

    .line 198
    .line 199
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-direct {p0, v2}, Lio/sentry/q2;->n(Lio/sentry/protocol/r;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .line 205
    .line 206
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 212
    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :catchall_0
    move-exception v2

    .line 217
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :catchall_1
    move-exception v3

    .line 222
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    :catchall_2
    move-exception v2

    .line 227
    iget-object v3, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 228
    .line 229
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 230
    .line 231
    invoke-interface {v3, v5, v4, v2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_5
    sget-object v3, Lio/sentry/i5;->Transaction:Lio/sentry/i5;

    .line 237
    .line 238
    invoke-virtual {v2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v5}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_a

    .line 251
    .line 252
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    .line 253
    .line 254
    new-instance v5, Ljava/io/InputStreamReader;

    .line 255
    .line 256
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 257
    .line 258
    invoke-virtual {v2}, Lio/sentry/x4;->E()[B

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 263
    .line 264
    .line 265
    sget-object v7, Lio/sentry/q2;->i:Ljava/nio/charset/Charset;

    .line 266
    .line 267
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 268
    .line 269
    .line 270
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 271
    .line 272
    .line 273
    :try_start_8
    iget-object v5, p0, Lio/sentry/q2;->g:Lio/sentry/y0;

    .line 274
    .line 275
    const-class v6, Lio/sentry/protocol/y;

    .line 276
    .line 277
    invoke-interface {v5, v3, v6}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lio/sentry/protocol/y;

    .line 282
    .line 283
    if-nez v5, :cond_6

    .line 284
    .line 285
    invoke-direct {p0, v2, v1}, Lio/sentry/q2;->l(Lio/sentry/x4;I)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_6
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-eqz v2, :cond_7

    .line 298
    .line 299
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {v2, v6}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_7

    .line 316
    .line 317
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-direct {p0, p1, v2, v1}, Lio/sentry/q2;->o(Lio/sentry/a4;Lio/sentry/protocol/r;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 322
    .line 323
    .line 324
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_7
    :try_start_a
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lio/sentry/b4;->c()Lio/sentry/v6;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v5}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-virtual {v6}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    if-eqz v6, :cond_8

    .line 346
    .line 347
    invoke-virtual {v5}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-virtual {v6}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-direct {p0, v2}, Lio/sentry/q2;->i(Lio/sentry/v6;)Lio/sentry/x6;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-virtual {v6, v7}, Lio/sentry/l6;->n(Lio/sentry/x6;)V

    .line 360
    .line 361
    .line 362
    :cond_8
    iget-object v6, p0, Lio/sentry/q2;->e:Lio/sentry/o0;

    .line 363
    .line 364
    invoke-interface {v6, v5, v2, p2}, Lio/sentry/o0;->x(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 365
    .line 366
    .line 367
    invoke-direct {p0, v1}, Lio/sentry/q2;->m(I)V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0, p2}, Lio/sentry/q2;->q(Lio/sentry/c0;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-nez v2, :cond_9

    .line 375
    .line 376
    invoke-virtual {v5}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-direct {p0, v2}, Lio/sentry/q2;->n(Lio/sentry/protocol/r;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 381
    .line 382
    .line 383
    :try_start_b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_6

    .line 387
    .line 388
    :cond_9
    :goto_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :catchall_3
    move-exception v2

    .line 393
    :try_start_c
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 394
    .line 395
    .line 396
    goto :goto_4

    .line 397
    :catchall_4
    move-exception v3

    .line 398
    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    :goto_4
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 402
    :catchall_5
    move-exception v2

    .line 403
    iget-object v3, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 404
    .line 405
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 406
    .line 407
    invoke-interface {v3, v5, v4, v2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_a
    new-instance v3, Lio/sentry/a4;

    .line 412
    .line 413
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v4}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-virtual {v5}, Lio/sentry/b4;->b()Lio/sentry/protocol/p;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-direct {v3, v4, v5, v2}, Lio/sentry/a4;-><init>(Lio/sentry/protocol/r;Lio/sentry/protocol/p;Lio/sentry/x4;)V

    .line 430
    .line 431
    .line 432
    iget-object v4, p0, Lio/sentry/q2;->e:Lio/sentry/o0;

    .line 433
    .line 434
    invoke-interface {v4, v3, p2}, Lio/sentry/o0;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 435
    .line 436
    .line 437
    iget-object v3, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 438
    .line 439
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 440
    .line 441
    invoke-virtual {v2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v5}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-virtual {v5}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    const-string v6, "%s item %d is being captured."

    .line 462
    .line 463
    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-direct {p0, p2}, Lio/sentry/q2;->q(Lio/sentry/c0;)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-nez v3, :cond_b

    .line 471
    .line 472
    iget-object p1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 473
    .line 474
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 475
    .line 476
    invoke-virtual {v2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    const-string v1, "Timed out waiting for item type submission: %s"

    .line 493
    .line 494
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_b
    :goto_5
    invoke-static {p2}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    instance-of v3, v2, Lio/sentry/hints/p;

    .line 503
    .line 504
    if-eqz v3, :cond_c

    .line 505
    .line 506
    check-cast v2, Lio/sentry/hints/p;

    .line 507
    .line 508
    invoke-interface {v2}, Lio/sentry/hints/p;->f()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-nez v2, :cond_c

    .line 513
    .line 514
    iget-object p1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 515
    .line 516
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 517
    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    const-string v1, "Envelope had a failed capture at item %d. No more items will be sent."

    .line 527
    .line 528
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_c
    new-instance v2, Lio/sentry/p2;

    .line 533
    .line 534
    invoke-direct {v2}, Lio/sentry/p2;-><init>()V

    .line 535
    .line 536
    .line 537
    const-class v3, Lio/sentry/hints/j;

    .line 538
    .line 539
    invoke-static {p2, v3, v2}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_d
    :goto_6
    return-void
.end method

.method private q(Lio/sentry/c0;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lio/sentry/hints/i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lio/sentry/hints/i;

    .line 10
    .line 11
    invoke-interface {p1}, Lio/sentry/hints/i;->e()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const-class v0, Lio/sentry/hints/i;

    .line 17
    .line 18
    iget-object v1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lio/sentry/util/n;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/sentry/c0;)V
    .locals 1

    .line 1
    const-string v0, "Path is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p2}, Lio/sentry/q2;->f(Ljava/io/File;Lio/sentry/c0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "session"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "previous_session"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "startup_crash"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public bridge synthetic e(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/sentry/p;->e(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected f(Ljava/io/File;Lio/sentry/c0;)V
    .locals 8

    .line 1
    const-class v0, Lio/sentry/hints/k;

    .line 2
    .line 3
    const-string v1, "File is required."

    .line 4
    .line 5
    invoke-static {p1, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lio/sentry/q2;->c(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 19
    .line 20
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "File \'%s\' should be ignored."

    .line 31
    .line 32
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 37
    .line 38
    new-instance v2, Ljava/io/FileInputStream;

    .line 39
    .line 40
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    .line 46
    :try_start_1
    iget-object v2, p0, Lio/sentry/q2;->f:Lio/sentry/m0;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Lio/sentry/m0;->a(Ljava/io/InputStream;)Lio/sentry/a4;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x1

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 57
    .line 58
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 59
    .line 60
    const-string v6, "Stream from path %s resulted in a null envelope."

    .line 61
    .line 62
    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    aput-object v7, v4, v3

    .line 69
    .line 70
    invoke-interface {v2, v5, v6, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v2, p2}, Lio/sentry/q2;->p(Lio/sentry/a4;Lio/sentry/c0;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 78
    .line 79
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 80
    .line 81
    const-string v6, "File \'%s\' is done."

    .line 82
    .line 83
    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    aput-object v7, v4, v3

    .line 90
    .line 91
    invoke-interface {v2, v5, v6, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 98
    .line 99
    new-instance v2, Lio/sentry/o2;

    .line 100
    .line 101
    invoke-direct {v2, p0, p1}, Lio/sentry/o2;-><init>(Lio/sentry/q2;Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v1

    .line 111
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 115
    :catchall_2
    move-exception v1

    .line 116
    goto :goto_3

    .line 117
    :catch_0
    move-exception v1

    .line 118
    :try_start_5
    iget-object v2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 119
    .line 120
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 121
    .line 122
    const-string v4, "Error processing envelope."

    .line 123
    .line 124
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 128
    .line 129
    new-instance v2, Lio/sentry/o2;

    .line 130
    .line 131
    invoke-direct {v2, p0, p1}, Lio/sentry/o2;-><init>(Lio/sentry/q2;Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_3
    iget-object v2, p0, Lio/sentry/q2;->h:Lio/sentry/ILogger;

    .line 139
    .line 140
    new-instance v3, Lio/sentry/o2;

    .line 141
    .line 142
    invoke-direct {v3, p0, p1}, Lio/sentry/o2;-><init>(Lio/sentry/q2;Ljava/io/File;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p2, v0, v2, v3}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V

    .line 146
    .line 147
    .line 148
    throw v1
.end method
