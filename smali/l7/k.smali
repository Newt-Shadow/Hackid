.class final Ll7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll7/k$c;,
        Ll7/k$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/Deque;

.field private c:Ll7/k$c;

.field private d:J

.field private final e:Ll7/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ll7/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ll7/k;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 10
    .line 11
    sget-object v0, Ll7/k$c;->a:Ll7/k$c;

    .line 12
    .line 13
    iput-object v0, p0, Ll7/k;->c:Ll7/k$c;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Ll7/k;->d:J

    .line 18
    .line 19
    new-instance v0, Ll7/k$b;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Ll7/k$b;-><init>(Ll7/k;Ll7/k$a;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ll7/k;->e:Ll7/k$b;

    .line 26
    .line 27
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    iput-object p1, p0, Ll7/k;->a:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    return-void
.end method

.method static synthetic a(Ll7/k;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Ll7/k;)Ll7/k$c;
    .locals 0

    .line 1
    iget-object p0, p0, Ll7/k;->c:Ll7/k$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Ll7/k;Ll7/k$c;)Ll7/k$c;
    .locals 0

    .line 1
    iput-object p1, p0, Ll7/k;->c:Ll7/k$c;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Ll7/k;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ll7/k;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Ll7/k;->d:J

    .line 7
    .line 8
    return-wide v0
.end method

.method static synthetic e()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Ll7/k;->f:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Ll7/k;->c:Ll7/k$c;

    .line 8
    .line 9
    sget-object v2, Ll7/k$c;->d:Ll7/k$c;

    .line 10
    .line 11
    if-eq v1, v2, :cond_7

    .line 12
    .line 13
    sget-object v2, Ll7/k$c;->c:Ll7/k$c;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    iget-wide v3, p0, Ll7/k;->d:J

    .line 19
    .line 20
    new-instance v1, Ll7/k$a;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Ll7/k$a;-><init>(Ll7/k;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    sget-object p1, Ll7/k$c;->b:Ll7/k$c;

    .line 31
    .line 32
    iput-object p1, p0, Ll7/k;->c:Ll7/k$c;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    const/4 v0, 0x1

    .line 36
    const/4 v5, 0x0

    .line 37
    :try_start_1
    iget-object v6, p0, Ll7/k;->a:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    iget-object v7, p0, Ll7/k;->e:Ll7/k$b;

    .line 40
    .line 41
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Ll7/k;->c:Ll7/k$c;

    .line 45
    .line 46
    if-eq v1, p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v5

    .line 50
    :goto_0
    if-eqz v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v6, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 54
    .line 55
    monitor-enter v6

    .line 56
    :try_start_2
    iget-wide v0, p0, Ll7/k;->d:J

    .line 57
    .line 58
    cmp-long v0, v0, v3

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Ll7/k;->c:Ll7/k$c;

    .line 63
    .line 64
    if-ne v0, p1, :cond_3

    .line 65
    .line 66
    iput-object v2, p0, Ll7/k;->c:Ll7/k$c;

    .line 67
    .line 68
    :cond_3
    monitor-exit v6

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    :goto_1
    iget-object v2, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 77
    .line 78
    monitor-enter v2

    .line 79
    :try_start_3
    iget-object v3, p0, Ll7/k;->c:Ll7/k$c;

    .line 80
    .line 81
    sget-object v4, Ll7/k$c;->a:Ll7/k$c;

    .line 82
    .line 83
    if-eq v3, v4, :cond_4

    .line 84
    .line 85
    sget-object v4, Ll7/k$c;->b:Ll7/k$c;

    .line 86
    .line 87
    if-ne v3, v4, :cond_5

    .line 88
    .line 89
    :cond_4
    iget-object v3, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 90
    .line 91
    invoke-interface {v3, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    move v0, v5

    .line 99
    :goto_2
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    monitor-exit v2

    .line 106
    return-void

    .line 107
    :cond_6
    throw p1

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    throw p1

    .line 111
    :cond_7
    :goto_3
    :try_start_4
    iget-object v1, p0, Ll7/k;->b:Ljava/util/Deque;

    .line 112
    .line 113
    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :catchall_2
    move-exception p1

    .line 119
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 120
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SequentialExecutor@"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "{"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ll7/k;->a:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "}"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
