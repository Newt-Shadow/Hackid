.class public final Lve/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/j$a;
    }
.end annotation


# static fields
.field public static final g:Lve/j$a;

.field private static final h:Ljava/util/logging/Logger;


# instance fields
.field private final a:Laf/e;

.field private final b:Z

.field private final c:Laf/d;

.field private d:I

.field private e:Z

.field private final f:Lve/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lve/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lve/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lve/j;->g:Lve/j$a;

    .line 8
    .line 9
    const-class v0, Lve/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lve/j;->h:Ljava/util/logging/Logger;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Laf/e;Z)V
    .locals 7

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lve/j;->a:Laf/e;

    .line 10
    .line 11
    iput-boolean p2, p0, Lve/j;->b:Z

    .line 12
    .line 13
    new-instance v4, Laf/d;

    .line 14
    .line 15
    invoke-direct {v4}, Laf/d;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v4, p0, Lve/j;->c:Laf/d;

    .line 19
    .line 20
    const/16 p1, 0x4000

    .line 21
    .line 22
    iput p1, p0, Lve/j;->d:I

    .line 23
    .line 24
    new-instance p1, Lve/d$b;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p1

    .line 31
    invoke-direct/range {v1 .. v6}, Lve/d$b;-><init>(IZLaf/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lve/j;->f:Lve/d$b;

    .line 35
    .line 36
    return-void
.end method

.method private final w(IJ)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lve/j;->d:I

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sub-long/2addr p2, v2

    .line 15
    long-to-int v4, v2

    .line 16
    cmp-long v0, p2, v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    const/16 v1, 0x9

    .line 24
    .line 25
    invoke-virtual {p0, p1, v4, v1, v0}, Lve/j;->f(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 29
    .line 30
    iget-object v1, p0, Lve/j;->c:Laf/d;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3}, Laf/y0;->c0(Laf/d;J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lve/m;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "peerSettings"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lve/j;->d:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lve/m;->e(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lve/j;->d:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lve/m;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lve/j;->f:Lve/d$b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lve/m;->b()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Lve/d$b;->e(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x4

    .line 36
    const/4 v0, 0x1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v1, v1, p1, v0}, Lve/j;->f(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 42
    .line 43
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v0, "closed"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    .line 58
    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lve/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-object v0, Lve/j;->h:Ljava/util/logging/Logger;

    .line 13
    .line 14
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v1, ">> CONNECTION "

    .line 23
    .line 24
    sget-object v2, Lve/e;->b:Laf/g;

    .line 25
    .line 26
    invoke-virtual {v2}, Laf/g;->p()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v1, v2}, Loe/d;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 45
    .line 46
    sget-object v1, Lve/e;->b:Laf/g;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Laf/e;->s0(Laf/g;)Laf/e;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 52
    .line 53
    invoke-interface {v0}, Laf/e;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v1, "closed"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final declared-synchronized c(ZILaf/d;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1, p3, p4}, Lve/j;->e(IILaf/d;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 12
    .line 13
    const-string p2, "closed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lve/j;->e:Z

    .line 4
    .line 5
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 6
    .line 7
    invoke-interface {v0}, Laf/y0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final e(IILaf/d;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p4, v0, p2}, Lve/j;->f(IIII)V

    .line 3
    .line 4
    .line 5
    if-lez p4, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 8
    .line 9
    invoke-static {p3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    int-to-long v0, p4

    .line 13
    invoke-interface {p1, p3, v0, v1}, Laf/y0;->c0(Laf/d;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final f(IIII)V
    .locals 8

    .line 1
    sget-object v0, Lve/j;->h:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lve/e;->a:Lve/e;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, p1

    .line 15
    move v5, p2

    .line 16
    move v6, p3

    .line 17
    move v7, p4

    .line 18
    invoke-virtual/range {v2 .. v7}, Lve/e;->c(ZIIII)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lve/j;->d:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-gt p2, v0, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    if-eqz v0, :cond_4

    .line 35
    .line 36
    const/high16 v0, -0x80000000

    .line 37
    .line 38
    and-int/2addr v0, p1

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v2

    .line 43
    :goto_1
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 46
    .line 47
    invoke-static {v0, p2}, Loe/d;->Y(Laf/e;I)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lve/j;->a:Laf/e;

    .line 51
    .line 52
    and-int/lit16 p3, p3, 0xff

    .line 53
    .line 54
    invoke-interface {p2, p3}, Laf/e;->O(I)Laf/e;

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lve/j;->a:Laf/e;

    .line 58
    .line 59
    and-int/lit16 p3, p4, 0xff

    .line 60
    .line 61
    invoke-interface {p2, p3}, Laf/e;->O(I)Laf/e;

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lve/j;->a:Laf/e;

    .line 65
    .line 66
    const p3, 0x7fffffff

    .line 67
    .line 68
    .line 69
    and-int/2addr p1, p3

    .line 70
    invoke-interface {p2, p1}, Laf/e;->K(I)Laf/e;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    const-string p2, "reserved bit set: "

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string p3, "FRAME_SIZE_ERROR length > "

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget p3, p0, Lve/j;->d:I

    .line 105
    .line 106
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p3, ": "

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method public final declared-synchronized flush()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 7
    .line 8
    invoke-interface {v0}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string v1, "closed"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final declared-synchronized g(ILve/b;[B)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "debugData"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 13
    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2}, Lve/b;->b()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    .line 30
    array-length v0, p3

    .line 31
    add-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    const/4 v1, 0x7

    .line 34
    invoke-virtual {p0, v3, v0, v1, v3}, Lve/j;->f(IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lve/j;->a:Laf/e;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Laf/e;->K(I)Laf/e;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 43
    .line 44
    invoke-virtual {p2}, Lve/b;->b()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-interface {p1, p2}, Laf/e;->K(I)Laf/e;

    .line 49
    .line 50
    .line 51
    array-length p1, p3

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    move v3, v2

    .line 55
    :cond_1
    xor-int/lit8 p1, v3, 0x1

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 60
    .line 61
    invoke-interface {p1, p3}, Laf/e;->C0([B)Laf/e;

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 65
    .line 66
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 72
    .line 73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 84
    .line 85
    const-string p2, "closed"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit p0

    .line 93
    throw p1
.end method

.method public final declared-synchronized h(ZILjava/util/List;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "headerBlock"

    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lve/j;->f:Lve/d$b;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lve/d$b;->g(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lve/j;->c:Laf/d;

    .line 17
    .line 18
    invoke-virtual {p3}, Laf/d;->k0()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget p3, p0, Lve/j;->d:I

    .line 23
    .line 24
    int-to-long v2, p3

    .line 25
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long p3, v0, v2

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    or-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    :cond_1
    long-to-int p1, v2

    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-virtual {p0, p2, p1, v5, v4}, Lve/j;->f(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 46
    .line 47
    iget-object v4, p0, Lve/j;->c:Laf/d;

    .line 48
    .line 49
    invoke-interface {p1, v4, v2, v3}, Laf/y0;->c0(Laf/d;J)V

    .line 50
    .line 51
    .line 52
    if-lez p3, :cond_2

    .line 53
    .line 54
    sub-long/2addr v0, v2

    .line 55
    invoke-direct {p0, p2, v0, v1}, Lve/j;->w(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 61
    .line 62
    const-string p2, "closed"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lve/j;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized k(ZII)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v0

    .line 12
    :goto_0
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-virtual {p0, v0, v1, v2, p1}, Lve/j;->f(IIII)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Laf/e;->K(I)Laf/e;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 24
    .line 25
    invoke-interface {p1, p3}, Laf/e;->K(I)Laf/e;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 29
    .line 30
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string p2, "closed"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public final declared-synchronized q(IILjava/util/List;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "requestHeaders"

    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lve/j;->f:Lve/d$b;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lve/d$b;->g(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lve/j;->c:Laf/d;

    .line 17
    .line 18
    invoke-virtual {p3}, Laf/d;->k0()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget p3, p0, Lve/j;->d:I

    .line 23
    .line 24
    int-to-long v2, p3

    .line 25
    const-wide/16 v4, 0x4

    .line 26
    .line 27
    sub-long/2addr v2, v4

    .line 28
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    long-to-int p3, v2

    .line 33
    add-int/lit8 v2, p3, 0x4

    .line 34
    .line 35
    int-to-long v3, p3

    .line 36
    cmp-long p3, v0, v3

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    :goto_0
    const/4 v6, 0x5

    .line 44
    invoke-virtual {p0, p1, v2, v6, v5}, Lve/j;->f(IIII)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lve/j;->a:Laf/e;

    .line 48
    .line 49
    const v5, 0x7fffffff

    .line 50
    .line 51
    .line 52
    and-int/2addr p2, v5

    .line 53
    invoke-interface {v2, p2}, Laf/e;->K(I)Laf/e;

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lve/j;->a:Laf/e;

    .line 57
    .line 58
    iget-object v2, p0, Lve/j;->c:Laf/d;

    .line 59
    .line 60
    invoke-interface {p2, v2, v3, v4}, Laf/y0;->c0(Laf/d;J)V

    .line 61
    .line 62
    .line 63
    if-lez p3, :cond_1

    .line 64
    .line 65
    sub-long/2addr v0, v3

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lve/j;->w(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_1
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string p2, "closed"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final declared-synchronized s(ILve/b;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p2}, Lve/b;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-virtual {p0, p1, v0, v1, v2}, Lve/j;->f(IIII)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 30
    .line 31
    invoke-virtual {p2}, Lve/b;->b()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-interface {p1, p2}, Laf/e;->K(I)Laf/e;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 39
    .line 40
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    .line 46
    .line 47
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 58
    .line 59
    const-string p2, "closed"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public final declared-synchronized u(Lve/m;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "settings"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Lve/m;->i()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    mul-int/lit8 v0, v0, 0x6

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2, v0, v1, v2}, Lve/j;->f(IIII)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/16 v0, 0xa

    .line 23
    .line 24
    if-ge v2, v0, :cond_3

    .line 25
    .line 26
    add-int/lit8 v0, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lve/m;->f(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    if-eq v2, v1, :cond_2

    .line 36
    .line 37
    const/4 v3, 0x7

    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v3, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v3, 0x3

    .line 45
    :goto_1
    iget-object v4, p0, Lve/j;->a:Laf/e;

    .line 46
    .line 47
    invoke-interface {v4, v3}, Laf/e;->F(I)Laf/e;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lve/j;->a:Laf/e;

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lve/m;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-interface {v3, v2}, Laf/e;->K(I)Laf/e;

    .line 57
    .line 58
    .line 59
    :goto_2
    move v2, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 62
    .line 63
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v0, "closed"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final declared-synchronized v(IJ)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/j;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-wide/32 v2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    cmp-long v0, p2, v2

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v2, v1}, Lve/j;->f(IIII)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 32
    .line 33
    long-to-int p2, p2

    .line 34
    invoke-interface {p1, p2}, Laf/e;->K(I)Laf/e;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lve/j;->a:Laf/e;

    .line 38
    .line 39
    invoke-interface {p1}, Laf/e;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    .line 45
    .line 46
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 65
    .line 66
    const-string p2, "closed"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit p0

    .line 74
    throw p1
.end method
