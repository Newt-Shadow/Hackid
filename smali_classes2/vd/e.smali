.class public Lvd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd/e$a;
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field private final a:I

.field public final b:Lid/l;

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private final c:Lid/p;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "sendersAndCloseStatus$volatile"

    const-class v1, Lvd/e;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lvd/e;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILid/l;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lvd/e;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lvd/e;->b:Lid/l;

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Lvd/f;->t(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lvd/e;->bufferEnd$volatile:J

    .line 20
    .line 21
    invoke-direct {p0}, Lvd/e;->T()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lvd/e;->completedExpandBuffersAndPauseFlag$volatile:J

    .line 26
    .line 27
    new-instance p1, Lvd/m;

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v7, 0x3

    .line 33
    move-object v2, p1

    .line 34
    move-object v6, p0

    .line 35
    invoke-direct/range {v2 .. v7}, Lvd/m;-><init>(JLvd/m;Lvd/e;I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lvd/e;->sendSegment$volatile:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p1, p0, Lvd/e;->receiveSegment$volatile:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p0}, Lvd/e;->r0()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lvd/f;->n()Lvd/m;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object p1, p0, Lvd/e;->bufferEndSegment$volatile:Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    new-instance p1, Lvd/c;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lvd/c;-><init>(Lvd/e;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    :goto_1
    iput-object p1, p0, Lvd/e;->c:Lid/p;

    .line 69
    .line 70
    invoke-static {}, Lvd/f;->l()Lyd/f0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lvd/e;->_closeCause$volatile:Ljava/lang/Object;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v0, "Invalid channel capacity: "

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ", should be >=0"

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p2
.end method

.method public static final synthetic A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lvd/e;->W0(Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final A0(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ltd/n;

    .line 2
    .line 3
    invoke-static {p2}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ltd/n;-><init>(Lad/e;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ltd/n;->E()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lvd/e;->b:Lid/l;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, p1, v3, v2, v3}, Lyd/y;->c(Lid/l;Ljava/lang/Object;Lyd/r0;ILjava/lang/Object;)Lyd/r0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 34
    .line 35
    invoke-static {p1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 52
    .line 53
    invoke-static {p1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v0, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne p1, v0, :cond_1

    .line 73
    .line 74
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p1, p2, :cond_2

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 85
    .line 86
    return-object p1
.end method

.method public static final synthetic B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lvd/e;->Y0(Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final B0(Ljava/lang/Object;Ltd/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/e;->b:Lid/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1, v1}, Lyd/y;->a(Lid/l;Ljava/lang/Object;Lad/i;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 17
    .line 18
    invoke-static {p1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final C(Lid/l;Ljava/lang/Object;)Lid/p;
    .locals 1

    .line 1
    new-instance v0, Lvd/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lvd/b;-><init>(Lid/l;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final D(Lid/l;)Lpd/f;
    .locals 0

    .line 1
    new-instance p1, Lvd/e$b;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lvd/e$b;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method private static final E(Lid/l;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p4}, Lyd/y;->a(Lid/l;Ljava/lang/Object;Lad/i;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final E0(Lvd/e;Lbe/a;Ljava/lang/Object;Ljava/lang/Object;)Lid/p;
    .locals 0

    .line 1
    new-instance p2, Lvd/d;

    .line 2
    .line 3
    invoke-direct {p2, p3, p0, p1}, Lvd/d;-><init>(Ljava/lang/Object;Lvd/e;Lbe/a;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method private final F(J)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lvd/e;->T()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget v2, p0, Lvd/e;->a:I

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    cmp-long p1, p1, v0

    .line 18
    .line 19
    if-gez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private static final F0(Ljava/lang/Object;Lvd/e;Lbe/a;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eq p0, p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lvd/e;->b:Lid/l;

    .line 8
    .line 9
    invoke-interface {p2}, Lbe/a;->getContext()Lad/i;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, p0, p2}, Lyd/y;->a(Lid/l;Ljava/lang/Object;Lad/i;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 17
    .line 18
    return-object p0
.end method

.method private final G0(Ltd/s2;Lvd/m;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvd/e;->D0()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2, p3}, Ltd/s2;->b(Lyd/c0;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final H(Lvd/m;J)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lyd/l;->b(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    const/4 v2, -0x1

    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    sget v3, Lvd/f;->b:I

    .line 11
    .line 12
    sub-int/2addr v3, v1

    .line 13
    :goto_1
    if-ge v2, v3, :cond_5

    .line 14
    .line 15
    iget-wide v4, p1, Lyd/c0;->c:J

    .line 16
    .line 17
    sget v6, Lvd/f;->b:I

    .line 18
    .line 19
    int-to-long v6, v6

    .line 20
    mul-long/2addr v4, v6

    .line 21
    int-to-long v6, v3

    .line 22
    add-long/2addr v4, v6

    .line 23
    cmp-long v4, v4, p2

    .line 24
    .line 25
    if-ltz v4, :cond_6

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, v3}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-ne v4, v5, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    instance-of v5, v4, Lvd/y;

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p1, v3, v4, v5}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    check-cast v4, Lvd/y;

    .line 55
    .line 56
    iget-object v4, v4, Lvd/y;->a:Ltd/s2;

    .line 57
    .line 58
    invoke-static {v0, v4}, Lyd/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v3, v1}, Lvd/m;->C(IZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    instance-of v5, v4, Ltd/s2;

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {p1, v3, v4, v5}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_0

    .line 79
    .line 80
    invoke-static {v0, v4}, Lyd/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v3, v1}, Lvd/m;->C(IZ)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :goto_2
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p1, v3, v4, v5}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1}, Lyd/c0;->t()V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p1}, Lyd/b;->h()Lyd/b;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lvd/m;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-eqz v0, :cond_8

    .line 112
    .line 113
    instance-of p1, v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    if-nez p1, :cond_7

    .line 116
    .line 117
    check-cast v0, Ltd/s2;

    .line 118
    .line 119
    invoke-direct {p0, v0}, Lvd/e;->L0(Ltd/s2;)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    .line 124
    .line 125
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    check-cast v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    sub-int/2addr p1, v1

    .line 135
    :goto_4
    if-ge v2, p1, :cond_8

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Ltd/s2;

    .line 142
    .line 143
    invoke-direct {p0, p2}, Lvd/e;->L0(Ltd/s2;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 p1, p1, -0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    :goto_5
    return-void
.end method

.method private final H0(Ltd/s2;Lvd/m;I)V
    .locals 1

    .line 1
    sget v0, Lvd/f;->b:I

    .line 2
    .line 3
    add-int/2addr p3, v0

    .line 4
    invoke-interface {p1, p2, p3}, Ltd/s2;->b(Lyd/c0;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final I()Lvd/m;
    .locals 6

    .line 1
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lvd/e;->d0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lvd/m;

    .line 18
    .line 19
    iget-wide v2, v1, Lyd/c0;->c:J

    .line 20
    .line 21
    move-object v4, v0

    .line 22
    check-cast v4, Lvd/m;

    .line 23
    .line 24
    iget-wide v4, v4, Lyd/c0;->c:J

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    if-lez v2, :cond_0

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    :cond_0
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lvd/m;

    .line 40
    .line 41
    iget-wide v2, v1, Lyd/c0;->c:J

    .line 42
    .line 43
    move-object v4, v0

    .line 44
    check-cast v4, Lvd/m;

    .line 45
    .line 46
    iget-wide v4, v4, Lyd/c0;->c:J

    .line 47
    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    move-object v0, v1

    .line 53
    :cond_1
    check-cast v0, Lyd/b;

    .line 54
    .line 55
    invoke-static {v0}, Lyd/a;->b(Lyd/b;)Lyd/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lvd/m;

    .line 60
    .line 61
    return-object v0
.end method

.method static synthetic I0(Lvd/e;Lad/e;)Ljava/lang/Object;
    .locals 13

    .line 1
    const/4 v6, 0x0

    .line 2
    invoke-static {}, Lvd/e;->l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lvd/m;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lvd/e;->n0()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_6

    .line 17
    .line 18
    invoke-static {}, Lvd/e;->n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v10

    .line 26
    sget v1, Lvd/f;->b:I

    .line 27
    .line 28
    int-to-long v2, v1

    .line 29
    div-long v2, v10, v2

    .line 30
    .line 31
    int-to-long v4, v1

    .line 32
    rem-long v4, v10, v4

    .line 33
    .line 34
    long-to-int v9, v4

    .line 35
    iget-wide v4, v0, Lyd/c0;->c:J

    .line 36
    .line 37
    cmp-long v1, v4, v2

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v2, v3, v0}, Lvd/e;->i(Lvd/e;JLvd/m;)Lvd/m;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v8, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v8, v0

    .line 51
    :goto_1
    move-object v0, p0

    .line 52
    move-object v1, v8

    .line 53
    move v2, v9

    .line 54
    move-wide v3, v10

    .line 55
    move-object v5, v6

    .line 56
    invoke-static/range {v0 .. v5}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eq v0, v1, :cond_5

    .line 65
    .line 66
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    cmp-long v0, v10, v0

    .line 77
    .line 78
    if-gez v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v8}, Lyd/b;->c()V

    .line 81
    .line 82
    .line 83
    :cond_2
    move-object v0, v8

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v0, v1, :cond_4

    .line 90
    .line 91
    move-object v7, p0

    .line 92
    move-object v12, p1

    .line 93
    invoke-direct/range {v7 .. v12}, Lvd/e;->J0(Lvd/m;IJLad/e;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_4
    invoke-virtual {v8}, Lyd/b;->c()V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string p1, "unexpected"

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_6
    invoke-direct {p0}, Lvd/e;->Y()Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0}, Lyd/e0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    throw p0
.end method

.method private final J0(Lvd/m;IJLad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p5}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ltd/p;->b(Lad/e;)Ltd/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-wide v4, p3

    .line 13
    move-object v6, v0

    .line 14
    :try_start_0
    invoke-static/range {v1 .. v6}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-static {p0, v0, p1, p2}, Lvd/e;->w(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v7, 0x0

    .line 34
    if-ne v1, p2, :cond_b

    .line 35
    .line 36
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    cmp-long p2, p3, v1

    .line 41
    .line 42
    if-gez p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lvd/e;->l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lvd/m;

    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lvd/e;->n0()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    invoke-static {p0, v0}, Lvd/e;->u(Lvd/e;Ltd/l;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_3
    invoke-static {}, Lvd/e;->n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 73
    .line 74
    .line 75
    move-result-wide p2

    .line 76
    sget p4, Lvd/f;->b:I

    .line 77
    .line 78
    int-to-long v1, p4

    .line 79
    div-long v1, p2, v1

    .line 80
    .line 81
    int-to-long v3, p4

    .line 82
    rem-long v3, p2, v3

    .line 83
    .line 84
    long-to-int p4, v3

    .line 85
    iget-wide v3, p1, Lyd/c0;->c:J

    .line 86
    .line 87
    cmp-long v3, v3, v1

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-static {p0, v1, v2, p1}, Lvd/e;->i(Lvd/e;JLvd/m;)Lvd/m;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move-object p1, v1

    .line 99
    :cond_5
    move-object v1, p0

    .line 100
    move-object v2, p1

    .line 101
    move v3, p4

    .line 102
    move-wide v4, p2

    .line 103
    move-object v6, v0

    .line 104
    invoke-static/range {v1 .. v6}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-ne v1, v2, :cond_7

    .line 113
    .line 114
    instance-of p2, v0, Ltd/s2;

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    move-object v7, v0

    .line 119
    :cond_6
    if-eqz v7, :cond_d

    .line 120
    .line 121
    invoke-static {p0, v7, p1, p4}, Lvd/e;->w(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    if-ne v1, p4, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    cmp-long p2, p2, v1

    .line 136
    .line 137
    if-gez p2, :cond_2

    .line 138
    .line 139
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_8
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-eq v1, p2, :cond_a

    .line 148
    .line 149
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lvd/e;->b:Lid/l;

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    invoke-static {p0, p1}, Lvd/e;->g(Lvd/e;Lid/l;)Lpd/f;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    :cond_9
    check-cast v7, Lid/p;

    .line 161
    .line 162
    :goto_1
    invoke-virtual {v0, v1, v7}, Ltd/n;->r(Ljava/lang/Object;Lid/p;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string p2, "unexpected"

    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_b
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lvd/e;->b:Lid/l;

    .line 182
    .line 183
    if-eqz p1, :cond_c

    .line 184
    .line 185
    invoke-static {p0, p1}, Lvd/e;->g(Lvd/e;Lid/l;)Lpd/f;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    :cond_c
    check-cast v7, Lid/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_d
    :goto_2
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    if-ne p1, p2, :cond_e

    .line 201
    .line 202
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 203
    .line 204
    .line 205
    :cond_e
    return-object p1

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    invoke-virtual {v0}, Ltd/n;->N()V

    .line 208
    .line 209
    .line 210
    throw p1
.end method

.method private final K(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/e;->L(J)Lvd/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lvd/e;->K0(Lvd/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final K0(Lvd/m;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lvd/e;->b:Lid/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2, v1}, Lyd/l;->b(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    :cond_0
    sget v4, Lvd/f;->b:I

    .line 10
    .line 11
    sub-int/2addr v4, v2

    .line 12
    :goto_0
    const/4 v5, -0x1

    .line 13
    if-ge v5, v4, :cond_b

    .line 14
    .line 15
    iget-wide v6, p1, Lyd/c0;->c:J

    .line 16
    .line 17
    sget v8, Lvd/f;->b:I

    .line 18
    .line 19
    int-to-long v8, v8

    .line 20
    mul-long/2addr v6, v8

    .line 21
    int-to-long v8, v4

    .line 22
    add-long/2addr v6, v8

    .line 23
    :cond_1
    invoke-virtual {p1, v4}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-eq v8, v9, :cond_c

    .line 32
    .line 33
    sget-object v9, Lvd/f;->d:Lyd/f0;

    .line 34
    .line 35
    if-ne v8, v9, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    cmp-long v9, v6, v9

    .line 42
    .line 43
    if-ltz v9, :cond_c

    .line 44
    .line 45
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {p1, v4, v8, v9}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_1

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lvd/m;->A(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v0, v5, v1}, Lyd/y;->b(Lid/l;Ljava/lang/Object;Lyd/r0;)Lyd/r0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_2
    invoke-virtual {p1, v4}, Lvd/m;->w(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lyd/c0;->t()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-eq v8, v9, :cond_a

    .line 78
    .line 79
    if-nez v8, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    instance-of v9, v8, Ltd/s2;

    .line 83
    .line 84
    if-nez v9, :cond_7

    .line 85
    .line 86
    instance-of v9, v8, Lvd/y;

    .line 87
    .line 88
    if-eqz v9, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eq v8, v9, :cond_c

    .line 96
    .line 97
    invoke-static {}, Lvd/f;->q()Lyd/f0;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-ne v8, v9, :cond_6

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_6
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eq v8, v9, :cond_1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    cmp-long v9, v6, v9

    .line 116
    .line 117
    if-ltz v9, :cond_c

    .line 118
    .line 119
    instance-of v9, v8, Lvd/y;

    .line 120
    .line 121
    if-eqz v9, :cond_8

    .line 122
    .line 123
    move-object v9, v8

    .line 124
    check-cast v9, Lvd/y;

    .line 125
    .line 126
    iget-object v9, v9, Lvd/y;->a:Ltd/s2;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    move-object v9, v8

    .line 130
    check-cast v9, Ltd/s2;

    .line 131
    .line 132
    :goto_2
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {p1, v4, v8, v10}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_1

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    invoke-virtual {p1, v4}, Lvd/m;->A(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v0, v5, v1}, Lyd/y;->b(Lid/l;Ljava/lang/Object;Lyd/r0;)Lyd/r0;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :cond_9
    invoke-static {v3, v9}, Lyd/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {p1, v4}, Lvd/m;->w(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lyd/c0;->t()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    :goto_3
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {p1, v4, v8, v9}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_1

    .line 172
    .line 173
    invoke-virtual {p1}, Lyd/c0;->t()V

    .line 174
    .line 175
    .line 176
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_b
    invoke-virtual {p1}, Lyd/b;->h()Lyd/b;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lvd/m;

    .line 185
    .line 186
    if-nez p1, :cond_0

    .line 187
    .line 188
    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    .line 189
    .line 190
    instance-of p1, v3, Ljava/util/ArrayList;

    .line 191
    .line 192
    if-nez p1, :cond_d

    .line 193
    .line 194
    check-cast v3, Ltd/s2;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Lvd/e;->M0(Ltd/s2;)V

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    .line 201
    .line 202
    invoke-static {v3, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    check-cast v3, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    sub-int/2addr p1, v2

    .line 212
    :goto_6
    if-ge v5, p1, :cond_e

    .line 213
    .line 214
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Ltd/s2;

    .line 219
    .line 220
    invoke-direct {p0, v0}, Lvd/e;->M0(Ltd/s2;)V

    .line 221
    .line 222
    .line 223
    add-int/lit8 p1, p1, -0x1

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_e
    :goto_7
    if-nez v1, :cond_f

    .line 227
    .line 228
    return-void

    .line 229
    :cond_f
    throw v1
.end method

.method private final L(J)Lvd/m;
    .locals 5

    .line 1
    invoke-direct {p0}, Lvd/e;->I()Lvd/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lvd/e;->q0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lvd/e;->s0(Lvd/m;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    cmp-long v3, v1, v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Lvd/e;->N(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lvd/e;->H(Lvd/m;J)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private final L0(Ltd/s2;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lvd/e;->N0(Ltd/s2;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final M()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvd/e;->z()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0(Ltd/s2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lvd/e;->N0(Ltd/s2;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final N0(Ltd/s2;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Ltd/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lad/e;

    .line 6
    .line 7
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lvd/e;->Y()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_0
    invoke-static {p2}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    instance-of p2, p1, Lvd/e$a;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    check-cast p1, Lvd/e$a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lvd/e$a;->j()V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "Unexpected waiter: "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2
.end method

.method private final O()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lvd/e;->r0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lvd/m;

    .line 17
    .line 18
    :goto_0
    invoke-static {}, Lvd/e;->S()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    sget v9, Lvd/f;->b:I

    .line 27
    .line 28
    int-to-long v1, v9

    .line 29
    div-long v2, v7, v1

    .line 30
    .line 31
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v1, v4, v7

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x1

    .line 39
    const-wide/16 v12, 0x0

    .line 40
    .line 41
    if-gtz v1, :cond_2

    .line 42
    .line 43
    iget-wide v4, v0, Lyd/c0;->c:J

    .line 44
    .line 45
    cmp-long v1, v4, v2

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lyd/b;->f()Lyd/b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v2, v3, v0}, Lvd/e;->w0(JLvd/m;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {p0, v12, v13, v11, v10}, Lvd/e;->j0(Lvd/e;JILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-wide v4, v0, Lyd/c0;->c:J

    .line 63
    .line 64
    cmp-long v1, v4, v2

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    move-object v1, p0

    .line 69
    move-object v4, v0

    .line 70
    move-wide v5, v7

    .line 71
    invoke-direct/range {v1 .. v6}, Lvd/e;->P(JLvd/m;J)Lvd/m;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object v0, v1

    .line 79
    :cond_4
    int-to-long v1, v9

    .line 80
    rem-long v1, v7, v1

    .line 81
    .line 82
    long-to-int v1, v1

    .line 83
    invoke-direct {p0, v0, v1, v7, v8}, Lvd/e;->U0(Lvd/m;IJ)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-static {p0, v12, v13, v11, v10}, Lvd/e;->j0(Lvd/e;JILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    invoke-static {p0, v12, v13, v11, v10}, Lvd/e;->j0(Lvd/e;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0
.end method

.method static synthetic O0(Lvd/e;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v8, p0

    .line 2
    const/4 v9, 0x0

    .line 3
    invoke-static {}, Lvd/e;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lvd/m;

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-static {}, Lvd/e;->q()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide v3, 0xfffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long v10, v1, v3

    .line 27
    .line 28
    invoke-static {p0, v1, v2}, Lvd/e;->r(Lvd/e;J)Z

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    sget v1, Lvd/f;->b:I

    .line 33
    .line 34
    int-to-long v2, v1

    .line 35
    div-long v2, v10, v2

    .line 36
    .line 37
    int-to-long v4, v1

    .line 38
    rem-long v4, v10, v4

    .line 39
    .line 40
    long-to-int v13, v4

    .line 41
    iget-wide v4, v0, Lyd/c0;->c:J

    .line 42
    .line 43
    cmp-long v1, v4, v2

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v2, v3, v0}, Lvd/e;->j(Lvd/e;JLvd/m;)Lvd/m;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    if-eqz v12, :cond_0

    .line 54
    .line 55
    invoke-direct/range {p0 .. p2}, Lvd/e;->A0(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-ne v0, v1, :cond_9

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    move-object v14, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v14, v0

    .line 69
    :goto_1
    move-object v0, p0

    .line 70
    move-object v1, v14

    .line 71
    move v2, v13

    .line 72
    move-object/from16 v3, p1

    .line 73
    .line 74
    move-wide v4, v10

    .line 75
    move-object v6, v9

    .line 76
    move v7, v12

    .line 77
    invoke-static/range {v0 .. v7}, Lvd/e;->B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    if-eq v0, v1, :cond_9

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    if-eq v0, v1, :cond_7

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    if-eq v0, v1, :cond_6

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    if-eq v0, v1, :cond_4

    .line 94
    .line 95
    const/4 v1, 0x5

    .line 96
    if-eq v0, v1, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v14}, Lyd/b;->c()V

    .line 100
    .line 101
    .line 102
    :goto_2
    move-object v0, v14

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    cmp-long v0, v10, v0

    .line 109
    .line 110
    if-gez v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v14}, Lyd/b;->c()V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-direct/range {p0 .. p2}, Lvd/e;->A0(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-ne v0, v1, :cond_9

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_6
    move-object v0, p0

    .line 127
    move-object v1, v14

    .line 128
    move v2, v13

    .line 129
    move-object/from16 v3, p1

    .line 130
    .line 131
    move-wide v4, v10

    .line 132
    move-object/from16 v6, p2

    .line 133
    .line 134
    invoke-direct/range {v0 .. v6}, Lvd/e;->P0(Lvd/m;ILjava/lang/Object;JLad/e;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-ne v0, v1, :cond_9

    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_7
    if-eqz v12, :cond_9

    .line 146
    .line 147
    invoke-virtual {v14}, Lyd/c0;->t()V

    .line 148
    .line 149
    .line 150
    invoke-direct/range {p0 .. p2}, Lvd/e;->A0(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-ne v0, v1, :cond_9

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_8
    invoke-virtual {v14}, Lyd/b;->c()V

    .line 162
    .line 163
    .line 164
    :cond_9
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 165
    .line 166
    return-object v0
.end method

.method private final P(JLvd/m;J)Lvd/m;
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-wide/from16 v0, p1

    .line 3
    .line 4
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Lvd/f;->y()Lpd/f;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lid/Function2;

    .line 13
    .line 14
    move-object/from16 v4, p3

    .line 15
    .line 16
    :cond_0
    invoke-static {v4, v0, v1, v3}, Lyd/a;->c(Lyd/c0;JLid/Function2;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {v5}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v8, 0x1

    .line 25
    if-nez v7, :cond_6

    .line 26
    .line 27
    invoke-static {v5}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    check-cast v9, Lyd/c0;

    .line 36
    .line 37
    iget-wide v10, v9, Lyd/c0;->c:J

    .line 38
    .line 39
    iget-wide v12, v7, Lyd/c0;->c:J

    .line 40
    .line 41
    cmp-long v10, v10, v12

    .line 42
    .line 43
    if-ltz v10, :cond_3

    .line 44
    .line 45
    :cond_2
    :goto_1
    move v7, v8

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v7}, Lyd/c0;->u()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_4

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    invoke-static {v2, p0, v9, v7}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_5

    .line 60
    .line 61
    invoke-virtual {v9}, Lyd/c0;->p()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9}, Lyd/b;->n()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    if-eqz v7, :cond_0

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    invoke-virtual {v7}, Lyd/c0;->p()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    invoke-virtual {v7}, Lyd/b;->n()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    :goto_3
    invoke-static {v5}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const-wide/16 v9, 0x0

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-direct {p0}, Lvd/e;->M()V

    .line 94
    .line 95
    .line 96
    invoke-direct/range {p0 .. p3}, Lvd/e;->w0(JLvd/m;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v9, v10, v8, v7}, Lvd/e;->j0(Lvd/e;JILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_7
    invoke-static {v5}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v11, v2

    .line 108
    check-cast v11, Lvd/m;

    .line 109
    .line 110
    iget-wide v2, v11, Lyd/c0;->c:J

    .line 111
    .line 112
    cmp-long v0, v2, v0

    .line 113
    .line 114
    if-lez v0, :cond_9

    .line 115
    .line 116
    invoke-static {}, Lvd/e;->S()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-wide/16 v1, 0x1

    .line 121
    .line 122
    add-long v2, p4, v1

    .line 123
    .line 124
    iget-wide v4, v11, Lyd/c0;->c:J

    .line 125
    .line 126
    sget v12, Lvd/f;->b:I

    .line 127
    .line 128
    int-to-long v13, v12

    .line 129
    mul-long/2addr v4, v13

    .line 130
    move-object v1, p0

    .line 131
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    iget-wide v0, v11, Lyd/c0;->c:J

    .line 138
    .line 139
    int-to-long v2, v12

    .line 140
    mul-long/2addr v0, v2

    .line 141
    sub-long v0, v0, p4

    .line 142
    .line 143
    invoke-direct {p0, v0, v1}, Lvd/e;->i0(J)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-static {p0, v9, v10, v8, v7}, Lvd/e;->j0(Lvd/e;JILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    move-object v7, v11

    .line 152
    :goto_4
    return-object v7
.end method

.method private final P0(Lvd/m;ILjava/lang/Object;JLad/e;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-static/range {p6 .. p6}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ltd/p;->b(Lad/e;)Ltd/n;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    const/4 v8, 0x0

    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-object/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move-wide/from16 v5, p4

    .line 23
    .line 24
    move-object v7, v10

    .line 25
    :try_start_0
    invoke-static/range {v1 .. v8}, Lvd/e;->B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v1, :cond_10

    .line 30
    .line 31
    const/4 v11, 0x1

    .line 32
    if-eq v1, v11, :cond_f

    .line 33
    .line 34
    const/4 v12, 0x2

    .line 35
    if-eq v1, v12, :cond_e

    .line 36
    .line 37
    const/4 v13, 0x4

    .line 38
    if-eq v1, v13, :cond_d

    .line 39
    .line 40
    const-string v14, "unexpected"

    .line 41
    .line 42
    const/4 v15, 0x5

    .line 43
    if-ne v1, v15, :cond_c

    .line 44
    .line 45
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lyd/b;->c()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lvd/e;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lvd/m;

    .line 57
    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Lvd/e;->q()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    const-wide v4, 0xfffffffffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    and-long v16, v2, v4

    .line 72
    .line 73
    invoke-static {v9, v2, v3}, Lvd/e;->r(Lvd/e;J)Z

    .line 74
    .line 75
    .line 76
    move-result v18

    .line 77
    sget v2, Lvd/f;->b:I

    .line 78
    .line 79
    int-to-long v3, v2

    .line 80
    div-long v3, v16, v3

    .line 81
    .line 82
    int-to-long v5, v2

    .line 83
    rem-long v5, v16, v5

    .line 84
    .line 85
    long-to-int v8, v5

    .line 86
    iget-wide v5, v1, Lyd/c0;->c:J

    .line 87
    .line 88
    cmp-long v2, v5, v3

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-static {v9, v3, v4, v1}, Lvd/e;->j(Lvd/e;JLvd/m;)Lvd/m;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    if-eqz v18, :cond_0

    .line 99
    .line 100
    :cond_1
    :goto_1
    invoke-static {v9, v0, v10}, Lvd/e;->v(Lvd/e;Ljava/lang/Object;Ltd/l;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_2
    move-object v7, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object v7, v1

    .line 108
    :goto_2
    move-object/from16 v1, p0

    .line 109
    .line 110
    move-object v2, v7

    .line 111
    move v3, v8

    .line 112
    move-object/from16 v4, p3

    .line 113
    .line 114
    move-wide/from16 v5, v16

    .line 115
    .line 116
    move-object/from16 p1, v7

    .line 117
    .line 118
    move-object v7, v10

    .line 119
    move/from16 v19, v8

    .line 120
    .line 121
    move/from16 v8, v18

    .line 122
    .line 123
    invoke-static/range {v1 .. v8}, Lvd/e;->B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    if-eq v1, v11, :cond_a

    .line 130
    .line 131
    if-eq v1, v12, :cond_7

    .line 132
    .line 133
    const/4 v2, 0x3

    .line 134
    if-eq v1, v2, :cond_6

    .line 135
    .line 136
    if-eq v1, v13, :cond_5

    .line 137
    .line 138
    if-eq v1, v15, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lyd/b;->c()V

    .line 142
    .line 143
    .line 144
    :goto_3
    move-object/from16 v1, p1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lvd/e;->b0()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    cmp-long v1, v16, v1

    .line 152
    .line 153
    if-gez v1, :cond_1

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lyd/b;->c()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_7
    if-eqz v18, :cond_8

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lyd/c0;->t()V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    instance-of v0, v10, Ltd/s2;

    .line 176
    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    move-object v0, v10

    .line 180
    goto :goto_4

    .line 181
    :cond_9
    const/4 v0, 0x0

    .line 182
    :goto_4
    if-eqz v0, :cond_11

    .line 183
    .line 184
    move-object/from16 v2, p1

    .line 185
    .line 186
    move/from16 v1, v19

    .line 187
    .line 188
    invoke-static {v9, v0, v2, v1}, Lvd/e;->x(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_a
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 193
    .line 194
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 195
    .line 196
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :goto_5
    invoke-interface {v10, v0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    move-object/from16 v2, p1

    .line 205
    .line 206
    invoke-virtual {v2}, Lyd/b;->c()V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 210
    .line 211
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 212
    .line 213
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    goto :goto_5

    .line 218
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lvd/e;->b0()J

    .line 229
    .line 230
    .line 231
    move-result-wide v1

    .line 232
    cmp-long v1, p4, v1

    .line 233
    .line 234
    if-gez v1, :cond_1

    .line 235
    .line 236
    invoke-virtual/range {p1 .. p1}, Lyd/b;->c()V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_e
    move-object/from16 v0, p1

    .line 242
    .line 243
    move/from16 v1, p2

    .line 244
    .line 245
    invoke-static {v9, v10, v0, v1}, Lvd/e;->x(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_f
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 250
    .line 251
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 252
    .line 253
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    goto :goto_5

    .line 258
    :cond_10
    move-object/from16 v0, p1

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lyd/b;->c()V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 264
    .line 265
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 266
    .line 267
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    goto :goto_5

    .line 272
    :cond_11
    :goto_6
    invoke-virtual {v10}, Ltd/n;->x()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-ne v0, v1, :cond_12

    .line 281
    .line 282
    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 283
    .line 284
    .line 285
    :cond_12
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-ne v0, v1, :cond_13

    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_13
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 293
    .line 294
    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    invoke-virtual {v10}, Ltd/n;->N()V

    .line 297
    .line 298
    .line 299
    throw v0
.end method

.method private final Q(JLvd/m;)Lvd/m;
    .locals 9

    .line 1
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lvd/f;->y()Lpd/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lid/Function2;

    .line 10
    .line 11
    :cond_0
    invoke-static {p3, p1, p2, v1}, Lyd/a;->c(Lyd/c0;JLid/Function2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_6

    .line 20
    .line 21
    invoke-static {v2}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lyd/c0;

    .line 30
    .line 31
    iget-wide v5, v4, Lyd/c0;->c:J

    .line 32
    .line 33
    iget-wide v7, v3, Lyd/c0;->c:J

    .line 34
    .line 35
    cmp-long v5, v5, v7

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-ltz v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v3}, Lyd/c0;->u()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v0, p0, v4, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    invoke-virtual {v4}, Lyd/c0;->p()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v4}, Lyd/b;->n()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {v3}, Lyd/c0;->p()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Lyd/b;->n()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    :goto_2
    invoke-static {v2}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-direct {p0}, Lvd/e;->M()V

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, Lyd/c0;->c:J

    .line 88
    .line 89
    sget v0, Lvd/f;->b:I

    .line 90
    .line 91
    int-to-long v2, v0

    .line 92
    mul-long/2addr p1, v2

    .line 93
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    cmp-long p1, p1, v2

    .line 98
    .line 99
    if-gez p1, :cond_c

    .line 100
    .line 101
    invoke-virtual {p3}, Lyd/b;->c()V

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_7
    invoke-static {v2}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lvd/m;

    .line 110
    .line 111
    invoke-direct {p0}, Lvd/e;->r0()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_a

    .line 116
    .line 117
    invoke-direct {p0}, Lvd/e;->T()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    sget v0, Lvd/f;->b:I

    .line 122
    .line 123
    int-to-long v4, v0

    .line 124
    div-long/2addr v2, v4

    .line 125
    cmp-long v0, p1, v2

    .line 126
    .line 127
    if-gtz v0, :cond_a

    .line 128
    .line 129
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_8
    :goto_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lyd/c0;

    .line 138
    .line 139
    iget-wide v3, v2, Lyd/c0;->c:J

    .line 140
    .line 141
    iget-wide v5, p3, Lyd/c0;->c:J

    .line 142
    .line 143
    cmp-long v3, v3, v5

    .line 144
    .line 145
    if-gez v3, :cond_a

    .line 146
    .line 147
    invoke-virtual {p3}, Lyd/c0;->u()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_a

    .line 152
    .line 153
    invoke-static {v0, p0, v2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    invoke-virtual {v2}, Lyd/c0;->p()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v2}, Lyd/b;->n()V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    invoke-virtual {p3}, Lyd/c0;->p()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_8

    .line 174
    .line 175
    invoke-virtual {p3}, Lyd/b;->n()V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    :goto_4
    iget-wide v2, p3, Lyd/c0;->c:J

    .line 180
    .line 181
    cmp-long p1, v2, p1

    .line 182
    .line 183
    if-lez p1, :cond_b

    .line 184
    .line 185
    sget p1, Lvd/f;->b:I

    .line 186
    .line 187
    int-to-long v4, p1

    .line 188
    mul-long/2addr v2, v4

    .line 189
    invoke-direct {p0, v2, v3}, Lvd/e;->a1(J)V

    .line 190
    .line 191
    .line 192
    iget-wide v2, p3, Lyd/c0;->c:J

    .line 193
    .line 194
    int-to-long p1, p1

    .line 195
    mul-long/2addr v2, p1

    .line 196
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 197
    .line 198
    .line 199
    move-result-wide p1

    .line 200
    cmp-long p1, v2, p1

    .line 201
    .line 202
    if-gez p1, :cond_c

    .line 203
    .line 204
    invoke-virtual {p3}, Lyd/b;->c()V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_b
    move-object v1, p3

    .line 209
    :cond_c
    :goto_5
    return-object v1
.end method

.method private final Q0(J)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/e;->p0(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const-wide v0, 0xfffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr p1, v0

    .line 15
    invoke-direct {p0, p1, p2}, Lvd/e;->F(J)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    xor-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    return p1
.end method

.method private final R(JLvd/m;)Lvd/m;
    .locals 9

    .line 1
    invoke-static {}, Lvd/e;->d0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lvd/f;->y()Lpd/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lid/Function2;

    .line 10
    .line 11
    :cond_0
    invoke-static {p3, p1, p2, v1}, Lyd/a;->c(Lyd/c0;JLid/Function2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_6

    .line 20
    .line 21
    invoke-static {v2}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lyd/c0;

    .line 30
    .line 31
    iget-wide v5, v4, Lyd/c0;->c:J

    .line 32
    .line 33
    iget-wide v7, v3, Lyd/c0;->c:J

    .line 34
    .line 35
    cmp-long v5, v5, v7

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-ltz v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v3}, Lyd/c0;->u()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_3

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v0, p0, v4, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    invoke-virtual {v4}, Lyd/c0;->p()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v4}, Lyd/b;->n()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {v3}, Lyd/c0;->p()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Lyd/b;->n()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    :goto_2
    invoke-static {v2}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-direct {p0}, Lvd/e;->M()V

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, Lyd/c0;->c:J

    .line 88
    .line 89
    sget v0, Lvd/f;->b:I

    .line 90
    .line 91
    int-to-long v2, v0

    .line 92
    mul-long/2addr p1, v2

    .line 93
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    cmp-long p1, p1, v2

    .line 98
    .line 99
    if-gez p1, :cond_9

    .line 100
    .line 101
    invoke-virtual {p3}, Lyd/b;->c()V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    invoke-static {v2}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lvd/m;

    .line 110
    .line 111
    iget-wide v2, p3, Lyd/c0;->c:J

    .line 112
    .line 113
    cmp-long p1, v2, p1

    .line 114
    .line 115
    if-lez p1, :cond_8

    .line 116
    .line 117
    sget p1, Lvd/f;->b:I

    .line 118
    .line 119
    int-to-long v4, p1

    .line 120
    mul-long/2addr v2, v4

    .line 121
    invoke-direct {p0, v2, v3}, Lvd/e;->b1(J)V

    .line 122
    .line 123
    .line 124
    iget-wide v2, p3, Lyd/c0;->c:J

    .line 125
    .line 126
    int-to-long p1, p1

    .line 127
    mul-long/2addr v2, p1

    .line 128
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 129
    .line 130
    .line 131
    move-result-wide p1

    .line 132
    cmp-long p1, v2, p1

    .line 133
    .line 134
    if-gez p1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p3}, Lyd/b;->c()V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    move-object v1, p3

    .line 141
    :cond_9
    :goto_3
    return-object v1
.end method

.method private final R0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lvd/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Lvd/e$a;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lvd/e$a;->i(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p1, Ltd/l;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Ltd/l;

    .line 27
    .line 28
    iget-object v0, p0, Lvd/e;->b:Lid/l;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lvd/e;->D(Lid/l;)Lpd/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    check-cast v0, Lid/p;

    .line 39
    .line 40
    invoke-static {p1, p2, v0}, Lvd/f;->u(Ltd/l;Ljava/lang/Object;Lid/p;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_1
    return p1

    .line 45
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "Unexpected receiver type: "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p2
.end method

.method private static final synthetic S()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final S0(Ljava/lang/Object;Lvd/m;I)Z
    .locals 1

    .line 1
    instance-of p2, p1, Ltd/l;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ltd/l;

    .line 11
    .line 12
    sget-object p2, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    const/4 p3, 0x2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, p2, v0, p3, v0}, Lvd/f;->C(Ltd/l;Ljava/lang/Object;Lid/p;ILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "Unexpected waiter: "

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2
.end method

.method private final T()J
    .locals 2

    .line 1
    invoke-static {}, Lvd/e;->S()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private static final synthetic U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final U0(Lvd/m;IJ)Z
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/s2;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    cmp-long v1, p3, v1

    .line 18
    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, v0, p1, p2}, Lvd/e;->S0(Ljava/lang/Object;Lvd/m;I)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    sget-object p3, Lvd/f;->d:Lyd/f0;

    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-virtual {p1, p2, p3}, Lvd/m;->C(IZ)V

    .line 53
    .line 54
    .line 55
    move p1, p3

    .line 56
    :goto_0
    return p1

    .line 57
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lvd/e;->V0(Lvd/m;IJ)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method private final V0(Lvd/m;IJ)Z
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/s2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    cmp-long v1, p3, v4

    .line 20
    .line 21
    if-gez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lvd/y;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Ltd/s2;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lvd/y;-><init>(Ltd/s2;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, v0, p1, p2}, Lvd/e;->S0(Ljava/lang/Object;Lvd/m;I)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    sget-object p3, Lvd/f;->d:Lyd/f0;

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move v2, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, v2}, Lvd/m;->C(IZ)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return v2

    .line 72
    :cond_3
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    return v2

    .line 79
    :cond_4
    if-nez v0, :cond_5

    .line 80
    .line 81
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    return v3

    .line 92
    :cond_5
    sget-object v1, Lvd/f;->d:Lyd/f0;

    .line 93
    .line 94
    if-ne v0, v1, :cond_6

    .line 95
    .line 96
    return v3

    .line 97
    :cond_6
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eq v0, v1, :cond_a

    .line 102
    .line 103
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eq v0, v1, :cond_a

    .line 108
    .line 109
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-ne v0, v1, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-ne v0, v1, :cond_8

    .line 121
    .line 122
    return v3

    .line 123
    :cond_8
    invoke-static {}, Lvd/f;->q()Lyd/f0;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-ne v0, v1, :cond_9

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "Unexpected cell state: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_a
    :goto_2
    return v3
.end method

.method private static final synthetic W()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final W0(Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide v3, 0xfffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v1, v3

    .line 21
    cmp-long v1, p3, v1

    .line 22
    .line 23
    if-ltz v1, :cond_2

    .line 24
    .line 25
    if-nez p5, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lvd/e;->O()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    sget-object v1, Lvd/f;->d:Lyd/f0;

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-direct {p0}, Lvd/e;->O()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lvd/m;->D(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_2
    invoke-direct/range {p0 .. p5}, Lvd/e;->X0(Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method private static final synthetic X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final X0(Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_1
    sget-object v1, Lvd/f;->d:Lyd/f0;

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lvd/e;->O()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lvd/m;->D(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_3
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_4
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-ne v0, v1, :cond_5

    .line 64
    .line 65
    invoke-direct {p0}, Lvd/e;->O()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_5
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eq v0, v1, :cond_0

    .line 78
    .line 79
    invoke-static {}, Lvd/f;->q()Lyd/f0;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    instance-of p3, v0, Lvd/y;

    .line 90
    .line 91
    if-eqz p3, :cond_6

    .line 92
    .line 93
    check-cast v0, Lvd/y;

    .line 94
    .line 95
    iget-object v0, v0, Lvd/y;->a:Ltd/s2;

    .line 96
    .line 97
    :cond_6
    invoke-direct {p0, v0, p1, p2}, Lvd/e;->S0(Ljava/lang/Object;Lvd/m;I)Z

    .line 98
    .line 99
    .line 100
    move-result p4

    .line 101
    if-eqz p4, :cond_7

    .line 102
    .line 103
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lvd/e;->O()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lvd/m;->D(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    invoke-virtual {p1, p2, p4}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 p4, 0x0

    .line 126
    invoke-virtual {p1, p2, p4}, Lvd/m;->C(IZ)V

    .line 127
    .line 128
    .line 129
    if-eqz p3, :cond_8

    .line 130
    .line 131
    invoke-direct {p0}, Lvd/e;->O()V

    .line 132
    .line 133
    .line 134
    :cond_8
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_0
    return-object p1

    .line 139
    :cond_9
    :goto_1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    const-wide v3, 0xfffffffffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    and-long/2addr v1, v3

    .line 153
    cmp-long v1, p3, v1

    .line 154
    .line 155
    if-gez v1, :cond_a

    .line 156
    .line 157
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    .line 167
    invoke-direct {p0}, Lvd/e;->O()V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_a
    if-nez p5, :cond_b

    .line 176
    .line 177
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    .line 188
    invoke-direct {p0}, Lvd/e;->O()V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1
.end method

.method private final Y()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lvd/q;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lvd/q;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method private final Y0(Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Lvd/m;->G(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    invoke-direct/range {p0 .. p7}, Lvd/e;->Z0(Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-direct {p0, p4, p5}, Lvd/e;->F(J)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lvd/f;->d:Lyd/f0;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v2, v0}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    if-nez p6, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    return p1

    .line 38
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    return p1

    .line 46
    :cond_3
    instance-of v2, v0, Ltd/s2;

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lvd/m;->w(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0, p3}, Lvd/e;->R0(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lvd/e;->C0()V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p1, p2, p3}, Lvd/m;->x(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    if-eq p3, p4, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, p2, v1}, Lvd/m;->C(IZ)V

    .line 86
    .line 87
    .line 88
    :cond_5
    const/4 p1, 0x5

    .line 89
    :goto_0
    return p1

    .line 90
    :cond_6
    invoke-direct/range {p0 .. p7}, Lvd/e;->Z0(Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1
.end method

.method private static final synthetic Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final Z0(Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-direct {p0, p4, p5}, Lvd/e;->F(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-nez p7, :cond_1

    .line 18
    .line 19
    sget-object v0, Lvd/f;->d:Lyd/f0;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v4, v0}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    if-eqz p7, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p2, v4, v0}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, p2, v2}, Lvd/m;->C(IZ)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    if-nez p6, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    return p1

    .line 56
    :cond_4
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-ne v0, v4, :cond_5

    .line 61
    .line 62
    sget-object v1, Lvd/f;->d:Lyd/f0;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0, v1}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    return v3

    .line 71
    :cond_5
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    const/4 p5, 0x5

    .line 76
    if-ne v0, p4, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lvd/m;->w(I)V

    .line 79
    .line 80
    .line 81
    return p5

    .line 82
    :cond_6
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    if-ne v0, p4, :cond_7

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lvd/m;->w(I)V

    .line 89
    .line 90
    .line 91
    return p5

    .line 92
    :cond_7
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    if-ne v0, p4, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lvd/m;->w(I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lvd/e;->M()V

    .line 102
    .line 103
    .line 104
    return v1

    .line 105
    :cond_8
    invoke-virtual {p1, p2}, Lvd/m;->w(I)V

    .line 106
    .line 107
    .line 108
    instance-of p4, v0, Lvd/y;

    .line 109
    .line 110
    if-eqz p4, :cond_9

    .line 111
    .line 112
    check-cast v0, Lvd/y;

    .line 113
    .line 114
    iget-object v0, v0, Lvd/y;->a:Ltd/s2;

    .line 115
    .line 116
    :cond_9
    invoke-direct {p0, v0, p3}, Lvd/e;->R0(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_a

    .line 121
    .line 122
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p2, p3}, Lvd/m;->F(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lvd/e;->C0()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_a
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p1, p2, p3}, Lvd/m;->x(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    if-eq p3, p4, :cond_b

    .line 146
    .line 147
    invoke-virtual {p1, p2, v3}, Lvd/m;->C(IZ)V

    .line 148
    .line 149
    .line 150
    :cond_b
    move v2, p5

    .line 151
    :goto_0
    return v2
.end method

.method public static synthetic a(Ljava/lang/Object;Lvd/e;Lbe/a;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lvd/e;->F0(Ljava/lang/Object;Lvd/e;Lbe/a;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final a1(J)V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    cmp-long v1, v3, p1

    .line 10
    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v2, p0

    .line 19
    move-wide v5, p1

    .line 20
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-void
.end method

.method private final b1(J)V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-wide v1, 0xfffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v1, v3

    .line 15
    cmp-long v5, v1, p1

    .line 16
    .line 17
    if-ltz v5, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 v5, 0x3c

    .line 21
    .line 22
    shr-long v5, v3, v5

    .line 23
    .line 24
    long-to-int v5, v5

    .line 25
    invoke-static {v1, v2, v5}, Lvd/f;->b(JI)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, p0

    .line 34
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic c(Lvd/e;Lbe/a;Ljava/lang/Object;Ljava/lang/Object;)Lid/p;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lvd/e;->E0(Lvd/e;Lbe/a;Ljava/lang/Object;Ljava/lang/Object;)Lid/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lid/l;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lvd/e;->E(Lid/l;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic d0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic e(Lvd/e;Lid/l;Ljava/lang/Object;)Lid/p;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/e;->C(Lid/l;Ljava/lang/Object;)Lid/p;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final synthetic e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic g(Lvd/e;Lid/l;)Lpd/f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvd/e;->D(Lid/l;)Lpd/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final synthetic g0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lvd/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic i(Lvd/e;JLvd/m;)Lvd/m;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvd/e;->Q(JLvd/m;)Lvd/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0(J)V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    and-long/2addr p1, v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v2

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    move p1, p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v4

    .line 23
    :goto_0
    if-eqz p1, :cond_3

    .line 24
    .line 25
    :cond_1
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    and-long/2addr v5, v0

    .line 34
    cmp-long p1, v5, v2

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    move p1, p2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move p1, v4

    .line 41
    :goto_1
    if-nez p1, :cond_1

    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public static final synthetic j(Lvd/e;JLvd/m;)Lvd/m;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvd/e;->R(JLvd/m;)Lvd/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j0(Lvd/e;JILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-wide/16 p1, 0x1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lvd/e;->i0(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final synthetic k(Lvd/e;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lvd/e;->Y()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k0()V
    .locals 3

    .line 1
    invoke-static {}, Lvd/e;->W()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lvd/f;->d()Lyd/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lvd/f;->e()Lyd/f0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/g0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lid/l;

    .line 35
    .line 36
    check-cast v1, Lid/l;

    .line 37
    .line 38
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v1, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static final synthetic l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final l0(Lvd/m;IJ)Z
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lvd/f;->d:Lyd/f0;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    if-ne v0, p1, :cond_2

    .line 19
    .line 20
    return p2

    .line 21
    :cond_2
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-ne v0, p1, :cond_3

    .line 26
    .line 27
    return v1

    .line 28
    :cond_3
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne v0, p1, :cond_4

    .line 33
    .line 34
    return v1

    .line 35
    :cond_4
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne v0, p1, :cond_5

    .line 40
    .line 41
    return v1

    .line 42
    :cond_5
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne v0, p1, :cond_6

    .line 47
    .line 48
    return v1

    .line 49
    :cond_6
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne v0, p1, :cond_7

    .line 54
    .line 55
    return p2

    .line 56
    :cond_7
    invoke-static {}, Lvd/f;->q()Lyd/f0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne v0, p1, :cond_8

    .line 61
    .line 62
    return v1

    .line 63
    :cond_8
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    cmp-long p1, p3, v2

    .line 68
    .line 69
    if-nez p1, :cond_9

    .line 70
    .line 71
    move v1, p2

    .line 72
    :cond_9
    return v1

    .line 73
    :cond_a
    :goto_0
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, p2, v0, v2}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-direct {p0}, Lvd/e;->O()V

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method private final m0(JZ)Z
    .locals 6

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-wide v4, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    const/4 p3, 0x3

    .line 21
    if-ne v0, p3, :cond_1

    .line 22
    .line 23
    and-long/2addr p1, v4

    .line 24
    invoke-direct {p0, p1, p2}, Lvd/e;->K(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p2, "unexpected close status: "

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_2
    and-long/2addr p1, v4

    .line 57
    invoke-direct {p0, p1, p2}, Lvd/e;->L(J)Lvd/m;

    .line 58
    .line 59
    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0}, Lvd/e;->h0()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    return v1
.end method

.method public static final synthetic n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    invoke-static {}, Lvd/e;->d0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final o0(J)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lvd/e;->m0(JZ)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private final p0(J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lvd/e;->m0(JZ)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public static final synthetic q()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic r(Lvd/e;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/e;->p0(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final r0()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lvd/e;->T()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-wide v2, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method

.method public static final synthetic s(Lvd/e;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvd/e;->x0(Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s0(Lvd/m;)J
    .locals 7

    .line 1
    :cond_0
    sget v0, Lvd/f;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    :goto_0
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ge v3, v0, :cond_5

    .line 9
    .line 10
    iget-wide v3, p1, Lyd/c0;->c:J

    .line 11
    .line 12
    sget v5, Lvd/f;->b:I

    .line 13
    .line 14
    int-to-long v5, v5

    .line 15
    mul-long/2addr v3, v5

    .line 16
    int-to-long v5, v0

    .line 17
    add-long/2addr v3, v5

    .line 18
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    cmp-long v5, v3, v5

    .line 23
    .line 24
    if-gez v5, :cond_1

    .line 25
    .line 26
    return-wide v1

    .line 27
    :cond_1
    invoke-virtual {p1, v0}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object v2, Lvd/f;->d:Lyd/f0;

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    return-wide v3

    .line 45
    :cond_3
    :goto_1
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lvd/m;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lyd/c0;->t()V

    .line 56
    .line 57
    .line 58
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    invoke-virtual {p1}, Lyd/b;->h()Lyd/b;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lvd/m;

    .line 66
    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    return-wide v1
.end method

.method private final t0()V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 v0, 0x3c

    .line 10
    .line 11
    shr-long v0, v2, v0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-wide v0, 0xfffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v0, v2

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-static {v0, v1, v4}, Lvd/f;->b(JI)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    move-object v0, v6

    .line 28
    move-object v1, p0

    .line 29
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public static final synthetic u(Lvd/e;Ltd/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvd/e;->z0(Ltd/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u0()V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide v0, 0xfffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    const/4 v4, 0x3

    .line 16
    invoke-static {v0, v1, v4}, Lvd/f;->b(JI)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    move-object v0, v6

    .line 21
    move-object v1, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void
.end method

.method public static final synthetic v(Lvd/e;Ljava/lang/Object;Ltd/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/e;->B0(Ljava/lang/Object;Ltd/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v0()V
    .locals 7

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 v0, 0x3c

    .line 10
    .line 11
    shr-long v0, v2, v0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    const-wide v4, 0xfffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    and-long v0, v2, v4

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    invoke-static {v0, v1, v4}, Lvd/f;->b(JI)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    and-long v0, v2, v4

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-static {v0, v1, v4}, Lvd/f;->b(JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :goto_0
    move-wide v4, v0

    .line 41
    move-object v0, v6

    .line 42
    move-object v1, p0

    .line 43
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    return-void
.end method

.method public static final synthetic w(Lvd/e;Ltd/s2;Lvd/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvd/e;->G0(Ltd/s2;Lvd/m;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final w0(JLvd/m;)V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p3, Lyd/c0;->c:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Lyd/b;->f()Lyd/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lvd/m;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object p3, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lyd/c0;->k()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, Lyd/b;->f()Lyd/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lvd/m;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object p3, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_2
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_4
    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lyd/c0;

    .line 44
    .line 45
    iget-wide v0, p2, Lyd/c0;->c:J

    .line 46
    .line 47
    iget-wide v2, p3, Lyd/c0;->c:J

    .line 48
    .line 49
    cmp-long v0, v0, v2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    if-ltz v0, :cond_5

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_5
    invoke-virtual {p3}, Lyd/c0;->u()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    goto :goto_4

    .line 63
    :cond_6
    invoke-static {p1, p0, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    invoke-virtual {p2}, Lyd/c0;->p()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    invoke-virtual {p2}, Lyd/b;->n()V

    .line 76
    .line 77
    .line 78
    :cond_7
    :goto_4
    if-eqz v1, :cond_1

    .line 79
    .line 80
    return-void

    .line 81
    :cond_8
    invoke-virtual {p3}, Lyd/c0;->p()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p3}, Lyd/b;->n()V

    .line 88
    .line 89
    .line 90
    goto :goto_3
.end method

.method public static final synthetic x(Lvd/e;Ltd/s2;Lvd/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvd/e;->H0(Ltd/s2;Lvd/m;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x0(Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lvd/e;->b:Lid/l;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lyd/y;->a(Lid/l;Ljava/lang/Object;Lad/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final z0(Ltd/l;)V
    .locals 1

    .line 1
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lvd/e;->Y()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected C0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected D0()V
    .locals 0

    .line 1
    return-void
.end method

.method public G(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel was cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lvd/e;->J(Ljava/lang/Throwable;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected J(Ljava/lang/Throwable;Z)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lvd/e;->t0()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Lvd/e;->g0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lvd/f;->l()Lyd/f0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lvd/e;->u0()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Lvd/e;->v0()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0}, Lvd/e;->M()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lvd/e;->y0()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lvd/e;->k0()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return p1
.end method

.method protected final N(J)V
    .locals 10

    .line 1
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lvd/m;

    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    iget v1, p0, Lvd/e;->a:I

    .line 20
    .line 21
    int-to-long v1, v1

    .line 22
    add-long/2addr v1, v8

    .line 23
    invoke-direct {p0}, Lvd/e;->T()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    cmp-long v1, p1, v1

    .line 32
    .line 33
    if-gez v1, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-wide/16 v3, 0x1

    .line 41
    .line 42
    add-long v6, v8, v3

    .line 43
    .line 44
    move-object v3, p0

    .line 45
    move-wide v4, v8

    .line 46
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    sget v1, Lvd/f;->b:I

    .line 53
    .line 54
    int-to-long v2, v1

    .line 55
    div-long v2, v8, v2

    .line 56
    .line 57
    int-to-long v4, v1

    .line 58
    rem-long v4, v8, v4

    .line 59
    .line 60
    long-to-int v4, v4

    .line 61
    iget-wide v5, v0, Lyd/c0;->c:J

    .line 62
    .line 63
    cmp-long v1, v5, v2

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, v2, v3, v0}, Lvd/e;->Q(JLvd/m;)Lvd/m;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move-object v0, v1

    .line 75
    :cond_3
    const/4 v7, 0x0

    .line 76
    move-object v2, p0

    .line 77
    move-object v3, v0

    .line 78
    move-wide v5, v8

    .line 79
    invoke-direct/range {v2 .. v7}, Lvd/e;->W0(Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-ne v1, v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    cmp-long v1, v8, v1

    .line 94
    .line 95
    if-gez v1, :cond_0

    .line 96
    .line 97
    invoke-virtual {v0}, Lyd/b;->c()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v0}, Lyd/b;->c()V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lvd/e;->b:Lid/l;

    .line 105
    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static {v2, v1, v4, v3, v4}, Lyd/y;->c(Lid/l;Ljava/lang/Object;Lyd/r0;ILjava/lang/Object;)Lyd/r0;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    throw v1
.end method

.method protected final T0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    sget-object v9, Lvd/f;->d:Lyd/f0;

    .line 4
    .line 5
    invoke-static {}, Lvd/e;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lvd/m;

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-static {}, Lvd/e;->q()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide v3, 0xfffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long v10, v1, v3

    .line 29
    .line 30
    invoke-static {v8, v1, v2}, Lvd/e;->r(Lvd/e;J)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    sget v13, Lvd/f;->b:I

    .line 35
    .line 36
    int-to-long v1, v13

    .line 37
    div-long v1, v10, v1

    .line 38
    .line 39
    int-to-long v3, v13

    .line 40
    rem-long v3, v10, v3

    .line 41
    .line 42
    long-to-int v14, v3

    .line 43
    iget-wide v3, v0, Lyd/c0;->c:J

    .line 44
    .line 45
    cmp-long v3, v3, v1

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-static {v8, v1, v2, v0}, Lvd/e;->j(Lvd/e;JLvd/m;)Lvd/m;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-eqz v12, :cond_0

    .line 56
    .line 57
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_1
    move-object v15, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v15, v0

    .line 71
    :goto_1
    move-object/from16 v0, p0

    .line 72
    .line 73
    move-object v1, v15

    .line 74
    move v2, v14

    .line 75
    move-object/from16 v3, p1

    .line 76
    .line 77
    move-wide v4, v10

    .line 78
    move-object v6, v9

    .line 79
    move v7, v12

    .line 80
    invoke-static/range {v0 .. v7}, Lvd/e;->B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_c

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    if-eq v0, v1, :cond_b

    .line 88
    .line 89
    const/4 v1, 0x2

    .line 90
    if-eq v0, v1, :cond_7

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    if-eq v0, v1, :cond_6

    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    if-eq v0, v1, :cond_4

    .line 97
    .line 98
    const/4 v1, 0x5

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v15}, Lyd/b;->c()V

    .line 103
    .line 104
    .line 105
    :goto_2
    move-object v0, v15

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lvd/e;->b0()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    cmp-long v0, v10, v0

    .line 112
    .line 113
    if-gez v0, :cond_5

    .line 114
    .line 115
    invoke-virtual {v15}, Lyd/b;->c()V

    .line 116
    .line 117
    .line 118
    :cond_5
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v1, "unexpected"

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_7
    if-eqz v12, :cond_8

    .line 142
    .line 143
    invoke-virtual {v15}, Lyd/c0;->t()V

    .line 144
    .line 145
    .line 146
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    :cond_8
    instance-of v0, v9, Ltd/s2;

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    check-cast v9, Ltd/s2;

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    const/4 v9, 0x0

    .line 165
    :goto_3
    if-eqz v9, :cond_a

    .line 166
    .line 167
    invoke-static {v8, v9, v15, v14}, Lvd/e;->x(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 168
    .line 169
    .line 170
    :cond_a
    iget-wide v0, v15, Lyd/c0;->c:J

    .line 171
    .line 172
    int-to-long v2, v13

    .line 173
    mul-long/2addr v0, v2

    .line 174
    int-to-long v2, v14

    .line 175
    add-long/2addr v0, v2

    .line 176
    invoke-virtual {v8, v0, v1}, Lvd/e;->N(J)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 180
    .line 181
    sget-object v1, Lxc/t;->a:Lxc/t;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    :cond_b
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 189
    .line 190
    sget-object v1, Lxc/t;->a:Lxc/t;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :cond_c
    invoke-virtual {v15}, Lyd/b;->c()V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 201
    .line 202
    sget-object v1, Lxc/t;->a:Lxc/t;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    return-object v0
.end method

.method protected final V()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-static {}, Lvd/e;->g0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Throwable;

    .line 10
    .line 11
    return-object v0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvd/e;->G(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b0()J
    .locals 2

    .line 1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method protected final c0()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lvd/r;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final c1(J)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lvd/e;->r0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct/range {p0 .. p0}, Lvd/e;->T()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    cmp-long v0, v0, p1

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lvd/f;->g()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v7, 0x0

    .line 23
    move v1, v7

    .line 24
    :goto_0
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lvd/e;->T()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    and-long/2addr v4, v8

    .line 44
    cmp-long v4, v2, v4

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-direct/range {p0 .. p0}, Lvd/e;->T()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    :cond_3
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    and-long v0, v2, v8

    .line 69
    .line 70
    const/4 v11, 0x1

    .line 71
    invoke-static {v0, v1, v11}, Lvd/f;->a(JZ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    move-object v0, v10

    .line 76
    move-object/from16 v1, p0

    .line 77
    .line 78
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lvd/e;->T()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    and-long v4, v2, v8

    .line 97
    .line 98
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 99
    .line 100
    and-long/2addr v12, v2

    .line 101
    const-wide/16 v14, 0x0

    .line 102
    .line 103
    cmp-long v10, v12, v14

    .line 104
    .line 105
    if-eqz v10, :cond_5

    .line 106
    .line 107
    move v10, v11

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move v10, v7

    .line 110
    :goto_2
    cmp-long v12, v0, v4

    .line 111
    .line 112
    if-nez v12, :cond_7

    .line 113
    .line 114
    invoke-direct/range {p0 .. p0}, Lvd/e;->T()J

    .line 115
    .line 116
    .line 117
    move-result-wide v12

    .line 118
    cmp-long v0, v0, v12

    .line 119
    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    :cond_6
    invoke-virtual {v12, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    and-long v0, v2, v8

    .line 131
    .line 132
    invoke-static {v0, v1, v7}, Lvd/f;->a(JZ)J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    move-object v0, v12

    .line 137
    move-object/from16 v1, p0

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    return-void

    .line 146
    :cond_7
    if-nez v10, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lvd/e;->X()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v4, v5, v11}, Lvd/f;->a(JZ)J

    .line 153
    .line 154
    .line 155
    move-result-wide v4

    .line 156
    move-object/from16 v1, p0

    .line 157
    .line 158
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1
.end method

.method public f()Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-direct {p0, v2, v3}, Lvd/e;->o0(J)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 24
    .line 25
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    const-wide v4, 0xfffffffffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v2, v4

    .line 40
    cmp-long v0, v0, v2

    .line 41
    .line 42
    if-ltz v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 45
    .line 46
    invoke-virtual {v0}, Lvd/k$b;->b()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_1
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lvd/e;->l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lvd/m;

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lvd/e;->n0()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 72
    .line 73
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_2
    invoke-static {}, Lvd/e;->n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    sget v2, Lvd/f;->b:I

    .line 92
    .line 93
    int-to-long v3, v2

    .line 94
    div-long v3, v7, v3

    .line 95
    .line 96
    int-to-long v5, v2

    .line 97
    rem-long v5, v7, v5

    .line 98
    .line 99
    long-to-int v9, v5

    .line 100
    iget-wide v5, v1, Lyd/c0;->c:J

    .line 101
    .line 102
    cmp-long v2, v5, v3

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {p0, v3, v4, v1}, Lvd/e;->i(Lvd/e;JLvd/m;)Lvd/m;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    move-object v10, v2

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move-object v10, v1

    .line 116
    :goto_1
    move-object v1, p0

    .line 117
    move-object v2, v10

    .line 118
    move v3, v9

    .line 119
    move-wide v4, v7

    .line 120
    move-object v6, v0

    .line 121
    invoke-static/range {v1 .. v6}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-ne v1, v2, :cond_7

    .line 130
    .line 131
    instance-of v1, v0, Ltd/s2;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    check-cast v0, Ltd/s2;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v0, 0x0

    .line 139
    :goto_2
    if-eqz v0, :cond_6

    .line 140
    .line 141
    invoke-static {p0, v0, v10, v9}, Lvd/e;->w(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 142
    .line 143
    .line 144
    :cond_6
    invoke-virtual {p0, v7, v8}, Lvd/e;->c1(J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Lyd/c0;->t()V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 151
    .line 152
    invoke-virtual {v0}, Lvd/k$b;->b()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_3

    .line 157
    :cond_7
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-ne v1, v2, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    cmp-long v1, v7, v1

    .line 168
    .line 169
    if-gez v1, :cond_8

    .line 170
    .line 171
    invoke-virtual {v10}, Lyd/b;->c()V

    .line 172
    .line 173
    .line 174
    :cond_8
    move-object v1, v10

    .line 175
    goto :goto_0

    .line 176
    :cond_9
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eq v1, v0, :cond_a

    .line 181
    .line 182
    invoke-virtual {v10}, Lyd/b;->c()V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lvd/k;->b:Lvd/k$b;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_3
    return-object v0

    .line 192
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    const-string v1, "unexpected"

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0
.end method

.method public final f0()J
    .locals 4

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide v2, 0xfffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    return-wide v0
.end method

.method public h(Lid/l;)V
    .locals 4

    .line 1
    invoke-static {}, Lvd/e;->W()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lvd/e;->W()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lvd/f;->d()Lyd/f0;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lvd/e;->W()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lvd/f;->d()Lyd/f0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Lvd/f;->e()Lyd/f0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, p0, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-static {}, Lvd/f;->e()Lyd/f0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne v1, p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "Another handler was already registered and successfully invoked"

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "Another handler is already registered: "

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public final h0()Z
    .locals 9

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lvd/m;

    .line 10
    .line 11
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p0}, Lvd/e;->f0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-gtz v1, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    sget v1, Lvd/f;->b:I

    .line 26
    .line 27
    int-to-long v5, v1

    .line 28
    div-long v5, v3, v5

    .line 29
    .line 30
    iget-wide v7, v0, Lyd/c0;->c:J

    .line 31
    .line 32
    cmp-long v7, v7, v5

    .line 33
    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, v5, v6, v0}, Lvd/e;->Q(JLvd/m;)Lvd/m;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lvd/m;

    .line 51
    .line 52
    iget-wide v0, v0, Lyd/c0;->c:J

    .line 53
    .line 54
    cmp-long v0, v0, v5

    .line 55
    .line 56
    if-gez v0, :cond_0

    .line 57
    .line 58
    return v2

    .line 59
    :cond_2
    invoke-virtual {v0}, Lyd/b;->c()V

    .line 60
    .line 61
    .line 62
    int-to-long v1, v1

    .line 63
    rem-long v1, v3, v1

    .line 64
    .line 65
    long-to-int v1, v1

    .line 66
    invoke-direct {p0, v0, v1, v3, v4}, Lvd/e;->l0(Lvd/m;IJ)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    return v0

    .line 74
    :cond_3
    invoke-static {}, Lvd/e;->a0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-wide/16 v5, 0x1

    .line 79
    .line 80
    add-long/2addr v5, v3

    .line 81
    move-object v2, p0

    .line 82
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0
.end method

.method public iterator()Lvd/i;
    .locals 1

    .line 1
    new-instance v0, Lvd/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lvd/e$a;-><init>(Lvd/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public m(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lvd/e;->J(Ljava/lang/Throwable;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public n0()Z
    .locals 2

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-direct {p0, v0, v1}, Lvd/e;->o0(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public p(Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvd/e;->I0(Lvd/e;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected q0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-direct {p0, v0, v1}, Lvd/e;->Q0(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lvd/k;->b:Lvd/k$b;

    .line 16
    .line 17
    invoke-virtual {p1}, Lvd/k$b;->b()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-static {}, Lvd/e;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lvd/m;

    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Lvd/e;->q()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-wide v3, 0xfffffffffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long v9, v1, v3

    .line 50
    .line 51
    invoke-static {p0, v1, v2}, Lvd/e;->r(Lvd/e;J)Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    sget v1, Lvd/f;->b:I

    .line 56
    .line 57
    int-to-long v2, v1

    .line 58
    div-long v2, v9, v2

    .line 59
    .line 60
    int-to-long v4, v1

    .line 61
    rem-long v4, v9, v4

    .line 62
    .line 63
    long-to-int v12, v4

    .line 64
    iget-wide v4, v0, Lyd/c0;->c:J

    .line 65
    .line 66
    cmp-long v1, v4, v2

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-static {p0, v2, v3, v0}, Lvd/e;->j(Lvd/e;JLvd/m;)Lvd/m;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    if-eqz v11, :cond_1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    move-object v13, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v13, v0

    .line 82
    :goto_1
    move-object v0, p0

    .line 83
    move-object v1, v13

    .line 84
    move v2, v12

    .line 85
    move-object v3, p1

    .line 86
    move-wide v4, v9

    .line 87
    move-object v6, v8

    .line 88
    move v7, v11

    .line 89
    invoke-static/range {v0 .. v7}, Lvd/e;->B(Lvd/e;Lvd/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_c

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    if-eq v0, v1, :cond_d

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    if-eq v0, v1, :cond_7

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    if-eq v0, v1, :cond_6

    .line 103
    .line 104
    const/4 v1, 0x4

    .line 105
    if-eq v0, v1, :cond_5

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    if-eq v0, v1, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {v13}, Lyd/b;->c()V

    .line 112
    .line 113
    .line 114
    :goto_2
    move-object v0, v13

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p0}, Lvd/e;->b0()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    cmp-long p1, v9, v0

    .line 121
    .line 122
    if-gez p1, :cond_8

    .line 123
    .line 124
    invoke-virtual {v13}, Lyd/b;->c()V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v0, "unexpected"

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_7
    if-eqz v11, :cond_9

    .line 141
    .line 142
    invoke-virtual {v13}, Lyd/c0;->t()V

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_3
    sget-object p1, Lvd/k;->b:Lvd/k$b;

    .line 146
    .line 147
    invoke-virtual {p0}, Lvd/e;->c0()Ljava/lang/Throwable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Lvd/k$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_5

    .line 156
    :cond_9
    instance-of p1, v8, Ltd/s2;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    check-cast v8, Ltd/s2;

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    const/4 v8, 0x0

    .line 164
    :goto_4
    if-eqz v8, :cond_b

    .line 165
    .line 166
    invoke-static {p0, v8, v13, v12}, Lvd/e;->x(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 167
    .line 168
    .line 169
    :cond_b
    invoke-virtual {v13}, Lyd/c0;->t()V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lvd/k;->b:Lvd/k$b;

    .line 173
    .line 174
    invoke-virtual {p1}, Lvd/k$b;->b()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_5

    .line 179
    :cond_c
    invoke-virtual {v13}, Lyd/b;->c()V

    .line 180
    .line 181
    .line 182
    :cond_d
    sget-object p1, Lvd/k;->b:Lvd/k$b;

    .line 183
    .line 184
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lvd/k$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    :goto_5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const/16 v4, 0x3c

    .line 17
    .line 18
    shr-long/2addr v2, v4

    .line 19
    long-to-int v2, v2

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v2, v4, :cond_1

    .line 23
    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v2, "cancelled,"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "closed,"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v5, "capacity="

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v5, v0, Lvd/e;->a:I

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v5, 0x2c

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, "data=["

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    new-array v2, v3, [Lvd/m;

    .line 71
    .line 72
    invoke-static {}, Lvd/e;->Z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v6, 0x0

    .line 81
    aput-object v3, v2, v6

    .line 82
    .line 83
    invoke-static {}, Lvd/e;->d0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v7, 0x1

    .line 92
    aput-object v3, v2, v7

    .line 93
    .line 94
    invoke-static {}, Lvd/e;->U()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    aput-object v3, v2, v4

    .line 103
    .line 104
    invoke-static {v2}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/Iterable;

    .line 109
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    move-object v8, v4

    .line 130
    check-cast v8, Lvd/m;

    .line 131
    .line 132
    invoke-static {}, Lvd/f;->n()Lvd/m;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-eq v8, v9, :cond_3

    .line 137
    .line 138
    move v8, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v8, v6

    .line 141
    :goto_2
    if-eqz v8, :cond_2

    .line 142
    .line 143
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_16

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_5

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move-object v4, v3

    .line 169
    check-cast v4, Lvd/m;

    .line 170
    .line 171
    iget-wide v8, v4, Lyd/c0;->c:J

    .line 172
    .line 173
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    move-object v10, v4

    .line 178
    check-cast v10, Lvd/m;

    .line 179
    .line 180
    iget-wide v10, v10, Lyd/c0;->c:J

    .line 181
    .line 182
    cmp-long v12, v8, v10

    .line 183
    .line 184
    if-lez v12, :cond_7

    .line 185
    .line 186
    move-object v3, v4

    .line 187
    move-wide v8, v10

    .line 188
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_6

    .line 193
    .line 194
    :goto_3
    check-cast v3, Lvd/m;

    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Lvd/e;->b0()J

    .line 197
    .line 198
    .line 199
    move-result-wide v10

    .line 200
    invoke-virtual/range {p0 .. p0}, Lvd/e;->f0()J

    .line 201
    .line 202
    .line 203
    move-result-wide v12

    .line 204
    :goto_4
    sget v2, Lvd/f;->b:I

    .line 205
    .line 206
    move v4, v6

    .line 207
    :goto_5
    if-ge v4, v2, :cond_12

    .line 208
    .line 209
    iget-wide v8, v3, Lyd/c0;->c:J

    .line 210
    .line 211
    sget v14, Lvd/f;->b:I

    .line 212
    .line 213
    int-to-long v14, v14

    .line 214
    mul-long/2addr v8, v14

    .line 215
    int-to-long v14, v4

    .line 216
    add-long/2addr v8, v14

    .line 217
    cmp-long v14, v8, v12

    .line 218
    .line 219
    if-ltz v14, :cond_8

    .line 220
    .line 221
    cmp-long v15, v8, v10

    .line 222
    .line 223
    if-gez v15, :cond_13

    .line 224
    .line 225
    :cond_8
    invoke-virtual {v3, v4}, Lvd/m;->B(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    invoke-virtual {v3, v4}, Lvd/m;->A(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    instance-of v7, v15, Ltd/l;

    .line 234
    .line 235
    if-eqz v7, :cond_b

    .line 236
    .line 237
    cmp-long v7, v8, v10

    .line 238
    .line 239
    if-gez v7, :cond_9

    .line 240
    .line 241
    if-ltz v14, :cond_9

    .line 242
    .line 243
    const-string v7, "receive"

    .line 244
    .line 245
    goto/16 :goto_7

    .line 246
    .line 247
    :cond_9
    if-gez v14, :cond_a

    .line 248
    .line 249
    if-ltz v7, :cond_a

    .line 250
    .line 251
    const-string v7, "send"

    .line 252
    .line 253
    goto/16 :goto_7

    .line 254
    .line 255
    :cond_a
    const-string v7, "cont"

    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :cond_b
    instance-of v7, v15, Lvd/y;

    .line 260
    .line 261
    if-eqz v7, :cond_c

    .line 262
    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v8, "EB("

    .line 269
    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const/16 v8, 0x29

    .line 277
    .line 278
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    goto :goto_7

    .line 286
    :cond_c
    invoke-static {}, Lvd/f;->q()Lyd/f0;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-nez v7, :cond_f

    .line 295
    .line 296
    invoke-static {}, Lvd/f;->p()Lyd/f0;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_d

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_d
    if-eqz v15, :cond_11

    .line 308
    .line 309
    invoke-static {}, Lvd/f;->k()Lyd/f0;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-nez v7, :cond_11

    .line 318
    .line 319
    invoke-static {}, Lvd/f;->f()Lyd/f0;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-nez v7, :cond_11

    .line 328
    .line 329
    invoke-static {}, Lvd/f;->o()Lyd/f0;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-nez v7, :cond_11

    .line 338
    .line 339
    invoke-static {}, Lvd/f;->i()Lyd/f0;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-nez v7, :cond_11

    .line 348
    .line 349
    invoke-static {}, Lvd/f;->j()Lyd/f0;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-nez v7, :cond_11

    .line 358
    .line 359
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-static {v15, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-eqz v7, :cond_e

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_e
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    goto :goto_7

    .line 375
    :cond_f
    :goto_6
    const-string v7, "resuming_sender"

    .line 376
    .line 377
    :goto_7
    if-eqz v6, :cond_10

    .line 378
    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const/16 v9, 0x28

    .line 385
    .line 386
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v6, "),"

    .line 399
    .line 400
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    :cond_11
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 430
    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v7, 0x1

    .line 433
    goto/16 :goto_5

    .line 434
    .line 435
    :cond_12
    invoke-virtual {v3}, Lyd/b;->f()Lyd/b;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    move-object v3, v2

    .line 440
    check-cast v3, Lvd/m;

    .line 441
    .line 442
    if-nez v3, :cond_15

    .line 443
    .line 444
    :cond_13
    invoke-static {v1}, Lrd/n;->R0(Ljava/lang/CharSequence;)C

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-ne v2, v5, :cond_14

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    const/4 v4, 0x1

    .line 455
    sub-int/2addr v2, v4

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const-string v3, "deleteCharAt(...)"

    .line 461
    .line 462
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_14
    const-string v2, "]"

    .line 466
    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    return-object v1

    .line 475
    :cond_15
    const/4 v6, 0x0

    .line 476
    const/4 v7, 0x1

    .line 477
    goto/16 :goto_4

    .line 478
    .line 479
    :cond_16
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 482
    .line 483
    .line 484
    throw v1
.end method

.method public y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lvd/e;->O0(Lvd/e;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected y0()V
    .locals 0

    .line 1
    return-void
.end method

.method public z()Z
    .locals 2

    .line 1
    invoke-static {}, Lvd/e;->e0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-direct {p0, v0, v1}, Lvd/e;->p0(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
