.class public final Lsf/a;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lsf/a;->a:[B

    .line 10
    .line 11
    return-void
.end method

.method private final a(IJ)I
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    add-long/2addr p2, v0

    .line 3
    iget-object p1, p0, Lsf/a;->a:[B

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    int-to-long v2, v2

    .line 7
    cmp-long v2, p2, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    int-to-long v2, p1

    .line 13
    sub-long/2addr p2, v2

    .line 14
    sub-long/2addr v0, p2

    .line 15
    :cond_0
    long-to-int p1, v0

    .line 16
    return p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public declared-synchronized getSize()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lsf/a;->a:[B

    .line 3
    .line 4
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    int-to-long v0, v0

    .line 6
    monitor-exit p0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public declared-synchronized readAt(J[BII)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "buffer"

    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lsf/a;->a:[B

    .line 8
    .line 9
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    int-to-long v0, v0

    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    const/4 p1, -0x1

    .line 17
    return p1

    .line 18
    :cond_0
    :try_start_1
    invoke-direct {p0, p5, p1, p2}, Lsf/a;->a(IJ)I

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    iget-object v0, p0, Lsf/a;->a:[B

    .line 23
    .line 24
    long-to-int p1, p1

    .line 25
    invoke-static {v0, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return p5

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method
