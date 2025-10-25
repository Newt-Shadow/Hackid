.class public abstract Le3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/d;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/ArrayDeque;

.field private final e:[Le3/g;

.field private final f:[Le3/h;

.field private g:I

.field private h:I

.field private i:Le3/g;

.field private j:Le3/f;

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method protected constructor <init>([Le3/g;[Le3/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    iput-object p1, p0, Le3/j;->e:[Le3/g;

    .line 26
    .line 27
    array-length p1, p1

    .line 28
    iput p1, p0, Le3/j;->g:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    move v0, p1

    .line 32
    :goto_0
    iget v1, p0, Le3/j;->g:I

    .line 33
    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Le3/j;->e:[Le3/g;

    .line 37
    .line 38
    invoke-virtual {p0}, Le3/j;->g()Le3/g;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    aput-object v2, v1, v0

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iput-object p2, p0, Le3/j;->f:[Le3/h;

    .line 48
    .line 49
    array-length p2, p2

    .line 50
    iput p2, p0, Le3/j;->h:I

    .line 51
    .line 52
    :goto_1
    iget p2, p0, Le3/j;->h:I

    .line 53
    .line 54
    if-ge p1, p2, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Le3/j;->f:[Le3/h;

    .line 57
    .line 58
    invoke-virtual {p0}, Le3/j;->h()Le3/h;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    aput-object v0, p2, p1

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-instance p1, Le3/j$a;

    .line 68
    .line 69
    const-string p2, "ExoPlayer:SimpleDecoder"

    .line 70
    .line 71
    invoke-direct {p1, p0, p2}, Le3/j$a;-><init>(Le3/j;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Le3/j;->a:Ljava/lang/Thread;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static synthetic e(Le3/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le3/j;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Le3/j;->h:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private k()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Le3/j;->l:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Le3/j;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Le3/j;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, p0, Le3/j;->l:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return v2

    .line 27
    :cond_1
    iget-object v1, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Le3/g;

    .line 34
    .line 35
    iget-object v3, p0, Le3/j;->f:[Le3/h;

    .line 36
    .line 37
    iget v4, p0, Le3/j;->h:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    sub-int/2addr v4, v5

    .line 41
    iput v4, p0, Le3/j;->h:I

    .line 42
    .line 43
    aget-object v3, v3, v4

    .line 44
    .line 45
    iget-boolean v4, p0, Le3/j;->k:Z

    .line 46
    .line 47
    iput-boolean v2, p0, Le3/j;->k:Z

    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    invoke-virtual {v1}, Le3/a;->q()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    invoke-virtual {v3, v0}, Le3/a;->j(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v1}, Le3/a;->p()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/high16 v0, -0x80000000

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Le3/a;->j(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v1}, Le3/a;->r()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    const/high16 v0, 0x8000000

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Le3/a;->j(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Le3/j;->j(Le3/g;Le3/h;Z)Le3/f;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {p0, v0}, Le3/j;->i(Ljava/lang/Throwable;)Le3/f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    invoke-virtual {p0, v0}, Le3/j;->i(Ljava/lang/Throwable;)Le3/f;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v4, p0, Le3/j;->b:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v4

    .line 104
    :try_start_2
    iput-object v0, p0, Le3/j;->j:Le3/f;

    .line 105
    .line 106
    monitor-exit v4

    .line 107
    return v2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw v0

    .line 111
    :cond_5
    :goto_2
    iget-object v4, p0, Le3/j;->b:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v4

    .line 114
    :try_start_3
    iget-boolean v0, p0, Le3/j;->k:Z

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    invoke-virtual {v3}, Le3/h;->v()V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {v3}, Le3/a;->p()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget v0, p0, Le3/j;->m:I

    .line 129
    .line 130
    add-int/2addr v0, v5

    .line 131
    iput v0, p0, Le3/j;->m:I

    .line 132
    .line 133
    invoke-virtual {v3}, Le3/h;->v()V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    iget v0, p0, Le3/j;->m:I

    .line 138
    .line 139
    iput v0, v3, Le3/h;->c:I

    .line 140
    .line 141
    iput v2, p0, Le3/j;->m:I

    .line 142
    .line 143
    iget-object v0, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    invoke-direct {p0, v1}, Le3/j;->q(Le3/g;)V

    .line 149
    .line 150
    .line 151
    monitor-exit v4

    .line 152
    return v5

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    throw v0

    .line 156
    :catchall_2
    move-exception v1

    .line 157
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 158
    throw v1
.end method

.method private n()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le3/j;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Le3/j;->j:Le3/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method private q(Le3/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Le3/g;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le3/j;->e:[Le3/g;

    .line 5
    .line 6
    iget v1, p0, Le3/j;->g:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Le3/j;->g:I

    .line 11
    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method private s(Le3/h;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Le3/a;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le3/j;->f:[Le3/h;

    .line 5
    .line 6
    iget v1, p0, Le3/j;->h:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Le3/j;->h:I

    .line 11
    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Le3/j;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le3/j;->m()Le3/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le3/j;->l()Le3/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le3/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Le3/j;->p(Le3/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Le3/j;->k:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Le3/j;->m:I

    .line 9
    .line 10
    iget-object v1, p0, Le3/j;->i:Le3/g;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v1}, Le3/j;->q(Le3/g;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Le3/j;->i:Le3/g;

    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-object v1, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Le3/g;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Le3/j;->q(Le3/g;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    iget-object v1, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Le3/h;

    .line 55
    .line 56
    invoke-virtual {v1}, Le3/h;->v()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v1
.end method

.method protected abstract g()Le3/g;
.end method

.method protected abstract h()Le3/h;
.end method

.method protected abstract i(Ljava/lang/Throwable;)Le3/f;
.end method

.method protected abstract j(Le3/g;Le3/h;Z)Le3/f;
.end method

.method public final l()Le3/g;
    .locals 4

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Le3/j;->o()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Le3/j;->i:Le3/g;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {v1}, Ly4/a;->f(Z)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Le3/j;->g:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v3, p0, Le3/j;->e:[Le3/g;

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    iput v1, p0, Le3/j;->g:I

    .line 28
    .line 29
    aget-object v1, v3, v1

    .line 30
    .line 31
    :goto_1
    iput-object v1, p0, Le3/j;->i:Le3/g;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public final m()Le3/h;
    .locals 2

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Le3/j;->o()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Le3/j;->d:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Le3/h;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public final p(Le3/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Le3/j;->o()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Le3/j;->i:Le3/g;

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-static {v1}, Ly4/a;->a(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Le3/j;->c:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Le3/j;->n()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Le3/j;->i:Le3/g;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method protected r(Le3/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Le3/j;->s(Le3/h;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Le3/j;->n()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Le3/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Le3/j;->l:Z

    .line 6
    .line 7
    iget-object v1, p0, Le3/j;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v0, p0, Le3/j;->a:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method

.method protected final u(I)V
    .locals 4

    .line 1
    iget v0, p0, Le3/j;->g:I

    .line 2
    .line 3
    iget-object v1, p0, Le3/j;->e:[Le3/g;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Le3/j;->e:[Le3/g;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Le3/g;->w(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-void
.end method
