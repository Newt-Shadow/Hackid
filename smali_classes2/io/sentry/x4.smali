.class public final Lio/sentry/x4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/x4$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/y4;

.field private final b:Ljava/util/concurrent/Callable;

.field private c:[B


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
    sput-object v0, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeItemHeader is required."

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/y4;

    iput-object p1, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    const-string p1, "DataFactory is required."

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/sentry/x4;->b:Ljava/util/concurrent/Callable;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/sentry/x4;->c:[B

    return-void
.end method

.method constructor <init>(Lio/sentry/y4;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeItemHeader is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/y4;

    iput-object p1, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    .line 3
    iput-object p2, p0, Lio/sentry/x4;->c:[B

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/x4;->b:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static A(Lio/sentry/u2;JLio/sentry/y0;)Lio/sentry/x4;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/sentry/u2;->C()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    new-instance v7, Lio/sentry/x4$a;

    .line 6
    .line 7
    new-instance v8, Lio/sentry/l4;

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, v6

    .line 11
    move-wide v2, p1

    .line 12
    move-object v4, p0

    .line 13
    move-object v5, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lio/sentry/l4;-><init>(Ljava/io/File;JLio/sentry/u2;Lio/sentry/y0;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v7, v8}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lio/sentry/y4;

    .line 21
    .line 22
    sget-object p1, Lio/sentry/i5;->Profile:Lio/sentry/i5;

    .line 23
    .line 24
    new-instance p2, Lio/sentry/m4;

    .line 25
    .line 26
    invoke-direct {p2, v7}, Lio/sentry/m4;-><init>(Lio/sentry/x4$a;)V

    .line 27
    .line 28
    .line 29
    const-string p3, "application-json"

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lio/sentry/x4;

    .line 39
    .line 40
    new-instance p2, Lio/sentry/o4;

    .line 41
    .line 42
    invoke-direct {p2, v7}, Lio/sentry/o4;-><init>(Lio/sentry/x4$a;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, p2}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public static B(Lio/sentry/y0;Lio/sentry/ILogger;Lio/sentry/t5;Lio/sentry/z2;Z)Lio/sentry/x4;
    .locals 9

    .line 1
    invoke-virtual {p2}, Lio/sentry/t5;->h0()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    new-instance v7, Lio/sentry/x4$a;

    .line 6
    .line 7
    new-instance v8, Lio/sentry/t4;

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v5, p1

    .line 14
    move v6, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Lio/sentry/t4;-><init>(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v7, v8}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lio/sentry/y4;

    .line 22
    .line 23
    sget-object p1, Lio/sentry/i5;->ReplayVideo:Lio/sentry/i5;

    .line 24
    .line 25
    new-instance p2, Lio/sentry/u4;

    .line 26
    .line 27
    invoke-direct {p2, v7}, Lio/sentry/u4;-><init>(Lio/sentry/x4$a;)V

    .line 28
    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p3}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lio/sentry/x4;

    .line 35
    .line 36
    new-instance p2, Lio/sentry/v4;

    .line 37
    .line 38
    invoke-direct {p2, v7}, Lio/sentry/v4;-><init>(Lio/sentry/x4$a;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0, p2}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public static C(Lio/sentry/y0;Lio/sentry/f6;)Lio/sentry/x4;
    .locals 4

    .line 1
    const-string v0, "ISerializer is required."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Session is required."

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/sentry/x4$a;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/c4;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/sentry/c4;-><init>(Lio/sentry/y0;Lio/sentry/f6;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lio/sentry/y4;

    .line 22
    .line 23
    sget-object p1, Lio/sentry/i5;->Session:Lio/sentry/i5;

    .line 24
    .line 25
    new-instance v1, Lio/sentry/n4;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lio/sentry/n4;-><init>(Lio/sentry/x4$a;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "application/json"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lio/sentry/x4;

    .line 37
    .line 38
    new-instance v1, Lio/sentry/p4;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lio/sentry/p4;-><init>(Lio/sentry/x4$a;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0, v1}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method private static synthetic I(Lio/sentry/b;JLio/sentry/y0;Lio/sentry/ILogger;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/b;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/b;->e()[B

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    array-length p4, p3

    .line 12
    int-to-long v0, p4

    .line 13
    invoke-virtual {p0}, Lio/sentry/b;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v0, v1, p1, p2, p0}, Lio/sentry/x4;->v(JJLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p3

    .line 21
    :cond_0
    invoke-virtual {p0}, Lio/sentry/b;->i()Lio/sentry/q1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/sentry/b;->i()Lio/sentry/q1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p3, p4, v0}, Lio/sentry/util/l;->b(Lio/sentry/y0;Lio/sentry/ILogger;Lio/sentry/q1;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    array-length p4, p3

    .line 38
    int-to-long v0, p4

    .line 39
    invoke-virtual {p0}, Lio/sentry/b;->g()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v0, v1, p1, p2, p0}, Lio/sentry/x4;->v(JJLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p3

    .line 47
    :cond_1
    invoke-virtual {p0}, Lio/sentry/b;->h()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lio/sentry/b;->h()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, p1, p2}, Lio/sentry/util/e;->b(Ljava/lang/String;J)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    new-instance p1, Lio/sentry/exception/b;

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/sentry/b;->g()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p2, "Couldn\'t attach the attachment %s.\nPlease check that either bytes, serializable or a path is set."

    .line 73
    .line 74
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {p1, p0}, Lio/sentry/exception/b;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method private static synthetic J(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic K(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic L(Lio/sentry/y0;Lio/sentry/clientreport/c;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 42
    :catchall_2
    move-exception p0

    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_3
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    throw p0
.end method

.method private static synthetic M(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic N(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic O(Lio/sentry/y0;Lio/sentry/t3;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 42
    :catchall_2
    move-exception p0

    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_3
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    throw p0
.end method

.method private static synthetic P(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic Q(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic R(Lio/sentry/metrics/a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/metrics/a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic S(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic T(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic U(Ljava/io/File;JLio/sentry/u2;Lio/sentry/y0;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1, p2}, Lio/sentry/util/e;->b(Ljava/lang/String;J)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x3

    .line 16
    invoke-static {p1, p2}, Lio/sentry/vendor/a;->c([BI)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Lio/sentry/u2;->G(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Lio/sentry/u2;->F()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 35
    .line 36
    .line 37
    :try_start_1
    new-instance p2, Ljava/io/BufferedWriter;

    .line 38
    .line 39
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 40
    .line 41
    sget-object v1, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-interface {p4, p3, p2}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 53
    .line 54
    .line 55
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    return-object p3

    .line 66
    :catchall_0
    move-exception p3

    .line 67
    :try_start_5
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p2

    .line 72
    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 76
    :catchall_2
    move-exception p2

    .line 77
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_3
    move-exception p1

    .line 82
    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 86
    :catchall_4
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_9
    new-instance p2, Lio/sentry/exception/b;

    .line 90
    .line 91
    const-string p3, "Failed to serialize profiling trace data\n%s"

    .line 92
    .line 93
    const/4 p4, 0x1

    .line 94
    new-array p4, p4, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    aput-object p1, p4, v0

    .line 102
    .line 103
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1}, Lio/sentry/exception/b;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 111
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_0
    new-instance p0, Lio/sentry/exception/b;

    .line 116
    .line 117
    const-string p1, "Profiling trace file is empty"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Lio/sentry/exception/b;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_1
    new-instance p1, Lio/sentry/exception/b;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p2, "Dropping profiling trace data, because the file \'%s\' doesn\'t exists"

    .line 134
    .line 135
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {p1, p0}, Lio/sentry/exception/b;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method

.method private static synthetic V(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic W(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic X(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)[B
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4
    .line 5
    .line 6
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_2
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lio/sentry/i5;->ReplayEvent:Lio/sentry/i5;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-interface {p0, p2, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lio/sentry/i5;->ReplayRecording:Lio/sentry/i5;

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 61
    .line 62
    .line 63
    :cond_0
    if-eqz p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-wide/32 p1, 0xa00000

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p1, p2}, Lio/sentry/util/e;->b(Ljava/lang/String;J)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    array-length p1, p0

    .line 83
    if-lez p1, :cond_1

    .line 84
    .line 85
    sget-object p1, Lio/sentry/i5;->ReplayVideo:Lio/sentry/i5;

    .line 86
    .line 87
    invoke-virtual {p1}, Lio/sentry/i5;->getItemType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {v2}, Lio/sentry/x4;->d0(Ljava/util/Map;)[B

    .line 95
    .line 96
    .line 97
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 102
    .line 103
    .line 104
    if-eqz p3, :cond_3

    .line 105
    .line 106
    if-eqz p5, :cond_2

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    return-object p0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 130
    :catchall_2
    move-exception p0

    .line 131
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catchall_3
    move-exception p1

    .line 136
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 140
    :catchall_4
    move-exception p0

    .line 141
    :try_start_9
    sget-object p1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 142
    .line 143
    const-string p2, "Could not serialize replay recording"

    .line 144
    .line 145
    invoke-interface {p4, p1, p2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 146
    .line 147
    .line 148
    if-eqz p3, :cond_5

    .line 149
    .line 150
    if-eqz p5, :cond_4

    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 164
    return-object p0

    .line 165
    :catchall_5
    move-exception p0

    .line 166
    if-eqz p3, :cond_7

    .line 167
    .line 168
    if-eqz p5, :cond_6

    .line 169
    .line 170
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_4
    throw p0
.end method

.method private static synthetic Y(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static synthetic Z(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->N(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a0(Lio/sentry/y0;Lio/sentry/f6;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 42
    :catchall_2
    move-exception p0

    .line 43
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_3
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    throw p0
.end method

.method public static synthetic b(Lio/sentry/y0;Lio/sentry/t3;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/x4;->O(Lio/sentry/y0;Lio/sentry/t3;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b0(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic c(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->S(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c0(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/x4$a;->a()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/sentry/y0;Lio/sentry/clientreport/c;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/x4;->L(Lio/sentry/y0;Lio/sentry/clientreport/c;)[B

    move-result-object p0

    return-object p0
.end method

.method private static d0(Ljava/util/Map;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    or-int/lit16 v1, v1, 0x80

    .line 11
    .line 12
    int-to-byte v1, v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    array-length v3, v2

    .line 49
    const/16 v4, -0x27

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    .line 53
    .line 54
    int-to-byte v3, v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, [B

    .line 66
    .line 67
    array-length v2, v1

    .line 68
    const/16 v3, -0x3a

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    throw p0
.end method

.method public static synthetic e(Lio/sentry/metrics/a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->R(Lio/sentry/metrics/a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->K(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->Z(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->M(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)[B
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/sentry/x4;->X(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->Q(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->c0(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->W(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->P(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lio/sentry/x4$a;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->T(Lio/sentry/x4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/io/File;JLio/sentry/u2;Lio/sentry/y0;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/x4;->U(Ljava/io/File;JLio/sentry/u2;Lio/sentry/y0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->J(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->b0(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->Y(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lio/sentry/y0;Lio/sentry/f6;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/x4;->a0(Lio/sentry/y0;Lio/sentry/f6;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lio/sentry/x4$a;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/x4;->V(Lio/sentry/x4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lio/sentry/b;JLio/sentry/y0;Lio/sentry/ILogger;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/x4;->I(Lio/sentry/b;JLio/sentry/y0;Lio/sentry/ILogger;)[B

    move-result-object p0

    return-object p0
.end method

.method private static v(JJLjava/lang/String;)V
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lio/sentry/exception/b;

    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    filled-new-array {p4, p0, p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "Dropping attachment with filename \'%s\', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes."

    .line 21
    .line 22
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Lio/sentry/exception/b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static w(Lio/sentry/y0;Lio/sentry/ILogger;Lio/sentry/b;J)Lio/sentry/x4;
    .locals 8

    .line 1
    new-instance v0, Lio/sentry/x4$a;

    .line 2
    .line 3
    new-instance v7, Lio/sentry/f4;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p2

    .line 7
    move-wide v3, p3

    .line 8
    move-object v5, p0

    .line 9
    move-object v6, p1

    .line 10
    invoke-direct/range {v1 .. v6}, Lio/sentry/f4;-><init>(Lio/sentry/b;JLio/sentry/y0;Lio/sentry/ILogger;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v7}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lio/sentry/y4;

    .line 17
    .line 18
    sget-object v2, Lio/sentry/i5;->Attachment:Lio/sentry/i5;

    .line 19
    .line 20
    new-instance v3, Lio/sentry/g4;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lio/sentry/g4;-><init>(Lio/sentry/x4$a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lio/sentry/b;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p2}, Lio/sentry/b;->g()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p2}, Lio/sentry/b;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    move-object v1, p0

    .line 38
    invoke-direct/range {v1 .. v6}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lio/sentry/x4;

    .line 42
    .line 43
    new-instance p2, Lio/sentry/h4;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Lio/sentry/h4;-><init>(Lio/sentry/x4$a;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0, p2}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method

.method public static x(Lio/sentry/y0;Lio/sentry/clientreport/c;)Lio/sentry/x4;
    .locals 4

    .line 1
    const-string v0, "ISerializer is required."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "ClientReport is required."

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/sentry/x4$a;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/i4;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/sentry/i4;-><init>(Lio/sentry/y0;Lio/sentry/clientreport/c;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lio/sentry/y4;

    .line 22
    .line 23
    invoke-static {p1}, Lio/sentry/i5;->resolve(Ljava/lang/Object;)Lio/sentry/i5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lio/sentry/j4;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lio/sentry/j4;-><init>(Lio/sentry/x4$a;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "application/json"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lio/sentry/x4;

    .line 39
    .line 40
    new-instance v1, Lio/sentry/k4;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lio/sentry/k4;-><init>(Lio/sentry/x4$a;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, v1}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public static y(Lio/sentry/y0;Lio/sentry/t3;)Lio/sentry/x4;
    .locals 4

    .line 1
    const-string v0, "ISerializer is required."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "SentryEvent is required."

    .line 7
    .line 8
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/sentry/x4$a;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/w4;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/sentry/w4;-><init>(Lio/sentry/y0;Lio/sentry/t3;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lio/sentry/y4;

    .line 22
    .line 23
    invoke-static {p1}, Lio/sentry/i5;->resolve(Ljava/lang/Object;)Lio/sentry/i5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lio/sentry/d4;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lio/sentry/d4;-><init>(Lio/sentry/x4$a;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "application/json"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lio/sentry/x4;

    .line 39
    .line 40
    new-instance v1, Lio/sentry/e4;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lio/sentry/e4;-><init>(Lio/sentry/x4$a;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, v1}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public static z(Lio/sentry/metrics/a;)Lio/sentry/x4;
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/x4$a;

    .line 2
    .line 3
    new-instance v1, Lio/sentry/q4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/sentry/q4;-><init>(Lio/sentry/metrics/a;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/sentry/x4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lio/sentry/y4;

    .line 12
    .line 13
    sget-object v1, Lio/sentry/i5;->Statsd:Lio/sentry/i5;

    .line 14
    .line 15
    new-instance v2, Lio/sentry/r4;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lio/sentry/r4;-><init>(Lio/sentry/x4$a;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "application/octet-stream"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, v1, v2, v3, v4}, Lio/sentry/y4;-><init>(Lio/sentry/i5;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lio/sentry/x4;

    .line 27
    .line 28
    new-instance v2, Lio/sentry/s4;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lio/sentry/s4;-><init>(Lio/sentry/x4$a;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2}, Lio/sentry/x4;-><init>(Lio/sentry/y4;Ljava/util/concurrent/Callable;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method


# virtual methods
.method public D(Lio/sentry/y0;)Lio/sentry/clientreport/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lio/sentry/i5;->ClientReport:Lio/sentry/i5;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v1, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/x4;->E()[B

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-class v1, Lio/sentry/clientreport/c;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lio/sentry/clientreport/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1

    .line 57
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method public E()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/x4;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/x4;->b:Ljava/util/concurrent/Callable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lio/sentry/x4;->c:[B

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/sentry/x4;->c:[B

    .line 18
    .line 19
    return-object v0
.end method

.method public F(Lio/sentry/y0;)Lio/sentry/z4;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lio/sentry/i5;->Event:Lio/sentry/i5;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v1, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/x4;->E()[B

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-class v1, Lio/sentry/z4;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lio/sentry/z4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1

    .line 57
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method public G()Lio/sentry/y4;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    .line 2
    .line 3
    return-object v0
.end method

.method public H(Lio/sentry/y0;)Lio/sentry/protocol/y;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/x4;->a:Lio/sentry/y4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lio/sentry/i5;->Transaction:Lio/sentry/i5;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v1, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/x4;->E()[B

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lio/sentry/x4;->d:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-class v1, Lio/sentry/protocol/y;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lio/sentry/protocol/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1

    .line 57
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method
