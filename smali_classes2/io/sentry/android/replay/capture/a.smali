.class public abstract Lio/sentry/android/replay/capture/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/replay/capture/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/a$a;,
        Lio/sentry/android/replay/capture/a$b;
    }
.end annotation


# static fields
.field public static final s:Lio/sentry/android/replay/capture/a$a;

.field static final synthetic t:[Lpd/k;


# instance fields
.field private final b:Lio/sentry/s5;

.field private final c:Lio/sentry/o0;

.field private final d:Lio/sentry/transport/p;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lid/l;

.field private final g:Lxc/d;

.field private final h:Lio/sentry/android/replay/gestures/b;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lio/sentry/android/replay/h;

.field private final k:Lld/d;

.field private final l:Lld/d;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Lld/d;

.field private final o:Lld/d;

.field private final p:Lld/d;

.field private final q:Lld/d;

.field private final r:Ljava/util/Deque;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lpd/k;

    .line 3
    .line 4
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 5
    .line 6
    const-string v2, "recorderConfig"

    .line 7
    .line 8
    const-string v3, "getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;"

    .line 9
    .line 10
    const-class v4, Lio/sentry/android/replay/capture/a;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    aput-object v1, v0, v5

    .line 21
    .line 22
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 23
    .line 24
    const-string v2, "segmentTimestamp"

    .line 25
    .line 26
    const-string v3, "getSegmentTimestamp()Ljava/util/Date;"

    .line 27
    .line 28
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 39
    .line 40
    const-string v2, "screenAtStart"

    .line 41
    .line 42
    const-string v3, "getScreenAtStart()Ljava/lang/String;"

    .line 43
    .line 44
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x2

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 55
    .line 56
    const-string v2, "currentReplayId"

    .line 57
    .line 58
    const-string v3, "getCurrentReplayId()Lio/sentry/protocol/SentryId;"

    .line 59
    .line 60
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x3

    .line 68
    aput-object v1, v0, v2

    .line 69
    .line 70
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 71
    .line 72
    const-string v2, "currentSegment"

    .line 73
    .line 74
    const-string v3, "getCurrentSegment()I"

    .line 75
    .line 76
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x4

    .line 84
    aput-object v1, v0, v2

    .line 85
    .line 86
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 87
    .line 88
    const-string v2, "replayType"

    .line 89
    .line 90
    const-string v3, "getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;"

    .line 91
    .line 92
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x5

    .line 100
    aput-object v1, v0, v2

    .line 101
    .line 102
    sput-object v0, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 103
    .line 104
    new-instance v0, Lio/sentry/android/replay/capture/a$a;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lio/sentry/android/replay/capture/a;->s:Lio/sentry/android/replay/capture/a$a;

    .line 111
    .line 112
    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V
    .locals 7

    .line 1
    const-string v3, "options"

    .line 2
    .line 3
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v3, "dateProvider"

    .line 7
    .line 8
    invoke-static {p3, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v3, "replayExecutor"

    .line 12
    .line 13
    invoke-static {p4, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/android/replay/capture/a;->b:Lio/sentry/s5;

    .line 20
    .line 21
    iput-object p2, p0, Lio/sentry/android/replay/capture/a;->c:Lio/sentry/o0;

    .line 22
    .line 23
    iput-object p3, p0, Lio/sentry/android/replay/capture/a;->d:Lio/sentry/transport/p;

    .line 24
    .line 25
    iput-object p4, p0, Lio/sentry/android/replay/capture/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    iput-object p5, p0, Lio/sentry/android/replay/capture/a;->f:Lid/l;

    .line 28
    .line 29
    sget-object v0, Lio/sentry/android/replay/capture/a$c;->e:Lio/sentry/android/replay/capture/a$c;

    .line 30
    .line 31
    invoke-static {v0}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->g:Lxc/d;

    .line 36
    .line 37
    new-instance v0, Lio/sentry/android/replay/gestures/b;

    .line 38
    .line 39
    invoke-direct {v0, p3}, Lio/sentry/android/replay/gestures/b;-><init>(Lio/sentry/transport/p;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->h:Lio/sentry/android/replay/gestures/b;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v0, Lio/sentry/android/replay/capture/a$d;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-direct {v0, v1, p0, v2, p0}, Lio/sentry/android/replay/capture/a$d;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->k:Lld/d;

    .line 61
    .line 62
    new-instance v0, Lio/sentry/android/replay/capture/a$h;

    .line 63
    .line 64
    const-string v2, "segment.timestamp"

    .line 65
    .line 66
    invoke-direct {v0, v1, p0, v2, p0}, Lio/sentry/android/replay/capture/a$h;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->l:Lld/d;

    .line 70
    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    .line 78
    const-string v5, "replay.screen-at-start"

    .line 79
    .line 80
    new-instance v6, Lio/sentry/android/replay/capture/a$i;

    .line 81
    .line 82
    move-object v0, v6

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, v5

    .line 85
    move-object v4, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/a$i;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v6, p0, Lio/sentry/android/replay/capture/a;->n:Lld/d;

    .line 90
    .line 91
    sget-object v1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 92
    .line 93
    const-string v5, "replay.id"

    .line 94
    .line 95
    new-instance v6, Lio/sentry/android/replay/capture/a$e;

    .line 96
    .line 97
    move-object v0, v6

    .line 98
    move-object v3, v5

    .line 99
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/a$e;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object v6, p0, Lio/sentry/android/replay/capture/a;->o:Lld/d;

    .line 103
    .line 104
    const/4 v0, -0x1

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v5, "segment.id"

    .line 110
    .line 111
    new-instance v6, Lio/sentry/android/replay/capture/a$f;

    .line 112
    .line 113
    move-object v0, v6

    .line 114
    move-object v3, v5

    .line 115
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/a$f;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v6, p0, Lio/sentry/android/replay/capture/a;->p:Lld/d;

    .line 119
    .line 120
    const-string v5, "replay.type"

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    new-instance v6, Lio/sentry/android/replay/capture/a$g;

    .line 124
    .line 125
    move-object v0, v6

    .line 126
    move-object v3, v5

    .line 127
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/a$g;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iput-object v6, p0, Lio/sentry/android/replay/capture/a;->q:Lld/d;

    .line 131
    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->r:Ljava/util/Deque;

    .line 138
    .line 139
    return-void
.end method

.method public static final synthetic l(Lio/sentry/android/replay/capture/a;)Lio/sentry/s5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/capture/a;->b:Lio/sentry/s5;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lio/sentry/android/replay/capture/a;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/capture/a;->r()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lio/sentry/android/replay/capture/a;JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;ILjava/lang/Object;)Lio/sentry/android/replay/capture/h$c;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p15

    .line 3
    .line 4
    if-nez p16, :cond_7

    .line 5
    .line 6
    and-int/lit8 v2, v1, 0x40

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->v()Lio/sentry/t5$b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v8, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v8, p8

    .line 17
    .line 18
    :goto_0
    and-int/lit16 v2, v1, 0x80

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lio/sentry/android/replay/capture/a;->j:Lio/sentry/android/replay/h;

    .line 23
    .line 24
    move-object v9, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object/from16 v9, p9

    .line 27
    .line 28
    :goto_1
    and-int/lit16 v2, v1, 0x100

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->b()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    move v10, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move/from16 v10, p10

    .line 43
    .line 44
    :goto_2
    and-int/lit16 v2, v1, 0x200

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->a()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    move v11, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move/from16 v11, p11

    .line 59
    .line 60
    :goto_3
    and-int/lit16 v2, v1, 0x400

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->w()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v12, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move-object/from16 v12, p12

    .line 71
    .line 72
    :goto_4
    and-int/lit16 v2, v1, 0x800

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    move-object v13, v2

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move-object/from16 v13, p13

    .line 80
    .line 81
    :goto_5
    and-int/lit16 v1, v1, 0x1000

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    iget-object v1, v0, Lio/sentry/android/replay/capture/a;->r:Ljava/util/Deque;

    .line 86
    .line 87
    move-object v14, v1

    .line 88
    goto :goto_6

    .line 89
    :cond_6
    move-object/from16 v14, p14

    .line 90
    .line 91
    :goto_6
    move-object v0, p0

    .line 92
    move-wide/from16 v1, p1

    .line 93
    .line 94
    move-object/from16 v3, p3

    .line 95
    .line 96
    move-object/from16 v4, p4

    .line 97
    .line 98
    move/from16 v5, p5

    .line 99
    .line 100
    move/from16 v6, p6

    .line 101
    .line 102
    move/from16 v7, p7

    .line 103
    .line 104
    invoke-virtual/range {v0 .. v14}, Lio/sentry/android/replay/capture/a;->n(JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/h$c;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 110
    .line 111
    const-string v1, "Super calls with default arguments not supported in this target, function: createSegmentInternal"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method

.method private final r()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->g:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-persistingExecutor>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method protected final A(Lio/sentry/android/replay/u;)V
    .locals 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->k:Lld/d;

    .line 7
    .line 8
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget-object v1, v1, v2

    .line 12
    .line 13
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public B(Lio/sentry/t5$b;)V
    .locals 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->q:Lld/d;

    .line 7
    .line 8
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    aget-object v1, v1, v2

    .line 12
    .line 13
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected final C(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->n:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->h:Lio/sentry/android/replay/gestures/b;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/a;->s()Lio/sentry/android/replay/u;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lio/sentry/android/replay/gestures/b;->a(Landroid/view/MotionEvent;Lio/sentry/android/replay/u;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->r:Ljava/util/Deque;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public b(Lio/sentry/android/replay/u;)V
    .locals 1

    .line 1
    const-string v0, "recorderConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/a;->A(Lio/sentry/android/replay/u;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Lio/sentry/android/replay/u;ILio/sentry/protocol/r;Lio/sentry/t5$b;)V
    .locals 2

    .line 1
    const-string v0, "recorderConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "replayId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->f:Lid/l;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p3}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/sentry/android/replay/h;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lio/sentry/android/replay/h;

    .line 24
    .line 25
    iget-object v1, p0, Lio/sentry/android/replay/capture/a;->b:Lio/sentry/s5;

    .line 26
    .line 27
    invoke-direct {v0, v1, p3}, Lio/sentry/android/replay/h;-><init>(Lio/sentry/s5;Lio/sentry/protocol/r;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object v0, p0, Lio/sentry/android/replay/capture/a;->j:Lio/sentry/android/replay/h;

    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lio/sentry/android/replay/capture/a;->z(Lio/sentry/protocol/r;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lio/sentry/android/replay/capture/a;->i(I)V

    .line 36
    .line 37
    .line 38
    if-nez p4, :cond_3

    .line 39
    .line 40
    instance-of p2, p0, Lio/sentry/android/replay/capture/m;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    sget-object p4, Lio/sentry/t5$b;->SESSION:Lio/sentry/t5$b;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p4, Lio/sentry/t5$b;->BUFFER:Lio/sentry/t5$b;

    .line 48
    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p0, p4}, Lio/sentry/android/replay/capture/a;->B(Lio/sentry/t5$b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/a;->A(Lio/sentry/android/replay/u;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/a;->h(Ljava/util/Date;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lio/sentry/android/replay/capture/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    .line 64
    iget-object p2, p0, Lio/sentry/android/replay/capture/a;->d:Lio/sentry/transport/p;

    .line 65
    .line 66
    invoke-interface {p2}, Lio/sentry/transport/p;->a()J

    .line 67
    .line 68
    .line 69
    move-result-wide p2

    .line 70
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public e()Lio/sentry/protocol/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->o:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/sentry/protocol/r;

    .line 13
    .line 14
    return-object v0
.end method

.method public h(Ljava/util/Date;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->l:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->p:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->j:Lio/sentry/android/replay/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/replay/h;->v()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->p:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected final n(JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/h$c;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    const-string v1, "currentSegmentTimestamp"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "replayId"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "replayType"

    move-object/from16 v2, p8

    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "events"

    move-object/from16 v2, p14

    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lio/sentry/android/replay/capture/h;->a:Lio/sentry/android/replay/capture/h$a;

    .line 2
    iget-object v2, v0, Lio/sentry/android/replay/capture/a;->c:Lio/sentry/o0;

    .line 3
    iget-object v3, v0, Lio/sentry/android/replay/capture/a;->b:Lio/sentry/s5;

    .line 4
    invoke-virtual/range {v1 .. v17}, Lio/sentry/android/replay/capture/h$a;->c(Lio/sentry/o0;Lio/sentry/s5;JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/h$c;

    move-result-object v1

    return-object v1
.end method

.method protected final p()Lio/sentry/android/replay/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->j:Lio/sentry/android/replay/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method protected final q()Ljava/util/Deque;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->r:Ljava/util/Deque;

    .line 2
    .line 3
    return-object v0
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/a;->h(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected final s()Lio/sentry/android/replay/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->k:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/sentry/android/replay/u;

    .line 13
    .line 14
    return-object v0
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->j:Lio/sentry/android/replay/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/replay/h;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/a;->i(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/a;->h(Ljava/util/Date;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 24
    .line 25
    const-string v1, "EMPTY_ID"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/a;->z(Lio/sentry/protocol/r;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected final t()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final u()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Lio/sentry/t5$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->q:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/sentry/t5$b;

    .line 13
    .line 14
    return-object v0
.end method

.method protected final w()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->n:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public x()Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->l:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Date;

    .line 13
    .line 14
    return-object v0
.end method

.method protected final y()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public z(Lio/sentry/protocol/r;)V
    .locals 3

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/a;->o:Lld/d;

    .line 7
    .line 8
    sget-object v1, Lio/sentry/android/replay/capture/a;->t:[Lpd/k;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    aget-object v1, v1, v2

    .line 12
    .line 13
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
