.class public Lq7/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq7/f0;

.field private final b:Lw7/e;

.field private final c:Lx7/b;

.field private final d:Ls7/f;

.field private final e:Ls7/o;

.field private final f:Lq7/o0;

.field private final g:Lr7/i;


# direct methods
.method constructor <init>(Lq7/f0;Lw7/e;Lx7/b;Ls7/f;Ls7/o;Lq7/o0;Lr7/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/h1;->a:Lq7/f0;

    .line 5
    .line 6
    iput-object p2, p0, Lq7/h1;->b:Lw7/e;

    .line 7
    .line 8
    iput-object p3, p0, Lq7/h1;->c:Lx7/b;

    .line 9
    .line 10
    iput-object p4, p0, Lq7/h1;->d:Ls7/f;

    .line 11
    .line 12
    iput-object p5, p0, Lq7/h1;->e:Ls7/o;

    .line 13
    .line 14
    iput-object p6, p0, Lq7/h1;->f:Lq7/o0;

    .line 15
    .line 16
    iput-object p7, p0, Lq7/h1;->g:Lr7/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lq7/h1;Lm6/Task;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/h1;->u(Lm6/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lq7/h1;Lt7/f0$e$d;Ls7/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq7/h1;->r(Lt7/f0$e$d;Ls7/c;Z)V

    return-void
.end method

.method public static synthetic c(Lt7/f0$c;Lt7/f0$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq7/h1;->q(Lt7/f0$c;Lt7/f0$c;)I

    move-result p0

    return p0
.end method

.method private d(Lt7/f0$e$d;Ls7/f;Ls7/o;)Lt7/f0$e$d;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lq7/h1;->e(Lt7/f0$e$d;Ls7/f;Ls7/o;Ljava/util/Map;)Lt7/f0$e$d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private e(Lt7/f0$e$d;Ls7/f;Ls7/o;Ljava/util/Map;)Lt7/f0$e$d;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lt7/f0$e$d;->h()Lt7/f0$e$d$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Ls7/f;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lt7/f0$e$d$d;->a()Lt7/f0$e$d$d$a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p2}, Lt7/f0$e$d$d$a;->b(Ljava/lang/String;)Lt7/f0$e$d$d$a;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lt7/f0$e$d$d$a;->a()Lt7/f0$e$d$d;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Lt7/f0$e$d$b;->d(Lt7/f0$e$d$d;)Lt7/f0$e$d$b;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v1, "No log data to include with this event."

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p3, p4}, Ls7/o;->f(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Lq7/h1;->o(Ljava/util/Map;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p3}, Ls7/o;->g()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p3}, Lq7/h1;->o(Ljava/util/Map;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-eqz p4, :cond_1

    .line 57
    .line 58
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-nez p4, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Lt7/f0$e$d;->b()Lt7/f0$e$d$a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lt7/f0$e$d$a;->i()Lt7/f0$e$d$a$a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p2}, Lt7/f0$e$d$a$a;->e(Ljava/util/List;)Lt7/f0$e$d$a$a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p3}, Lt7/f0$e$d$a$a;->g(Ljava/util/List;)Lt7/f0$e$d$a$a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lt7/f0$e$d$a$a;->a()Lt7/f0$e$d$a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Lt7/f0$e$d$b;->b(Lt7/f0$e$d$a;)Lt7/f0$e$d$b;

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0}, Lt7/f0$e$d$b;->a()Lt7/f0$e$d;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method private f(Lt7/f0$e$d;Ljava/util/Map;)Lt7/f0$e$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/h1;->d:Ls7/f;

    .line 2
    .line 3
    iget-object v1, p0, Lq7/h1;->e:Ls7/o;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1, p2}, Lq7/h1;->e(Lt7/f0$e$d;Ls7/f;Ls7/o;Ljava/util/Map;)Lt7/f0$e$d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lq7/h1;->e:Ls7/o;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lq7/h1;->g(Lt7/f0$e$d;Ls7/o;)Lt7/f0$e$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private g(Lt7/f0$e$d;Ls7/o;)Lt7/f0$e$d;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ls7/o;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lt7/f0$e$d;->h()Lt7/f0$e$d$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lt7/f0$e$d$f;->a()Lt7/f0$e$d$f$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p2}, Lt7/f0$e$d$f$a;->b(Ljava/util/List;)Lt7/f0$e$d$f$a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lt7/f0$e$d$f$a;->a()Lt7/f0$e$d$f;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lt7/f0$e$d$b;->e(Lt7/f0$e$d$f;)Lt7/f0$e$d$b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lt7/f0$e$d$b;->a()Lt7/f0$e$d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private static h(Landroid/app/ApplicationExitInfo;)Lt7/f0$a;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lq7/u0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lq7/h1;->i(Ljava/io/InputStream;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "Could not get input trace in application exit info: "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lq7/v0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, " Error: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ln7/g;->k(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    invoke-static {}, Lt7/f0$a;->a()Lt7/f0$a$b;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {p0}, Lq7/w0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lt7/f0$a$b;->c(I)Lt7/f0$a$b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p0}, Lq7/x0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lt7/f0$a$b;->e(Ljava/lang/String;)Lt7/f0$a$b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {p0}, Lq7/y0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Lt7/f0$a$b;->g(I)Lt7/f0$a$b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {p0}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual {v1, v2, v3}, Lt7/f0$a$b;->i(J)Lt7/f0$a$b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {p0}, Lq7/a1;->a(Landroid/app/ApplicationExitInfo;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v1, v2}, Lt7/f0$a$b;->d(I)Lt7/f0$a$b;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {p0}, Lq7/b1;->a(Landroid/app/ApplicationExitInfo;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-virtual {v1, v2, v3}, Lt7/f0$a$b;->f(J)Lt7/f0$a$b;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {p0}, Lq7/c1;->a(Landroid/app/ApplicationExitInfo;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-virtual {v1, v2, v3}, Lt7/f0$a$b;->h(J)Lt7/f0$a$b;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Lt7/f0$a$b;->j(Ljava/lang/String;)Lt7/f0$a$b;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lt7/f0$a$b;->a()Lt7/f0$a;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static i(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2000

    .line 12
    .line 13
    :try_start_1
    new-array v1, v1, [B

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    :catchall_2
    move-exception p0

    .line 55
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_3
    move-exception v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    throw p0
.end method

.method public static j(Landroid/content/Context;Lq7/o0;Lw7/g;Lq7/b;Ls7/f;Ls7/o;Lz7/d;Ly7/j;Lq7/t0;Lq7/n;Lr7/i;)Lq7/h1;
    .locals 9

    .line 1
    move-object/from16 v6, p7

    .line 2
    .line 3
    new-instance v7, Lq7/f0;

    .line 4
    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p6

    .line 10
    move-object/from16 v5, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lq7/f0;-><init>(Landroid/content/Context;Lq7/o0;Lq7/b;Lz7/d;Ly7/j;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lw7/e;

    .line 16
    .line 17
    move-object v0, p2

    .line 18
    move-object/from16 v1, p9

    .line 19
    .line 20
    invoke-direct {v2, p2, v6, v1}, Lw7/e;-><init>(Lw7/g;Ly7/j;Lq7/n;)V

    .line 21
    .line 22
    .line 23
    move-object v0, p0

    .line 24
    move-object/from16 v1, p8

    .line 25
    .line 26
    invoke-static {p0, v6, v1}, Lx7/b;->b(Landroid/content/Context;Ly7/j;Lq7/t0;)Lx7/b;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v8, Lq7/h1;

    .line 31
    .line 32
    move-object v0, v8

    .line 33
    move-object v1, v7

    .line 34
    move-object v4, p4

    .line 35
    move-object v5, p5

    .line 36
    move-object v6, p1

    .line 37
    move-object/from16 v7, p10

    .line 38
    .line 39
    invoke-direct/range {v0 .. v7}, Lq7/h1;-><init>(Lq7/f0;Lw7/e;Lx7/b;Ls7/f;Ls7/o;Lq7/o0;Lr7/i;)V

    .line 40
    .line 41
    .line 42
    return-object v8
.end method

.method private k(Lq7/g0;)Lq7/g0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lq7/g0;->b()Lt7/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lt7/f0;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lq7/g0;->b()Lt7/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lt7/f0;->g()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lq7/h1;->f:Lq7/o0;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lq7/o0;->d(Z)Lq7/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lq7/g0;->b()Lt7/f0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lq7/n0;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lt7/f0;->t(Ljava/lang/String;)Lt7/f0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lq7/n0;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lt7/f0;->s(Ljava/lang/String;)Lt7/f0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lq7/g0;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lq7/g0;->c()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, v1, p1}, Lq7/g0;->a(Lt7/f0;Ljava/lang/String;Ljava/io/File;)Lq7/g0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private n(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw7/e;->q(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Lq7/d1;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lq7/z0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v3, v3, v0

    .line 31
    .line 32
    if-gez v3, :cond_0

    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    invoke-static {p2}, Lq7/y0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x6

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object p2

    .line 44
    :cond_2
    return-object v2
.end method

.method private static o(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-static {}, Lt7/f0$c;->a()Lt7/f0$c$a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lt7/f0$c$a;->b(Ljava/lang/String;)Lt7/f0$c$a;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lt7/f0$c$a;->c(Ljava/lang/String;)Lt7/f0$c$a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lt7/f0$c$a;->a()Lt7/f0$c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance p0, Lq7/g1;

    .line 66
    .line 67
    invoke-direct {p0}, Lq7/g1;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method private static synthetic q(Lt7/f0$c;Lt7/f0$c;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lt7/f0$c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lt7/f0$c;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private synthetic r(Lt7/f0$e$d;Ls7/c;Z)V
    .locals 2

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "disk worker: log non-fatal event to persistence"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 11
    .line 12
    invoke-virtual {p2}, Ls7/c;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lw7/e;->y(Lt7/f0$e$d;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private u(Lm6/Task;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lq7/g0;

    .line 12
    .line 13
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lq7/g0;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lq7/g0;->c()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "Deleted report file: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "Crashlytics could not delete report file: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ln7/g;->k(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    const/4 p1, 0x1

    .line 109
    return p1

    .line 110
    :cond_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    .line 115
    .line 116
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, v1, p1}, Ln7/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    return p1
.end method

.method private v(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ls7/c;Z)V
    .locals 10

    .line 1
    const-string v0, "crash"

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lq7/h1;->a:Lq7/f0;

    .line 8
    .line 9
    invoke-virtual {p4}, Ls7/c;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    const/4 v7, 0x4

    .line 14
    const/16 v8, 0x8

    .line 15
    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move v9, p5

    .line 20
    invoke-virtual/range {v1 .. v9}, Lq7/f0;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lt7/f0$e$d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p4}, Ls7/c;->a()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p0, p1, p2}, Lq7/h1;->f(Lt7/f0$e$d;Ljava/util/Map;)Lt7/f0$e$d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p5, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lq7/h1;->g:Lr7/i;

    .line 35
    .line 36
    iget-object p2, p2, Lr7/i;->b:Lr7/e;

    .line 37
    .line 38
    new-instance p3, Lq7/f1;

    .line 39
    .line 40
    invoke-direct {p3, p0, p1, p4, v0}, Lq7/f1;-><init>(Lq7/h1;Lt7/f0$e$d;Ls7/c;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object p2, p0, Lq7/h1;->b:Lw7/e;

    .line 48
    .line 49
    invoke-virtual {p4}, Ls7/c;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p2, p1, p3, v0}, Lw7/e;->y(Lt7/f0$e$d;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public A(Ljava/util/concurrent/Executor;)Lm6/Task;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lq7/h1;->B(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lm6/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public B(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lm6/Task;
    .locals 5

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw7/e;->w()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lq7/g0;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lq7/g0;->d()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    :cond_1
    iget-object v3, p0, Lq7/h1;->c:Lx7/b;

    .line 41
    .line 42
    invoke-direct {p0, v2}, Lq7/h1;->k(Lq7/g0;)Lq7/g0;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    :goto_1
    invoke-virtual {v3, v2, v4}, Lx7/b;->c(Lq7/g0;Z)Lm6/Task;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lq7/e1;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lq7/e1;-><init>(Lq7/h1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1, v3}, Lm6/Task;->g(Ljava/util/concurrent/Executor;Lm6/c;)Lm6/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {v1}, Lm6/n;->f(Ljava/util/Collection;)Lm6/Task;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Lt7/f0$a;)V
    .locals 2

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SessionReportingCoordinator#finalizeSessionWithNativeEvent"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lq7/r0;

    .line 30
    .line 31
    invoke-interface {v1}, Lq7/r0;->b()Lt7/f0$d$b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p0, Lq7/h1;->b:Lw7/e;

    .line 42
    .line 43
    invoke-static {}, Lt7/f0$d;->a()Lt7/f0$d$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lt7/f0$d$a;->b(Ljava/util/List;)Lt7/f0$d$a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lt7/f0$d$a;->a()Lt7/f0$d;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, p1, v0, p3}, Lw7/e;->l(Ljava/lang/String;Lt7/f0$d;Lt7/f0$a;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public m(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0, p3, p1, p2}, Lw7/e;->k(Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw7/e;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw7/e;->p()Ljava/util/SortedSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h1;->a:Lq7/f0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lq7/f0;->e(Ljava/lang/String;J)Lt7/f0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lq7/h1;->b:Lw7/e;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lw7/e;->z(Lt7/f0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public w(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Persisting fatal event for session "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Ls7/c;

    .line 26
    .line 27
    invoke-direct {v6, p3, p4, p5}, Ls7/c;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    const-string v5, "crash"

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p2

    .line 36
    invoke-direct/range {v2 .. v7}, Lq7/h1;->v(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ls7/c;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public x(Ljava/lang/Throwable;Ljava/lang/Thread;Ls7/c;)V
    .locals 8

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Persisting non-fatal event for session "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Ls7/c;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v5, "error"

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v2, p0

    .line 33
    move-object v3, p1

    .line 34
    move-object v4, p2

    .line 35
    move-object v6, p3

    .line 36
    invoke-direct/range {v2 .. v7}, Lq7/h1;->v(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ls7/c;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/util/List;Ls7/f;Ls7/o;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lq7/h1;->n(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p4, "No relevant ApplicationExitInfo occurred during session: "

    .line 17
    .line 18
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lq7/h1;->a:Lq7/f0;

    .line 33
    .line 34
    invoke-static {p2}, Lq7/h1;->h(Landroid/app/ApplicationExitInfo;)Lt7/f0$a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Lq7/f0;->c(Lt7/f0$a;)Lt7/f0$e$d;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Persisting anr for session "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p2, p3, p4}, Lq7/h1;->d(Lt7/f0$e$d;Ls7/f;Ls7/o;)Lt7/f0$e$d;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p0, p2, p4}, Lq7/h1;->g(Lt7/f0$e$d;Ls7/o;)Lt7/f0$e$d;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object p3, p0, Lq7/h1;->b:Lw7/e;

    .line 75
    .line 76
    const/4 p4, 0x1

    .line 77
    invoke-virtual {p3, p2, p1, p4}, Lw7/e;->y(Lt7/f0$e$d;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/h1;->b:Lw7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw7/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
