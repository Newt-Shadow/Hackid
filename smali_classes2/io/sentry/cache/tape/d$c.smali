.class final Lio/sentry/cache/tape/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field a:I

.field private b:J

.field c:I

.field final synthetic d:Lio/sentry/cache/tape/d;


# direct methods
.method constructor <init>(Lio/sentry/cache/tape/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 8
    .line 9
    iget-object v0, p1, Lio/sentry/cache/tape/d;->f:Lio/sentry/cache/tape/d$b;

    .line 10
    .line 11
    iget-wide v0, v0, Lio/sentry/cache/tape/d$b;->a:J

    .line 12
    .line 13
    iput-wide v0, p0, Lio/sentry/cache/tape/d$c;->b:J

    .line 14
    .line 15
    iget p1, p1, Lio/sentry/cache/tape/d;->i:I

    .line 16
    .line 17
    iput p1, p0, Lio/sentry/cache/tape/d$c;->c:I

    .line 18
    .line 19
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 2
    .line 3
    iget v0, v0, Lio/sentry/cache/tape/d;->i:I

    .line 4
    .line 5
    iget v1, p0, Lio/sentry/cache/tape/d$c;->c:I

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
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/sentry/cache/tape/d;->l:Z

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-direct {p0}, Lio/sentry/cache/tape/d$c;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/cache/tape/d;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 19
    .line 20
    iget-object v1, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 21
    .line 22
    iget v2, v1, Lio/sentry/cache/tape/d;->e:I

    .line 23
    .line 24
    if-ge v0, v2, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-wide v2, p0, Lio/sentry/cache/tape/d$c;->b:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lio/sentry/cache/tape/d;->V0(J)Lio/sentry/cache/tape/d$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, v0, Lio/sentry/cache/tape/d$b;->b:I

    .line 33
    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    iget-object v2, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 37
    .line 38
    iget-wide v3, v0, Lio/sentry/cache/tape/d$b;->a:J

    .line 39
    .line 40
    const-wide/16 v8, 0x4

    .line 41
    .line 42
    add-long/2addr v3, v8

    .line 43
    invoke-virtual {v2, v3, v4}, Lio/sentry/cache/tape/d;->i1(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iput-wide v3, p0, Lio/sentry/cache/tape/d$c;->b:J

    .line 48
    .line 49
    iget-object v2, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    iget v7, v0, Lio/sentry/cache/tape/d$b;->b:I

    .line 53
    .line 54
    move-object v5, v1

    .line 55
    invoke-virtual/range {v2 .. v7}, Lio/sentry/cache/tape/d;->e1(J[BII)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 62
    .line 63
    iget v0, v0, Lio/sentry/cache/tape/d;->e:I

    .line 64
    .line 65
    iput v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 66
    .line 67
    invoke-static {}, Lio/sentry/cache/tape/d;->g()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_0
    iget-object v2, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 73
    .line 74
    iget-wide v3, v0, Lio/sentry/cache/tape/d$b;->a:J

    .line 75
    .line 76
    add-long/2addr v3, v8

    .line 77
    iget v0, v0, Lio/sentry/cache/tape/d$b;->b:I

    .line 78
    .line 79
    int-to-long v5, v0

    .line 80
    add-long/2addr v3, v5

    .line 81
    invoke-virtual {v2, v3, v4}, Lio/sentry/cache/tape/d;->i1(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iput-wide v2, p0, Lio/sentry/cache/tape/d$c;->b:J

    .line 86
    .line 87
    iget v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    iput v0, p0, Lio/sentry/cache/tape/d$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    return-object v1

    .line 94
    :catch_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 95
    .line 96
    invoke-static {v0}, Lio/sentry/cache/tape/d;->s(Lio/sentry/cache/tape/d;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 100
    .line 101
    iget v0, v0, Lio/sentry/cache/tape/d;->e:I

    .line 102
    .line 103
    iput v0, p0, Lio/sentry/cache/tape/d$c;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    invoke-static {}, Lio/sentry/cache/tape/d;->g()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    invoke-static {v0}, Lio/sentry/cache/tape/d;->t0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Error;

    .line 116
    .line 117
    throw v0

    .line 118
    :catch_2
    move-exception v0

    .line 119
    invoke-static {v0}, Lio/sentry/cache/tape/d;->t0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Error;

    .line 124
    .line 125
    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v1, "closed"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/sentry/cache/tape/d;->l:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/sentry/cache/tape/d$c;->b()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 13
    .line 14
    iget v1, v1, Lio/sentry/cache/tape/d;->e:I

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
    invoke-virtual {p0}, Lio/sentry/cache/tape/d$c;->c()[B

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
    invoke-direct {p0}, Lio/sentry/cache/tape/d$c;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/cache/tape/d;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/cache/tape/d;->a1()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/cache/tape/d$c;->d:Lio/sentry/cache/tape/d;

    .line 23
    .line 24
    iget v0, v0, Lio/sentry/cache/tape/d;->i:I

    .line 25
    .line 26
    iput v0, p0, Lio/sentry/cache/tape/d$c;->c:I

    .line 27
    .line 28
    iget v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    iput v0, p0, Lio/sentry/cache/tape/d$c;->a:I

    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lio/sentry/cache/tape/d;->t0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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
