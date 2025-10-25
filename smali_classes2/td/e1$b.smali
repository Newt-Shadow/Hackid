.class public abstract Ltd/e1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Ltd/a1;
.implements Lyd/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public a:J

.field private b:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ltd/e1$b;->a:J

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Ltd/e1$b;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public b()Lyd/o0;
    .locals 2

    .line 1
    iget-object v0, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lyd/o0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lyd/o0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ltd/e1$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ltd/e1$b;->l(Ltd/e1$b;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispose()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {}, Ltd/h1;->b()Lyd/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    instance-of v1, v0, Ltd/e1$c;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Ltd/e1$c;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lyd/o0;->h(Lyd/p0;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-static {}, Ltd/h1;->b()Lyd/f0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltd/e1$b;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Ltd/e1$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public j(Lyd/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Ltd/h1;->b()Lyd/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object p1, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Failed requirement."

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public l(Ltd/e1$b;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Ltd/e1$b;->a:J

    .line 2
    .line 3
    iget-wide v2, p1, Ltd/e1$b;->a:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, v2

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-gez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method public final m(JLtd/e1$c;Ltd/e1;)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ltd/e1$b;->_heap:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {}, Ltd/h1;->b()Lyd/f0;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p1, 0x2

    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {p3}, Lyd/o0;->b()Lyd/p0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ltd/e1$b;

    .line 19
    .line 20
    invoke-static {p4}, Ltd/e1;->h1(Ltd/e1;)Z

    .line 21
    .line 22
    .line 23
    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    monitor-exit p0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :try_start_4
    iput-wide p1, p3, Ltd/e1$c;->c:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-wide v3, v0, Ltd/e1$b;->a:J

    .line 38
    .line 39
    sub-long v5, v3, p1

    .line 40
    .line 41
    cmp-long p4, v5, v1

    .line 42
    .line 43
    if-ltz p4, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move-wide p1, v3

    .line 47
    :goto_0
    iget-wide v3, p3, Ltd/e1$c;->c:J

    .line 48
    .line 49
    sub-long v3, p1, v3

    .line 50
    .line 51
    cmp-long p4, v3, v1

    .line 52
    .line 53
    if-lez p4, :cond_4

    .line 54
    .line 55
    iput-wide p1, p3, Ltd/e1$c;->c:J

    .line 56
    .line 57
    :cond_4
    :goto_1
    iget-wide p1, p0, Ltd/e1$b;->a:J

    .line 58
    .line 59
    iget-wide v3, p3, Ltd/e1$c;->c:J

    .line 60
    .line 61
    sub-long/2addr p1, v3

    .line 62
    cmp-long p1, p1, v1

    .line 63
    .line 64
    if-gez p1, :cond_5

    .line 65
    .line 66
    iput-wide v3, p0, Ltd/e1$b;->a:J

    .line 67
    .line 68
    :cond_5
    invoke-virtual {p3, p0}, Lyd/o0;->a(Lyd/p0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    monitor-exit p0

    .line 73
    const/4 p1, 0x0

    .line 74
    return p1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_6
    monitor-exit p3

    .line 77
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public final n(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Ltd/e1$b;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Delayed[nanos="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Ltd/e1$b;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x5d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
