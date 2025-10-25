.class final Llb/f0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llb/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field a:I

.field private b:J

.field c:I

.field final synthetic d:Llb/f0;


# direct methods
.method constructor <init>(Llb/f0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Llb/f0$c;->d:Llb/f0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Llb/f0$c;->a:I

    .line 8
    .line 9
    iget-object v0, p1, Llb/f0;->g:Llb/f0$b;

    .line 10
    .line 11
    iget-wide v0, v0, Llb/f0$b;->a:J

    .line 12
    .line 13
    iput-wide v0, p0, Llb/f0$c;->b:J

    .line 14
    .line 15
    iget p1, p1, Llb/f0;->j:I

    .line 16
    .line 17
    iput p1, p0, Llb/f0$c;->c:I

    .line 18
    .line 19
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 2
    .line 3
    iget v0, v0, Llb/f0;->j:I

    .line 4
    .line 5
    iget v1, p0, Llb/f0$c;->c:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public c()[B
    .locals 10

    .line 1
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 2
    .line 3
    iget-boolean v0, v0, Llb/f0;->l:Z

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Llb/f0$c;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 11
    .line 12
    invoke-virtual {v0}, Llb/f0;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Llb/f0$c;->a:I

    .line 19
    .line 20
    iget-object v1, p0, Llb/f0$c;->d:Llb/f0;

    .line 21
    .line 22
    iget v2, v1, Llb/f0;->f:I

    .line 23
    .line 24
    if-ge v0, v2, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-wide v2, p0, Llb/f0$c;->b:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Llb/f0;->q0(J)Llb/f0$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, v0, Llb/f0$b;->b:I

    .line 33
    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    iget-object v2, p0, Llb/f0$c;->d:Llb/f0;

    .line 37
    .line 38
    iget-wide v3, v0, Llb/f0$b;->a:J

    .line 39
    .line 40
    const-wide/16 v8, 0x4

    .line 41
    .line 42
    add-long/2addr v3, v8

    .line 43
    invoke-virtual {v2, v3, v4}, Llb/f0;->Z0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iput-wide v3, p0, Llb/f0$c;->b:J

    .line 48
    .line 49
    iget-object v2, p0, Llb/f0$c;->d:Llb/f0;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    iget v7, v0, Llb/f0$b;->b:I

    .line 53
    .line 54
    move-object v5, v1

    .line 55
    invoke-virtual/range {v2 .. v7}, Llb/f0;->W0(J[BII)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Llb/f0$c;->d:Llb/f0;

    .line 59
    .line 60
    iget-wide v3, v0, Llb/f0$b;->a:J

    .line 61
    .line 62
    add-long/2addr v3, v8

    .line 63
    iget v0, v0, Llb/f0$b;->b:I

    .line 64
    .line 65
    int-to-long v5, v0

    .line 66
    add-long/2addr v3, v5

    .line 67
    invoke-virtual {v2, v3, v4}, Llb/f0;->Z0(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iput-wide v2, p0, Llb/f0$c;->b:J

    .line 72
    .line 73
    iget v0, p0, Llb/f0$c;->a:I

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    iput v0, p0, Llb/f0$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Llb/f0;->g(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Error;

    .line 86
    .line 87
    throw v0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v1, "closed"

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 2
    .line 3
    iget-boolean v0, v0, Llb/f0;->l:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Llb/f0$c;->b()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Llb/f0$c;->a:I

    .line 11
    .line 12
    iget-object v1, p0, Llb/f0$c;->d:Llb/f0;

    .line 13
    .line 14
    iget v1, v1, Llb/f0;->f:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "closed"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/f0$c;->c()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Llb/f0$c;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 5
    .line 6
    invoke-virtual {v0}, Llb/f0;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Llb/f0$c;->a:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 18
    .line 19
    invoke-virtual {v0}, Llb/f0;->T0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Llb/f0$c;->d:Llb/f0;

    .line 23
    .line 24
    iget v0, v0, Llb/f0;->j:I

    .line 25
    .line 26
    iput v0, p0, Llb/f0$c;->c:I

    .line 27
    .line 28
    iget v0, p0, Llb/f0$c;->a:I

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    iput v0, p0, Llb/f0$c;->a:I

    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Llb/f0;->g(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Error;

    .line 40
    .line 41
    throw v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    .line 44
    const-string v1, "Removal is only permitted from the head."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw v0
.end method
