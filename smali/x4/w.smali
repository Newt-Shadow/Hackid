.class public final Lx4/w;
.super Lx4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/w$a;,
        Lx4/w$b;
    }
.end annotation


# instance fields
.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/net/Uri;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lx4/f;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static u(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .locals 4

    .line 1
    const/16 v0, 0x7d6

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "r"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Lx4/w$b;

    .line 23
    .line 24
    const/16 v1, 0x7d0

    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    new-instance v1, Lx4/w$b;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :catch_2
    move-exception v1

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    new-instance p0, Lx4/w$b;

    .line 59
    .line 60
    sget v2, Ly4/q0;->a:I

    .line 61
    .line 62
    const/16 v3, 0x15

    .line 63
    .line 64
    if-lt v2, v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lx4/w$a;->a(Ljava/lang/Throwable;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/16 v0, 0x7d5

    .line 78
    .line 79
    :goto_0
    invoke-direct {p0, v1, v0}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    new-instance v0, Lx4/w$b;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    filled-new-array {v2, v3, p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string v2, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 102
    .line 103
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/16 v2, 0x3ec

    .line 108
    .line 109
    invoke-direct {v0, p0, v1, v2}, Lx4/w$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx4/w;->f:Landroid/net/Uri;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object v0, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 13
    .line 14
    iget-boolean v0, p0, Lx4/w;->h:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lx4/w;->h:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lx4/f;->r()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception v2

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    :try_start_1
    new-instance v3, Lx4/w$b;

    .line 28
    .line 29
    const/16 v4, 0x7d0

    .line 30
    .line 31
    invoke-direct {v3, v2, v4}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 32
    .line 33
    .line 34
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    iput-object v0, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 36
    .line 37
    iget-boolean v0, p0, Lx4/w;->h:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iput-boolean v1, p0, Lx4/w;->h:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lx4/f;->r()V

    .line 44
    .line 45
    .line 46
    :cond_2
    throw v2
.end method

.method public i(Lx4/n;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lx4/n;->a:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object v0, p0, Lx4/w;->f:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lx4/f;->s(Lx4/n;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lx4/w;->u(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 13
    .line 14
    :try_start_0
    iget-wide v1, p1, Lx4/n;->g:J

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p1, Lx4/n;->h:J

    .line 20
    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-wide v2, p1, Lx4/n;->g:J

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    :cond_0
    iput-wide v0, p0, Lx4/w;->g:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    cmp-long v0, v0, v2

    .line 41
    .line 42
    if-ltz v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lx4/w;->h:Z

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lx4/f;->t(Lx4/n;)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, p0, Lx4/w;->g:J

    .line 51
    .line 52
    return-wide v0

    .line 53
    :cond_1
    new-instance p1, Lx4/w$b;

    .line 54
    .line 55
    const/16 v0, 0x7d8

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {p1, v1, v1, v0}, Lx4/w$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    new-instance v0, Lx4/w$b;

    .line 64
    .line 65
    const/16 v1, 0x7d0

    .line 66
    .line 67
    invoke-direct {v0, p1, v1}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public o()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/w;->f:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public read([BII)I
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lx4/w;->g:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, p0, Lx4/w;->e:Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    invoke-static {v0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/io/RandomAccessFile;

    .line 22
    .line 23
    iget-wide v1, p0, Lx4/w;->g:J

    .line 24
    .line 25
    int-to-long v3, p3

    .line 26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    long-to-int p3, v1

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-lez p1, :cond_2

    .line 36
    .line 37
    iget-wide p2, p0, Lx4/w;->g:J

    .line 38
    .line 39
    int-to-long v0, p1

    .line 40
    sub-long/2addr p2, v0

    .line 41
    iput-wide p2, p0, Lx4/w;->g:J

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lx4/f;->q(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lx4/w$b;

    .line 49
    .line 50
    const/16 p3, 0x7d0

    .line 51
    .line 52
    invoke-direct {p2, p1, p3}, Lx4/w$b;-><init>(Ljava/lang/Throwable;I)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method
