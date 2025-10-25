.class public abstract Lf4/l;
.super Lf4/f;
.source "SourceFile"


# instance fields
.field private j:[B

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lx4/j;Lx4/n;ILb3/x1;ILjava/lang/Object;[B)V
    .locals 11

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object v4, p4

    .line 16
    move/from16 v5, p5

    .line 17
    .line 18
    move-object/from16 v6, p6

    .line 19
    .line 20
    invoke-direct/range {v0 .. v10}, Lf4/f;-><init>(Lx4/j;Lx4/n;ILb3/x1;ILjava/lang/Object;JJ)V

    .line 21
    .line 22
    .line 23
    if-nez p7, :cond_0

    .line 24
    .line 25
    sget-object v0, Ly4/q0;->f:[B

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, p0

    .line 30
    move-object/from16 v0, p7

    .line 31
    .line 32
    :goto_0
    iput-object v0, v1, Lf4/l;->j:[B

    .line 33
    .line 34
    return-void
.end method

.method private i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf4/l;->j:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit16 p1, p1, 0x4000

    .line 5
    .line 6
    if-ge v1, p1, :cond_0

    .line 7
    .line 8
    array-length p1, v0

    .line 9
    add-int/lit16 p1, p1, 0x4000

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lf4/l;->j:[B

    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lf4/f;->i:Lx4/l0;

    .line 2
    .line 3
    iget-object v1, p0, Lf4/f;->b:Lx4/n;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lx4/l0;->i(Lx4/n;)J

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :cond_0
    :goto_0
    const/4 v2, -0x1

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lf4/l;->k:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, v1}, Lf4/l;->i(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf4/f;->i:Lx4/l0;

    .line 21
    .line 22
    iget-object v3, p0, Lf4/l;->j:[B

    .line 23
    .line 24
    const/16 v4, 0x4000

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1, v4}, Lx4/l0;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    add-int/2addr v1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lf4/l;->k:Z

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lf4/l;->j:[B

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lf4/l;->g([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lf4/f;->i:Lx4/l0;

    .line 44
    .line 45
    invoke-static {v0}, Lx4/m;->a(Lx4/j;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lf4/f;->i:Lx4/l0;

    .line 51
    .line 52
    invoke-static {v1}, Lx4/m;->a(Lx4/j;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf4/l;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method protected abstract g([BI)V
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lf4/l;->j:[B

    .line 2
    .line 3
    return-object v0
.end method
