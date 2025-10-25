.class abstract Lio/sentry/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final e:Ljava/nio/charset/Charset;


# instance fields
.field protected a:Lio/sentry/s5;

.field protected final b:Lio/sentry/util/m;

.field protected final c:Ljava/io/File;

.field private final d:I


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
    sput-object v0, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lio/sentry/s5;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/m;

    .line 5
    .line 6
    new-instance v1, Lio/sentry/cache/a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lio/sentry/cache/a;-><init>(Lio/sentry/cache/c;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 15
    .line 16
    const-string v0, "Directory is required."

    .line 17
    .line 18
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v0, "SentryOptions is required."

    .line 22
    .line 23
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lio/sentry/s5;

    .line 28
    .line 29
    iput-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 30
    .line 31
    new-instance p1, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 37
    .line 38
    iput p3, p0, Lio/sentry/cache/c;->d:I

    .line 39
    .line 40
    return-void
.end method

.method private A(Lio/sentry/x4;)Lio/sentry/f6;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/x4;->E()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lio/sentry/y0;

    .line 29
    .line 30
    const-class v1, Lio/sentry/f6;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lio/sentry/f6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    :catchall_2
    move-exception p1

    .line 53
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 60
    .line 61
    const-string v2, "Failed to deserialize the session."

    .line 62
    .line 63
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    return-object p1
.end method

.method private C(Lio/sentry/a4;Ljava/io/File;J)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lio/sentry/y0;

    .line 13
    .line 14
    invoke-interface {v1, p1, v0}, Lio/sentry/y0;->b(Lio/sentry/a4;Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p2

    .line 30
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :catchall_2
    move-exception p1

    .line 35
    iget-object p2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 36
    .line 37
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget-object p3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 42
    .line 43
    const-string p4, "Failed to serialize the new envelope to the disk."

    .line 44
    .line 45
    invoke-interface {p2, p3, p4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method private D([Ljava/io/File;)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le v0, v1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/cache/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/sentry/cache/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic d(Lio/sentry/cache/c;)Lio/sentry/y0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/cache/c;->r()Lio/sentry/y0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/cache/c;->s(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private i(Lio/sentry/a4;Lio/sentry/x4;)Lio/sentry/a4;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lio/sentry/x4;

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance p2, Lio/sentry/a4;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1, v0}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 40
    .line 41
    .line 42
    return-object p2
.end method

.method private l(Lio/sentry/a4;)Lio/sentry/f6;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/sentry/x4;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/sentry/cache/c;->n(Lio/sentry/x4;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, v0}, Lio/sentry/cache/c;->A(Lio/sentry/x4;)Lio/sentry/f6;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private n(Lio/sentry/x4;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/sentry/i5;->Session:Lio/sentry/i5;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method private o(Lio/sentry/a4;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method private p(Lio/sentry/f6;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/f6;->l()Lio/sentry/f6$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/sentry/f6$b;->Ok:Lio/sentry/f6$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method private synthetic r()Lio/sentry/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static synthetic s(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private t(Ljava/io/File;[Ljava/io/File;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/cache/c;->y(Ljava/io/File;)Lio/sentry/a4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lio/sentry/cache/c;->o(Lio/sentry/a4;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lio/sentry/clientreport/f;->CACHE_OVERFLOW:Lio/sentry/clientreport/f;

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Lio/sentry/clientreport/h;->b(Lio/sentry/clientreport/f;Lio/sentry/a4;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lio/sentry/cache/c;->l(Lio/sentry/a4;)Lio/sentry/f6;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_b

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lio/sentry/cache/c;->p(Lio/sentry/f6;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Lio/sentry/f6;->g()Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_b

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    array-length v0, p2

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    if-ge v1, v0, :cond_b

    .line 57
    .line 58
    aget-object v2, p2, v1

    .line 59
    .line 60
    invoke-direct {p0, v2}, Lio/sentry/cache/c;->y(Ljava/io/File;)Lio/sentry/a4;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_a

    .line 65
    .line 66
    invoke-direct {p0, v3}, Lio/sentry/cache/c;->o(Lio/sentry/a4;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    invoke-virtual {v3}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/4 v6, 0x0

    .line 87
    if-eqz v5, :cond_8

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lio/sentry/x4;

    .line 94
    .line 95
    invoke-direct {p0, v5}, Lio/sentry/cache/c;->n(Lio/sentry/x4;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-direct {p0, v5}, Lio/sentry/cache/c;->A(Lio/sentry/x4;)Lio/sentry/f6;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-direct {p0, v5}, Lio/sentry/cache/c;->p(Lio/sentry/f6;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_6

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    invoke-virtual {v5}, Lio/sentry/f6;->g()Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    if-eqz v7, :cond_7

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_7

    .line 126
    .line 127
    iget-object p2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 128
    .line 129
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 134
    .line 135
    invoke-virtual {p1}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v1, "Session %s has 2 times the init flag."

    .line 144
    .line 145
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    invoke-virtual {p1}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    if-eqz v7, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v5}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_4

    .line 168
    .line 169
    invoke-virtual {v5}, Lio/sentry/f6;->n()V

    .line 170
    .line 171
    .line 172
    :try_start_0
    iget-object v7, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 173
    .line 174
    invoke-virtual {v7}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Lio/sentry/y0;

    .line 179
    .line 180
    invoke-static {v7, v5}, Lio/sentry/x4;->C(Lio/sentry/y0;Lio/sentry/f6;)Lio/sentry/x4;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v4

    .line 189
    iget-object v5, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 190
    .line 191
    invoke-virtual {v5}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    sget-object v7, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 196
    .line 197
    invoke-virtual {p1}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const-string v9, "Failed to create new envelope item for the session %s"

    .line 206
    .line 207
    invoke-interface {v5, v7, v4, v9, v8}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    :goto_2
    if-eqz v6, :cond_a

    .line 211
    .line 212
    invoke-direct {p0, v3, v6}, Lio/sentry/cache/c;->i(Lio/sentry/a4;Lio/sentry/x4;)Lio/sentry/a4;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-nez p2, :cond_9

    .line 225
    .line 226
    iget-object p2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 227
    .line 228
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    const-string v5, "File can\'t be deleted: %s"

    .line 243
    .line 244
    invoke-interface {p2, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    invoke-direct {p0, p1, v2, v0, v1}, Lio/sentry/cache/c;->C(Lio/sentry/a4;Ljava/io/File;J)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_b
    :goto_4
    return-void
.end method

.method private y(Ljava/io/File;)Lio/sentry/a4;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object p1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lio/sentry/y0;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lio/sentry/y0;->d(Ljava/io/InputStream;)Lio/sentry/a4;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 39
    .line 40
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 45
    .line 46
    const-string v2, "Failed to deserialize the envelope."

    .line 47
    .line 48
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method


# virtual methods
.method protected B([Ljava/io/File;)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lio/sentry/cache/c;->d:I

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 13
    .line 14
    const-string v3, "Cache folder if full (respecting maxSize). Rotating files"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    new-array v5, v4, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {v1, v2, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lio/sentry/cache/c;->d:I

    .line 23
    .line 24
    sub-int v1, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lio/sentry/cache/c;->D([Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [Ljava/io/File;

    .line 36
    .line 37
    :goto_0
    if-ge v4, v1, :cond_1

    .line 38
    .line 39
    aget-object v2, p1, v4

    .line 40
    .line 41
    invoke-direct {p0, v2, v0}, Lio/sentry/cache/c;->t(Ljava/io/File;[Ljava/io/File;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    iget-object v3, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 51
    .line 52
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v5, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v6, "File can\'t be deleted: %s"

    .line 67
    .line 68
    invoke-interface {v3, v5, v6, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method protected m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 35
    .line 36
    iget-object v2, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "The directory for caching files is inaccessible.: %s"

    .line 47
    .line 48
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return v0
.end method
