.class public abstract Lcf/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:C

.field public static final b:[B

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/ThreadLocal;

.field private static final g:[B

.field private static final h:Ljava/lang/ThreadLocal;

.field private static final i:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    sput-char v0, Lcf/g;->a:C

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    sput-object v0, Lcf/g;->b:[B

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcf/g;->c:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcf/h;->d:Lcf/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcf/h;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcf/g;->d:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v0, Lcf/h;->c:Lcf/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcf/h;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcf/g;->e:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Lcf/d;

    .line 33
    .line 34
    invoke-direct {v0}, Lcf/d;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcf/f;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lcf/f;-><init>(Ljava/util/function/Supplier;)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcf/g;->f:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    invoke-static {}, Lcf/g;->d()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcf/g;->g:[B

    .line 49
    .line 50
    new-instance v0, Lcf/e;

    .line 51
    .line 52
    invoke-direct {v0}, Lcf/e;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcf/f;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcf/f;-><init>(Ljava/util/function/Supplier;)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcf/g;->h:Ljava/lang/ThreadLocal;

    .line 61
    .line 62
    invoke-static {}, Lcf/g;->f()[C

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcf/g;->i:[C

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic a(Lgf/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcf/g;->r(Lgf/d;)V

    return-void
.end method

.method public static synthetic b(Lgf/e;Lgf/d;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcf/g;->s(Lgf/e;Lgf/d;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()[C
    .locals 1

    .line 1
    invoke-static {}, Lcf/g;->f()[C

    move-result-object v0

    return-object v0
.end method

.method public static d()[B
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {v0}, Lcf/g;->e(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static e(I)[B
    .locals 0

    .line 1
    new-array p0, p0, [B

    .line 2
    .line 3
    return-object p0
.end method

.method private static f()[C
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {v0}, Lcf/g;->g(I)[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static g(I)[C
    .locals 0

    .line 1
    new-array p0, p0, [C

    .line 2
    .line 3
    return-object p0
.end method

.method private static h(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcf/g;->j(Ljava/io/Closeable;Ljava/util/function/Consumer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static i(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcf/g;->j(Ljava/io/Closeable;Ljava/util/function/Consumer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static j(Ljava/io/Closeable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public static k(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcf/g;->h(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static l(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcf/g;->h(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m(Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcf/g;->h(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static n(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcf/g;->p(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/32 v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    long-to-int p0, p0

    .line 15
    :goto_0
    return p0
.end method

.method public static o(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 0

    .line 1
    invoke-static {p2}, Lcf/g;->e(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lcf/g;->q(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static p(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcf/g;->o(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static q(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4

    .line 1
    const-string v0, "inputStream"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "outputStream"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v3, v2, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v0
.end method

.method private static synthetic r(Lgf/d;)V
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Cannot read more than %,d into a byte array"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method private static synthetic s(Lgf/e;Lgf/d;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static t([B)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    array-length p0, p0

    .line 6
    :goto_0
    return p0
.end method

.method public static u(Ljava/io/InputStream;)[B
    .locals 5

    .line 1
    invoke-static {}, Lgf/e;->j()Lgf/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgf/e$a;->l()Lgf/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    new-instance v1, Lgf/d;

    .line 10
    .line 11
    new-instance v2, Lcf/b;

    .line 12
    .line 13
    invoke-direct {v2}, Lcf/b;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcf/c;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Lcf/c;-><init>(Lgf/e;)V

    .line 19
    .line 20
    .line 21
    const v4, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v4, v2, v3}, Lgf/d;-><init>(ILff/c;Lff/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-static {p0, v1}, Lcf/g;->n(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lgf/e;->b()[B

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v1}, Lgf/d;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lgf/a;->close()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_3
    invoke-virtual {v1}, Lgf/d;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    :catchall_2
    move-exception p0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    :try_start_5
    invoke-virtual {v0}, Lgf/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_3
    move-exception v0

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_1
    throw p0
.end method
