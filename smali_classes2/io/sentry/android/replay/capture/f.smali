.class public final Lio/sentry/android/replay/capture/f;
.super Lio/sentry/android/replay/capture/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/f$a;
    }
.end annotation


# static fields
.field public static final z:Lio/sentry/android/replay/capture/f$a;


# instance fields
.field private final u:Lio/sentry/s5;

.field private final v:Lio/sentry/o0;

.field private final w:Lio/sentry/transport/p;

.field private final x:Lio/sentry/util/t;

.field private final y:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/capture/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/capture/f;->z:Lio/sentry/android/replay/capture/f$a;

    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Lio/sentry/util/t;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V
    .locals 6

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dateProvider"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "random"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "executor"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p2

    .line 24
    move-object v3, p3

    .line 25
    move-object v4, p5

    .line 26
    move-object v5, p6

    .line 27
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/a;-><init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 31
    .line 32
    iput-object p2, p0, Lio/sentry/android/replay/capture/f;->v:Lio/sentry/o0;

    .line 33
    .line 34
    iput-object p3, p0, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 35
    .line 36
    iput-object p4, p0, Lio/sentry/android/replay/capture/f;->x:Lio/sentry/util/t;

    .line 37
    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lio/sentry/android/replay/capture/f;->y:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic D(Lio/sentry/android/replay/capture/f;Lid/Function2;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/replay/capture/f;->Q(Lio/sentry/android/replay/capture/f;Lid/Function2;J)V

    return-void
.end method

.method public static synthetic E(Lio/sentry/android/replay/capture/f;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/replay/capture/f;->M(Lio/sentry/android/replay/capture/f;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic F(Lio/sentry/android/replay/capture/f;JLjava/util/Date;Lio/sentry/protocol/r;IIILid/l;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lio/sentry/android/replay/capture/f;->O(Lio/sentry/android/replay/capture/f;JLjava/util/Date;Lio/sentry/protocol/r;IIILid/l;)V

    return-void
.end method

.method public static synthetic G(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/replay/capture/f;->S(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic H(Lio/sentry/android/replay/capture/f;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/replay/capture/f;->L(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lio/sentry/android/replay/capture/f;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/replay/capture/f;->P(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lio/sentry/android/replay/capture/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/capture/f;->y:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K(Lio/sentry/android/replay/capture/f;)Lio/sentry/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/capture/f;->v:Lio/sentry/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final L(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lyc/m;->C(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/sentry/android/replay/capture/h$c$a;

    .line 6
    .line 7
    :goto_0
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/android/replay/capture/f;->v:Lio/sentry/o0;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v3, v2, v3}, Lio/sentry/android/replay/capture/h$c$a;->b(Lio/sentry/android/replay/capture/h$c$a;Lio/sentry/o0;Lio/sentry/c0;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lyc/m;->C(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lio/sentry/android/replay/capture/h$c$a;

    .line 21
    .line 22
    const-wide/16 v1, 0x64

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private static final M(Lio/sentry/android/replay/capture/f;Lio/sentry/u0;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->e()Lio/sentry/protocol/r;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p1, p0}, Lio/sentry/u0;->g(Lio/sentry/protocol/r;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final N(Ljava/lang/String;Lid/l;)V
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    iget-object v0, v10, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/sentry/u5;->c()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, v10, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 13
    .line 14
    invoke-interface {v2}, Lio/sentry/transport/p;->a()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->p()Lio/sentry/android/replay/h;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    check-cast v4, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, 0x1

    .line 38
    xor-int/2addr v4, v6

    .line 39
    if-ne v4, v6, :cond_0

    .line 40
    .line 41
    move v5, v6

    .line 42
    :cond_0
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->p()Lio/sentry/android/replay/h;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lio/sentry/android/replay/h;->s()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lio/sentry/android/replay/i;

    .line 60
    .line 61
    invoke-virtual {v0}, Lio/sentry/android/replay/i;->c()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sub-long v0, v2, v0

    .line 71
    .line 72
    invoke-static {v0, v1}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_0
    move-object v4, v0

    .line 77
    const-string v0, "if (cache?.frames?.isNot\u2026ReplayDuration)\n        }"

    .line 78
    .line 79
    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->k()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    sub-long/2addr v2, v0

    .line 91
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->e()Lio/sentry/protocol/r;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lio/sentry/android/replay/u;->c()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lio/sentry/android/replay/u;->d()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    iget-object v12, v10, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v1, "BufferCaptureStrategy."

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-object/from16 v1, p1

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    new-instance v14, Lio/sentry/android/replay/capture/c;

    .line 137
    .line 138
    move-object v0, v14

    .line 139
    move-object v1, p0

    .line 140
    move-object/from16 v9, p2

    .line 141
    .line 142
    invoke-direct/range {v0 .. v9}, Lio/sentry/android/replay/capture/c;-><init>(Lio/sentry/android/replay/capture/f;JLjava/util/Date;Lio/sentry/protocol/r;IIILid/l;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v11, v12, v13, v14}, Lio/sentry/android/replay/util/g;->h(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private static final O(Lio/sentry/android/replay/capture/f;JLjava/util/Date;Lio/sentry/protocol/r;IIILid/l;)V
    .locals 18

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-wide/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    const-string v9, "this$0"

    .line 18
    .line 19
    move-object/from16 v10, p0

    .line 20
    .line 21
    invoke-static {v10, v9}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v9, "$currentSegmentTimestamp"

    .line 25
    .line 26
    move-object/from16 v10, p3

    .line 27
    .line 28
    invoke-static {v10, v9}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v9, "$replayId"

    .line 32
    .line 33
    move-object/from16 v10, p4

    .line 34
    .line 35
    invoke-static {v10, v9}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v9, "$onSegmentCreated"

    .line 39
    .line 40
    invoke-static {v0, v9}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x0

    .line 49
    const/4 v15, 0x0

    .line 50
    const/16 v16, 0x1fc0

    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    invoke-static/range {v1 .. v17}, Lio/sentry/android/replay/capture/a;->o(Lio/sentry/android/replay/capture/a;JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/h$c;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final P(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "Failed to delete replay segment: %s"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v4, v3, v5

    .line 29
    .line 30
    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    iget-object v2, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 36
    .line 37
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v2, v3, v1, v0, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method private static final Q(Lio/sentry/android/replay/capture/f;Lid/Function2;J)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$store"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->p()Lio/sentry/android/replay/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1, v0, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 25
    .line 26
    invoke-interface {p1}, Lio/sentry/transport/p;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    iget-object p3, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 31
    .line 32
    invoke-virtual {p3}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p3}, Lio/sentry/u5;->c()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    sub-long/2addr p1, v0

    .line 41
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->p()Lio/sentry/android/replay/h;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p3, p1, p2}, Lio/sentry/android/replay/h;->x(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p3, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0, p3}, Lio/sentry/android/replay/capture/a;->C(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p3, p0, Lio/sentry/android/replay/capture/f;->y:Ljava/util/List;

    .line 57
    .line 58
    invoke-direct {p0, p3, p1, p2}, Lio/sentry/android/replay/capture/f;->R(Ljava/util/List;J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final R(Ljava/util/List;J)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/jvm/internal/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/android/replay/capture/f$e;

    .line 7
    .line 8
    invoke-direct {v1, p2, p3, p0, v0}, Lio/sentry/android/replay/capture/f$e;-><init>(JLio/sentry/android/replay/capture/f;Lkotlin/jvm/internal/z;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Lyc/m;->A(Ljava/util/List;Lid/l;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p2, v0, Lkotlin/jvm/internal/z;->a:Z

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    add-int/lit8 v0, p2, 0x1

    .line 36
    .line 37
    if-gez p2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lyc/m;->q()V

    .line 40
    .line 41
    .line 42
    :cond_0
    check-cast p3, Lio/sentry/android/replay/capture/h$c$a;

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Lio/sentry/android/replay/capture/h$c$a;->d(I)V

    .line 45
    .line 46
    .line 47
    move p2, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method private static final S(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/a;->a(Landroid/view/MotionEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 10
    .line 11
    invoke-interface {p1}, Lio/sentry/transport/p;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lio/sentry/u5;->c()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long v6, v0, v2

    .line 26
    .line 27
    sget-object v4, Lio/sentry/android/replay/capture/h;->a:Lio/sentry/android/replay/capture/h$a;

    .line 28
    .line 29
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->q()Ljava/util/Deque;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x4

    .line 35
    const/4 v10, 0x0

    .line 36
    invoke-static/range {v4 .. v10}, Lio/sentry/android/replay/capture/h$a;->f(Lio/sentry/android/replay/capture/h$a;Ljava/util/Deque;JLid/l;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public b(Lio/sentry/android/replay/u;)V
    .locals 2

    .line 1
    const-string v0, "recorderConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/sentry/android/replay/capture/f$c;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/f$c;-><init>(Lio/sentry/android/replay/capture/f;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "configuration_changed"

    .line 12
    .line 13
    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/f;->N(Ljava/lang/String;Lid/l;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/a;->b(Lio/sentry/android/replay/u;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(ZLid/l;)V
    .locals 3

    .line 1
    const-string v0, "onSegmentSent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/f;->x:Lio/sentry/util/t;

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lio/sentry/u5;->g()Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lio/sentry/android/replay/util/k;->a(Lio/sentry/util/t;Ljava/lang/Double;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 32
    .line 33
    const-string v0, "Replay wasn\'t sampled by onErrorSampleRate, not capturing for event"

    .line 34
    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/capture/f;->v:Lio/sentry/o0;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v2, Lio/sentry/android/replay/capture/d;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lio/sentry/android/replay/capture/d;-><init>(Lio/sentry/android/replay/capture/f;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->y()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 64
    .line 65
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 70
    .line 71
    const-string v0, "Not capturing replay for crashed event, will be captured on next launch"

    .line 72
    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    new-instance p1, Lio/sentry/android/replay/capture/f$b;

    .line 80
    .line 81
    invoke-direct {p1, p0, p2}, Lio/sentry/android/replay/capture/f$b;-><init>(Lio/sentry/android/replay/capture/f;Lid/l;)V

    .line 82
    .line 83
    .line 84
    const-string p2, "capture_replay"

    .line 85
    .line 86
    invoke-direct {p0, p2, p1}, Lio/sentry/android/replay/capture/f;->N(Ljava/lang/String;Lid/l;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Lid/Function2;)V
    .locals 4

    .line 1
    const-string p1, "store"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 7
    .line 8
    invoke-interface {p1}, Lio/sentry/transport/p;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v2, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 17
    .line 18
    new-instance v3, Lio/sentry/android/replay/capture/e;

    .line 19
    .line 20
    invoke-direct {v3, p0, p2, v0, v1}, Lio/sentry/android/replay/capture/e;-><init>(Lio/sentry/android/replay/capture/f;Lid/Function2;J)V

    .line 21
    .line 22
    .line 23
    const-string p2, "BufferCaptureStrategy.add_frame"

    .line 24
    .line 25
    invoke-static {p1, v2, p2, v3}, Lio/sentry/android/replay/util/g;->h(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g()Lio/sentry/android/replay/capture/h;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->y()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "Not converting to session mode, because the process is about to terminate"

    .line 23
    .line 24
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lio/sentry/android/replay/capture/m;

    .line 29
    .line 30
    iget-object v5, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 31
    .line 32
    iget-object v6, p0, Lio/sentry/android/replay/capture/f;->v:Lio/sentry/o0;

    .line 33
    .line 34
    iget-object v7, p0, Lio/sentry/android/replay/capture/f;->w:Lio/sentry/transport/p;

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const/4 v9, 0x0

    .line 41
    const/16 v10, 0x10

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    move-object v4, v0

    .line 45
    invoke-direct/range {v4 .. v11}, Lio/sentry/android/replay/capture/m;-><init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->k()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->e()Lio/sentry/protocol/r;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-object v4, Lio/sentry/t5$b;->BUFFER:Lio/sentry/t5$b;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/sentry/android/replay/capture/m;->c(Lio/sentry/android/replay/u;ILio/sentry/protocol/r;Lio/sentry/t5$b;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/capture/f$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/f$d;-><init>(Lio/sentry/android/replay/capture/f;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "pause"

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lio/sentry/android/replay/capture/f;->N(Ljava/lang/String;Lid/l;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lio/sentry/android/replay/capture/a;->pause()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->p()Lio/sentry/android/replay/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lio/sentry/android/replay/capture/f;->u:Lio/sentry/s5;

    .line 18
    .line 19
    new-instance v3, Lio/sentry/android/replay/capture/b;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lio/sentry/android/replay/capture/b;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "BufferCaptureStrategy.stop"

    .line 25
    .line 26
    invoke-static {v1, v2, v0, v3}, Lio/sentry/android/replay/util/g;->h(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Lio/sentry/android/replay/capture/a;->stop()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
