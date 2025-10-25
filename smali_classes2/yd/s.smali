.class public final Lyd/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyd/s$a;,
        Lyd/s$b;
    }
.end annotation


# static fields
.field public static final e:Lyd/s$a;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:Lyd/f0;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:J

.field private final a:I

.field private final b:Z

.field private final c:I

.field private final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lyd/s$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lyd/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lyd/s;->e:Lyd/s$a;

    .line 8
    .line 9
    const-class v0, Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "_next$volatile"

    .line 12
    .line 13
    const-class v2, Lyd/s;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lyd/s;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_state$volatile"

    .line 22
    .line 23
    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lyd/s;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 28
    .line 29
    new-instance v0, Lyd/f0;

    .line 30
    .line 31
    const-string v1, "REMOVE_FROZEN"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lyd/s;->h:Lyd/f0;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lyd/s;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lyd/s;->b:Z

    .line 7
    .line 8
    add-int/lit8 p2, p1, -0x1

    .line 9
    .line 10
    iput p2, p0, Lyd/s;->c:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lyd/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    .line 19
    const v0, 0x3fffffff    # 1.9999999f

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-gt p2, v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    const-string v3, "Check failed."

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    and-int/2addr p1, p2

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private final b(J)Lyd/s;
    .locals 6

    .line 1
    new-instance v0, Lyd/s;

    .line 2
    .line 3
    iget v1, p0, Lyd/s;->a:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    iget-boolean v2, p0, Lyd/s;->b:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lyd/s;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const-wide/32 v1, 0x3fffffff

    .line 13
    .line 14
    .line 15
    and-long/2addr v1, p1

    .line 16
    const/4 v3, 0x0

    .line 17
    shr-long/2addr v1, v3

    .line 18
    long-to-int v1, v1

    .line 19
    const-wide v2, 0xfffffffc0000000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v2, p1

    .line 25
    const/16 v4, 0x1e

    .line 26
    .line 27
    shr-long/2addr v2, v4

    .line 28
    long-to-int v2, v2

    .line 29
    :goto_0
    iget v3, p0, Lyd/s;->c:I

    .line 30
    .line 31
    and-int v4, v1, v3

    .line 32
    .line 33
    and-int/2addr v3, v2

    .line 34
    if-eq v4, v3, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v4, p0, Lyd/s;->c:I

    .line 41
    .line 42
    and-int/2addr v4, v1

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    new-instance v3, Lyd/s$b;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Lyd/s$b;-><init>(I)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-direct {v0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget v5, v0, Lyd/s;->c:I

    .line 59
    .line 60
    and-int/2addr v5, v1

    .line 61
    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v2, Lyd/s;->e:Lyd/s$a;

    .line 72
    .line 73
    const-wide/high16 v3, 0x1000000000000000L

    .line 74
    .line 75
    invoke-virtual {v2, p1, p2, v3, v4}, Lyd/s$a;->d(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    invoke-virtual {v1, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method private final c(J)Lyd/s;
    .locals 4

    .line 1
    invoke-static {}, Lyd/s;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lyd/s;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {}, Lyd/s;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Lyd/s;->b(J)Lyd/s;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v1, p0, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0
.end method

.method private final e(ILjava/lang/Object;)Lyd/s;
    .locals 2

    .line 1
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lyd/s;->c:I

    .line 6
    .line 7
    and-int/2addr v1, p1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lyd/s$b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lyd/s$b;

    .line 17
    .line 18
    iget v0, v0, Lyd/s$b;->a:I

    .line 19
    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lyd/s;->c:I

    .line 27
    .line 28
    and-int/2addr p1, v1

    .line 29
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private final synthetic f()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/s;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private static final synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lyd/s;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lyd/s;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final k()J
    .locals 9

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/high16 v0, 0x1000000000000000L

    .line 10
    .line 11
    and-long v4, v2, v0

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    cmp-long v4, v4, v7

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    return-wide v2

    .line 20
    :cond_1
    or-long v7, v2, v0

    .line 21
    .line 22
    move-object v0, v6

    .line 23
    move-object v1, p0

    .line 24
    move-wide v4, v7

    .line 25
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-wide v7
.end method

.method private final n(II)Lyd/s;
    .locals 7

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/32 v0, 0x3fffffff

    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    shr-long/2addr v0, v4

    .line 15
    long-to-int v6, v0

    .line 16
    const-wide/high16 v0, 0x1000000000000000L

    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v4

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lyd/s;->l()Lyd/s;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lyd/s;->e:Lyd/s$a;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3, p2}, Lyd/s$a;->b(JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    move-object v1, p0

    .line 41
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p0, Lyd/s;->c:I

    .line 52
    .line 53
    and-int/2addr p2, v6

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 13

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v7

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lyd/s;->e:Lyd/s$a;

    .line 19
    .line 20
    invoke-virtual {p1, v3, v4}, Lyd/s$a;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const-wide/32 v1, 0x3fffffff

    .line 26
    .line 27
    .line 28
    and-long/2addr v1, v3

    .line 29
    const/4 v9, 0x0

    .line 30
    shr-long/2addr v1, v9

    .line 31
    long-to-int v1, v1

    .line 32
    const-wide v5, 0xfffffffc0000000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v5, v3

    .line 38
    const/16 v2, 0x1e

    .line 39
    .line 40
    shr-long/2addr v5, v2

    .line 41
    long-to-int v10, v5

    .line 42
    iget v11, p0, Lyd/s;->c:I

    .line 43
    .line 44
    add-int/lit8 v2, v10, 0x2

    .line 45
    .line 46
    and-int/2addr v2, v11

    .line 47
    and-int v5, v1, v11

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-ne v2, v5, :cond_2

    .line 51
    .line 52
    return v6

    .line 53
    :cond_2
    iget-boolean v2, p0, Lyd/s;->b:Z

    .line 54
    .line 55
    const v5, 0x3fffffff    # 1.9999999f

    .line 56
    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    and-int v12, v10, v11

    .line 65
    .line 66
    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget v2, p0, Lyd/s;->a:I

    .line 73
    .line 74
    const/16 v3, 0x400

    .line 75
    .line 76
    if-lt v2, v3, :cond_3

    .line 77
    .line 78
    sub-int/2addr v10, v1

    .line 79
    and-int v1, v10, v5

    .line 80
    .line 81
    shr-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    if-le v1, v2, :cond_0

    .line 84
    .line 85
    :cond_3
    return v6

    .line 86
    :cond_4
    add-int/lit8 v1, v10, 0x1

    .line 87
    .line 88
    and-int/2addr v1, v5

    .line 89
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget-object v5, Lyd/s;->e:Lyd/s$a;

    .line 94
    .line 95
    invoke-virtual {v5, v3, v4, v1}, Lyd/s$a;->c(JI)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    move-object v1, v2

    .line 100
    move-object v2, p0

    .line 101
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    and-int v1, v10, v11

    .line 112
    .line 113
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object v0, p0

    .line 117
    :cond_5
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    const-wide/high16 v3, 0x1000000000000000L

    .line 126
    .line 127
    and-long/2addr v1, v3

    .line 128
    cmp-long v1, v1, v7

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0}, Lyd/s;->l()Lyd/s;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {v0, v10, p1}, Lyd/s;->e(ILjava/lang/Object;)Lyd/s;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    :cond_6
    return v9
.end method

.method public final d()Z
    .locals 10

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/high16 v0, 0x2000000000000000L

    .line 10
    .line 11
    and-long v4, v2, v0

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    cmp-long v4, v4, v7

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    return v9

    .line 21
    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    .line 22
    .line 23
    and-long/2addr v4, v2

    .line 24
    cmp-long v4, v4, v7

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_2
    or-long v4, v2, v0

    .line 31
    .line 32
    move-object v0, v6

    .line 33
    move-object v1, p0

    .line 34
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    return v9
.end method

.method public final g()I
    .locals 5

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/32 v2, 0x3fffffff

    .line 10
    .line 11
    .line 12
    and-long/2addr v2, v0

    .line 13
    const/4 v4, 0x0

    .line 14
    shr-long/2addr v2, v4

    .line 15
    long-to-int v2, v2

    .line 16
    const-wide v3, 0xfffffffc0000000L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v0, v3

    .line 22
    const/16 v3, 0x1e

    .line 23
    .line 24
    shr-long/2addr v0, v3

    .line 25
    long-to-int v0, v0

    .line 26
    sub-int/2addr v0, v2

    .line 27
    const v1, 0x3fffffff    # 1.9999999f

    .line 28
    .line 29
    .line 30
    and-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public final j()Z
    .locals 7

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/32 v2, 0x3fffffff

    .line 10
    .line 11
    .line 12
    and-long/2addr v2, v0

    .line 13
    const/4 v4, 0x0

    .line 14
    shr-long/2addr v2, v4

    .line 15
    long-to-int v2, v2

    .line 16
    const-wide v5, 0xfffffffc0000000L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v0, v5

    .line 22
    const/16 v3, 0x1e

    .line 23
    .line 24
    shr-long/2addr v0, v3

    .line 25
    long-to-int v0, v0

    .line 26
    if-ne v2, v0, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    :cond_0
    return v4
.end method

.method public final l()Lyd/s;
    .locals 2

    .line 1
    invoke-direct {p0}, Lyd/s;->k()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1}, Lyd/s;->c(J)Lyd/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
    const-wide/high16 v1, 0x1000000000000000L

    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v5

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lyd/s;->h:Lyd/f0;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    const-wide/32 v1, 0x3fffffff

    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v3

    .line 25
    const/4 v5, 0x0

    .line 26
    shr-long/2addr v1, v5

    .line 27
    long-to-int v7, v1

    .line 28
    const-wide v1, 0xfffffffc0000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v1, v3

    .line 34
    const/16 v5, 0x1e

    .line 35
    .line 36
    shr-long/2addr v1, v5

    .line 37
    long-to-int v1, v1

    .line 38
    iget v2, p0, Lyd/s;->c:I

    .line 39
    .line 40
    and-int/2addr v1, v2

    .line 41
    and-int/2addr v2, v7

    .line 42
    const/4 v8, 0x0

    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    return-object v8

    .line 46
    :cond_2
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v2, p0, Lyd/s;->c:I

    .line 51
    .line 52
    and-int/2addr v2, v7

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    if-nez v9, :cond_3

    .line 58
    .line 59
    iget-boolean v1, p0, Lyd/s;->b:Z

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    return-object v8

    .line 64
    :cond_3
    instance-of v1, v9, Lyd/s$b;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    return-object v8

    .line 69
    :cond_4
    add-int/lit8 v1, v7, 0x1

    .line 70
    .line 71
    const v2, 0x3fffffff    # 1.9999999f

    .line 72
    .line 73
    .line 74
    and-int v10, v1, v2

    .line 75
    .line 76
    invoke-static {}, Lyd/s;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v2, Lyd/s;->e:Lyd/s$a;

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4, v10}, Lyd/s$a;->b(JI)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    move-object v2, p0

    .line 87
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-direct {p0}, Lyd/s;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v1, p0, Lyd/s;->c:I

    .line 98
    .line 99
    and-int/2addr v1, v7

    .line 100
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object v9

    .line 104
    :cond_5
    iget-boolean v1, p0, Lyd/s;->b:Z

    .line 105
    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    move-object v0, p0

    .line 109
    :cond_6
    invoke-direct {v0, v7, v10}, Lyd/s;->n(II)Lyd/s;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    return-object v9
.end method
