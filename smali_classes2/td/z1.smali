.class public Ltd/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd/t1;
.implements Ltd/u;
.implements Ltd/h2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd/z1$a;,
        Ltd/z1$b;,
        Ltd/z1$c;
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_state$volatile"

    const-class v1, Ltd/z1;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ltd/z1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ltd/z1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ltd/a2;->c()Ltd/c1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ltd/a2;->d()Ltd/c1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Ltd/z1;->_state$volatile:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method private final A0(Ltd/c1;)V
    .locals 2

    .line 1
    new-instance v0, Ltd/e2;

    .line 2
    .line 3
    invoke-direct {v0}, Ltd/e2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ltd/c1;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Ltd/o1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ltd/o1;-><init>(Ltd/e2;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :goto_0
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic B(Ltd/z1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ltd/z1;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final B0(Ltd/y1;)V
    .locals 2

    .line 1
    new-instance v0, Ltd/e2;

    .line 2
    .line 3
    invoke-direct {v0}, Ltd/e2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lyd/q;->e(Lyd/q;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lyd/q;->k()Lyd/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic C(Ltd/z1;Ltd/z1$c;Ltd/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ltd/z1;->S(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Throwable;

    .line 37
    .line 38
    if-eq v1, p1, :cond_1

    .line 39
    .line 40
    if-eq v1, p1, :cond_1

    .line 41
    .line 42
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {p1, v1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method private final E0(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Ltd/c1;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ltd/c1;

    .line 10
    .line 11
    invoke-virtual {v0}, Ltd/c1;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ltd/a2;->c()Ltd/c1;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Ltd/z1;->z0()V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    instance-of v0, p1, Ltd/o1;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v3, p1

    .line 46
    check-cast v3, Ltd/o1;

    .line 47
    .line 48
    invoke-virtual {v3}, Ltd/o1;->b()Ltd/e2;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    return v1

    .line 59
    :cond_3
    invoke-virtual {p0}, Ltd/z1;->z0()V

    .line 60
    .line 61
    .line 62
    return v2

    .line 63
    :cond_4
    return v3
.end method

.method private final F0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Ltd/z1$c;

    .line 2
    .line 3
    const-string v1, "Active"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Ltd/z1$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Ltd/z1$c;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "Cancelling"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ltd/z1$c;->j()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    const-string v1, "Completing"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p1, Ltd/p1;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    check-cast p1, Ltd/p1;

    .line 32
    .line 33
    invoke-interface {p1}, Ltd/p1;->isActive()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "New"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    instance-of p1, p1, Ltd/a0;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    const-string v1, "Cancelled"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const-string v1, "Completed"

    .line 51
    .line 52
    :cond_5
    :goto_0
    return-object v1
.end method

.method public static synthetic H0(Ltd/z1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
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
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltd/z1;->G0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final I(Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ltd/z1$a;

    .line 2
    .line 3
    invoke-static {p1}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0}, Ltd/z1$a;-><init>(Lad/e;Ltd/z1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ltd/n;->E()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ltd/i2;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ltd/i2;-><init>(Ltd/n;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {p0, v4, v1, v2, v3}, Ltd/w1;->g(Ltd/t1;ZLtd/y1;ILjava/lang/Object;)Ltd/a1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Ltd/p;->a(Ltd/l;Ltd/a1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ltd/n;->x()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method

.method private final J0(Ltd/p1;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ltd/a2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Ltd/z1;->x0(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ltd/z1;->y0(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Ltd/z1;->R(Ltd/p1;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method private final K0(Ltd/p1;Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Ltd/z1;->c0(Ltd/p1;)Ltd/e2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v2, Ltd/z1$c;

    .line 10
    .line 11
    invoke-direct {v2, v0, v1, p2}, Ltd/z1$c;-><init>(Ltd/e2;ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3, p0, p1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    invoke-direct {p0, v0, p2}, Ltd/z1;->v0(Ltd/e2;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method private final L0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ltd/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    instance-of v0, p1, Ltd/c1;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Ltd/y1;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Ltd/t;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    instance-of v0, p2, Ltd/a0;

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    check-cast p1, Ltd/p1;

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Ltd/z1;->J0(Ltd/p1;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return-object p2

    .line 35
    :cond_2
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_3
    check-cast p1, Ltd/p1;

    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Ltd/z1;->M0(Ltd/p1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private final M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/p1;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    instance-of v1, v0, Ltd/z1$c;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Ltd/z1$c;

    .line 15
    .line 16
    invoke-virtual {v1}, Ltd/z1$c;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Ltd/a0;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ltd/z1;->T(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-direct {v1, v2, v5, v3, v4}, Ltd/a0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0, v1}, Ltd/z1;->L0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private final M0(Ltd/p1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Ltd/z1;->c0(Ltd/p1;)Ltd/e2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    instance-of v1, p1, Ltd/z1$c;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Ltd/z1$c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v1, v2

    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    new-instance v1, Ltd/z1$c;

    .line 26
    .line 27
    invoke-direct {v1, v0, v3, v2}, Ltd/z1$c;-><init>(Ltd/e2;ZLjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/c0;

    .line 31
    .line 32
    invoke-direct {v4}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 33
    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    invoke-virtual {v1}, Ltd/z1$c;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    .line 47
    return-object p1

    .line 48
    :cond_3
    const/4 v5, 0x1

    .line 49
    :try_start_1
    invoke-virtual {v1, v5}, Ltd/z1$c;->m(Z)V

    .line 50
    .line 51
    .line 52
    if-eq v1, p1, :cond_4

    .line 53
    .line 54
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v1

    .line 69
    return-object p1

    .line 70
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ltd/z1$c;->i()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    instance-of v6, p2, Ltd/a0;

    .line 75
    .line 76
    if-eqz v6, :cond_5

    .line 77
    .line 78
    move-object v6, p2

    .line 79
    check-cast v6, Ltd/a0;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    move-object v6, v2

    .line 83
    :goto_1
    if-eqz v6, :cond_6

    .line 84
    .line 85
    iget-object v6, v6, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Ltd/z1$c;->a(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-virtual {v1}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    move v3, v5

    .line 97
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_8

    .line 106
    .line 107
    move-object v2, v6

    .line 108
    :cond_8
    iput-object v2, v4, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 109
    .line 110
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    monitor-exit v1

    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    invoke-direct {p0, v0, v2}, Ltd/z1;->v0(Ltd/e2;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    invoke-direct {p0, v0}, Ltd/z1;->u0(Lyd/q;)Ltd/t;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_a

    .line 123
    .line 124
    invoke-direct {p0, v1, p1, p2}, Ltd/z1;->N0(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_a

    .line 129
    .line 130
    sget-object p1, Ltd/a2;->b:Lyd/f0;

    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_a
    const/4 p1, 0x2

    .line 134
    invoke-virtual {v0, p1}, Lyd/q;->f(I)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v0}, Ltd/z1;->u0(Lyd/q;)Ltd/t;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_b

    .line 142
    .line 143
    invoke-direct {p0, v1, p1, p2}, Ltd/z1;->N0(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_b

    .line 148
    .line 149
    sget-object p1, Ltd/a2;->b:Lyd/f0;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_b
    invoke-direct {p0, v1, p2}, Ltd/z1;->U(Ltd/z1$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    monitor-exit v1

    .line 159
    throw p1
.end method

.method private final N(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ltd/z1;->p0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    invoke-virtual {p0}, Ltd/z1;->f0()Ltd/s;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    sget-object v3, Ltd/f2;->a:Ltd/f2;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v2, p1}, Ltd/s;->a(Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :cond_3
    :goto_0
    return v1

    .line 33
    :cond_4
    :goto_1
    return v0
.end method

.method private final N0(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p2, Ltd/t;->e:Ltd/u;

    .line 2
    .line 3
    new-instance v1, Ltd/z1$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Ltd/z1$b;-><init>(Ltd/z1;Ltd/z1$c;Ltd/t;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1}, Ltd/w1;->f(Ltd/t1;ZLtd/y1;)Ltd/a1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ltd/f2;->a:Ltd/f2;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-direct {p0, p2}, Ltd/z1;->u0(Lyd/q;)Ltd/t;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    return v2
.end method

.method private final R(Ltd/p1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltd/z1;->f0()Ltd/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ltd/a1;->dispose()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Ltd/f2;->a:Ltd/f2;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ltd/z1;->D0(Ltd/s;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    instance-of v0, p2, Ltd/a0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p2, Ltd/a0;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p2, v1

    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v1, p2, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 27
    .line 28
    :cond_2
    instance-of p2, p1, Ltd/y1;

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    :try_start_0
    move-object p2, p1

    .line 33
    check-cast p2, Ltd/y1;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ltd/y1;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    new-instance v0, Ltd/b0;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Exception in completion handler "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " for "

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1, p2}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ltd/z1;->l0(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-interface {p1}, Ltd/p1;->b()Ltd/e2;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-direct {p0, p1, v1}, Ltd/z1;->w0(Ltd/e2;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    return-void
.end method

.method private final S(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Ltd/z1;->u0(Lyd/q;)Ltd/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p3}, Ltd/z1;->N0(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Ltd/z1$c;->b()Ltd/e2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1}, Lyd/q;->f(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p2}, Ltd/z1;->u0(Lyd/q;)Ltd/t;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1, p2, p3}, Ltd/z1;->N0(Ltd/z1$c;Ltd/t;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-direct {p0, p1, p3}, Ltd/z1;->U(Ltd/z1$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ltd/z1;->F(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final T(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    :goto_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    new-instance p1, Ltd/u1;

    .line 14
    .line 15
    invoke-static {p0}, Ltd/z1;->B(Ltd/z1;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v0, v1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Ltd/h2;

    .line 30
    .line 31
    invoke-interface {p1}, Ltd/h2;->W()Ljava/util/concurrent/CancellationException;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_2
    :goto_1
    return-object p1
.end method

.method private final U(Ltd/z1$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Ltd/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Ltd/a0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ltd/z1$c;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1, v0}, Ltd/z1$c;->l(Ljava/lang/Throwable;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {p0, p1, v3}, Ltd/z1;->Z(Ltd/z1$c;Ljava/util/List;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v4, v3}, Ltd/z1;->D(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_2
    monitor-exit p1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    if-ne v4, v0, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    new-instance p2, Ltd/a0;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-direct {p2, v4, v3, v0, v1}, Ltd/a0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    if-eqz v4, :cond_7

    .line 50
    .line 51
    invoke-direct {p0, v4}, Ltd/z1;->N(Ljava/lang/Throwable;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, v4}, Ltd/z1;->j0(Ljava/lang/Throwable;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    :cond_5
    const/4 v3, 0x1

    .line 64
    :cond_6
    if-eqz v3, :cond_7

    .line 65
    .line 66
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 67
    .line 68
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v0, p2

    .line 72
    check-cast v0, Ltd/a0;

    .line 73
    .line 74
    invoke-virtual {v0}, Ltd/a0;->c()Z

    .line 75
    .line 76
    .line 77
    :cond_7
    if-nez v2, :cond_8

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Ltd/z1;->x0(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :cond_8
    invoke-virtual {p0, p2}, Ltd/z1;->y0(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p2}, Ltd/a2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1, p2}, Ltd/z1;->R(Ltd/p1;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :catchall_0
    move-exception p2

    .line 101
    monitor-exit p1

    .line 102
    throw p2
.end method

.method private final Y(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Ltd/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ltd/a0;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    :cond_1
    return-object v1
.end method

.method private final Z(Ltd/z1$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ltd/z1$c;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ltd/u1;

    .line 15
    .line 16
    invoke-static {p0}, Ltd/z1;->B(Ltd/z1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2, v1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    return-object v1

    .line 25
    :cond_1
    move-object p1, p2

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v2, v0

    .line 43
    check-cast v2, Ljava/lang/Throwable;

    .line 44
    .line 45
    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    .line 46
    .line 47
    xor-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_4
    const/4 p1, 0x0

    .line 58
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    .line 63
    .line 64
    return-object p1
.end method

.method private final c0(Ltd/p1;)Ltd/e2;
    .locals 3

    .line 1
    invoke-interface {p1}, Ltd/p1;->b()Ltd/e2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p1, Ltd/c1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ltd/e2;

    .line 12
    .line 13
    invoke-direct {v0}, Ltd/e2;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Ltd/y1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Ltd/y1;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ltd/z1;->B0(Ltd/y1;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "State should have list: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static final synthetic h0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Ltd/z1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Ltd/z1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final q0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    instance-of v3, v2, Ltd/z1$c;

    .line 8
    .line 9
    if-eqz v3, :cond_7

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    move-object v3, v2

    .line 13
    check-cast v3, Ltd/z1$c;

    .line 14
    .line 15
    invoke-virtual {v3}, Ltd/z1$c;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-static {}, Ltd/a2;->f()Lyd/f0;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v2

    .line 26
    return-object p1

    .line 27
    :cond_1
    :try_start_1
    move-object v3, v2

    .line 28
    check-cast v3, Ltd/z1$c;

    .line 29
    .line 30
    invoke-virtual {v3}, Ltd/z1$c;->i()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    :cond_2
    if-nez v1, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ltd/z1;->T(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_3
    move-object p1, v2

    .line 45
    check-cast p1, Ltd/z1$c;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ltd/z1$c;->a(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    move-object p1, v2

    .line 51
    check-cast p1, Ltd/z1$c;

    .line 52
    .line 53
    invoke-virtual {p1}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    xor-int/lit8 v1, v3, 0x1

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    move-object v0, p1

    .line 62
    :cond_5
    monitor-exit v2

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast v2, Ltd/z1$c;

    .line 66
    .line 67
    invoke-virtual {v2}, Ltd/z1$c;->b()Ltd/e2;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1, v0}, Ltd/z1;->v0(Ltd/e2;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v2

    .line 81
    throw p1

    .line 82
    :cond_7
    instance-of v3, v2, Ltd/p1;

    .line 83
    .line 84
    if-eqz v3, :cond_b

    .line 85
    .line 86
    if-nez v1, :cond_8

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ltd/z1;->T(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_8
    move-object v3, v2

    .line 93
    check-cast v3, Ltd/p1;

    .line 94
    .line 95
    invoke-interface {v3}, Ltd/p1;->isActive()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_9

    .line 100
    .line 101
    invoke-direct {p0, v3, v1}, Ltd/z1;->K0(Ltd/p1;Ljava/lang/Throwable;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :cond_9
    new-instance v3, Ltd/a0;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x2

    .line 116
    invoke-direct {v3, v1, v4, v5, v0}, Ltd/a0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v2, v3}, Ltd/z1;->L0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eq v3, v4, :cond_a

    .line 128
    .line 129
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eq v3, v2, :cond_0

    .line 134
    .line 135
    return-object v3

    .line 136
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v1, "Cannot happen in "

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_b
    invoke-static {}, Ltd/a2;->f()Lyd/f0;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1
.end method

.method private final u0(Lyd/q;)Ltd/t;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Lyd/q;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lyd/q;->l()Lyd/q;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lyd/q;->k()Lyd/q;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lyd/q;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    instance-of v0, p1, Ltd/t;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Ltd/t;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    instance-of v0, p1, Ltd/e2;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private final v0(Ltd/e2;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Ltd/z1;->x0(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Lyd/q;->f(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lyd/q;->j()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lyd/q;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    instance-of v2, v0, Ltd/y1;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Ltd/y1;

    .line 32
    .line 33
    invoke-virtual {v2}, Ltd/y1;->u()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    :try_start_0
    move-object v2, v0

    .line 40
    check-cast v2, Ltd/y1;

    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ltd/y1;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-static {v1, v2}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    new-instance v1, Ltd/b0;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v4, "Exception in completion handler "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, " for "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v1, v3, v2}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 84
    .line 85
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lyd/q;->k()Lyd/q;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ltd/z1;->l0(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-direct {p0, p2}, Ltd/z1;->N(Ljava/lang/Throwable;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final w0(Ltd/e2;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lyd/q;->f(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lyd/q;->j()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lyd/q;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    instance-of v2, v0, Ltd/y1;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    check-cast v2, Ltd/y1;

    .line 29
    .line 30
    :try_start_0
    move-object v2, v0

    .line 31
    check-cast v2, Ltd/y1;

    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ltd/y1;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-static {v1, v2}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v1, Ltd/b0;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "Exception in completion handler "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, " for "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v1, v3, v2}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 75
    .line 76
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lyd/q;->k()Lyd/q;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ltd/z1;->l0(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method


# virtual methods
.method public final C0(Ltd/y1;)V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/y1;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v0, p1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Ltd/a2;->c()Ltd/c1;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    instance-of v1, v0, Ltd/p1;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    check-cast v0, Ltd/p1;

    .line 32
    .line 33
    invoke-interface {v0}, Ltd/p1;->b()Ltd/e2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lyd/q;->q()Z

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public final D0(Ltd/s;)V
    .locals 1

    .line 1
    invoke-static {}, Ltd/z1;->h0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected F(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final G(Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/p1;

    .line 6
    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    instance-of p1, v0, Ltd/a0;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Ltd/a2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_1
    check-cast v0, Ltd/a0;

    .line 19
    .line 20
    iget-object p1, v0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 21
    .line 22
    throw p1

    .line 23
    :cond_2
    invoke-direct {p0, v0}, Ltd/z1;->E0(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ltz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ltd/z1;->I(Lad/e;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method protected final G0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    new-instance v0, Ltd/u1;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Ltd/z1;->B(Ltd/z1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_1
    invoke-direct {v0, p2, p1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-object v0
.end method

.method public final I0()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltd/z1;->t0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Ltd/z1;->F0(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x7d

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final J(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->K(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final K(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ltd/z1;->b0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ltd/z1;->M(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ltd/a2;->b:Lyd/f0;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ltd/z1;->q0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object p1, Ltd/a2;->b:Lyd/f0;

    .line 39
    .line 40
    if-ne v0, p1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {}, Ltd/a2;->f()Lyd/f0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne v0, p1, :cond_4

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0, v0}, Ltd/z1;->F(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return v2
.end method

.method public L(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->K(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected O()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final P(Ltd/h2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->K(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ltd/z1;->K(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ltd/z1;->a0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method public final V()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/p1;

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    instance-of v1, v0, Ltd/a0;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Ltd/a2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    check-cast v0, Ltd/a0;

    .line 21
    .line 22
    iget-object v0, v0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "This job has not completed yet"

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public W()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/z1$c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Ltd/z1$c;

    .line 12
    .line 13
    invoke-virtual {v1}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v0, Ltd/a0;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Ltd/a0;

    .line 24
    .line 25
    iget-object v1, v1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v1, v0, Ltd/p1;

    .line 29
    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    move-object v1, v2

    .line 33
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 39
    .line 40
    :cond_2
    if-nez v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Ltd/u1;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "Parent job is "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Ltd/z1;->F0(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v0, v1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object v2

    .line 69
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "Cannot be cancelling child in this state: "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public final X()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ltd/p1;

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public a(Lad/i$c;)Lad/i$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltd/t1$a;->c(Ltd/t1;Lad/i$c;)Lad/i$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ltd/u1;

    .line 4
    .line 5
    invoke-static {p0}, Ltd/z1;->B(Ltd/z1;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v0, v1, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Ltd/z1;->L(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lad/i;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltd/t1$a;->e(Ltd/t1;Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e0()Ltd/t1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltd/z1;->f0()Ltd/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ltd/s;->getParent()Ltd/t1;

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
    return-object v0
.end method

.method public final f0()Ltd/s;
    .locals 1

    .line 1
    invoke-static {}, Ltd/z1;->h0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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
    check-cast v0, Ltd/s;

    .line 10
    .line 11
    return-object v0
.end method

.method public g(Lad/i$c;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltd/t1$a;->d(Ltd/t1;Lad/i$c;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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
    return-object v0
.end method

.method public final getKey()Lad/i$c;
    .locals 1

    .line 1
    sget-object v0, Ltd/t1;->t0:Ltd/t1$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/p1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ltd/p1;

    .line 10
    .line 11
    invoke-interface {v0}, Ltd/p1;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/a0;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Ltd/z1$c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ltd/z1$c;

    .line 14
    .line 15
    invoke-virtual {v0}, Ltd/z1$c;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method protected j0(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ltd/t1$a;->b(Ltd/t1;Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l0(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    throw p1
.end method

.method protected final m0(Ltd/t1;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ltd/z1;->D0(Ltd/s;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p1}, Ltd/t1;->start()Z

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0}, Ltd/t1;->x(Ltd/u;)Ltd/s;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ltd/z1;->D0(Ltd/s;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ltd/z1;->X()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ltd/a1;->dispose()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ltd/z1;->D0(Ltd/s;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final n0(ZLtd/y1;)Ltd/a1;
    .locals 5

    .line 1
    invoke-virtual {p2, p0}, Ltd/y1;->w(Ltd/z1;)V

    .line 2
    .line 3
    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Ltd/c1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Ltd/c1;

    .line 16
    .line 17
    invoke-virtual {v1}, Ltd/c1;->isActive()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, p0, v0, p2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_1
    invoke-direct {p0, v1}, Ltd/z1;->A0(Ltd/c1;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    instance-of v1, v0, Ltd/p1;

    .line 39
    .line 40
    if-eqz v1, :cond_9

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Ltd/p1;

    .line 44
    .line 45
    invoke-interface {v1}, Ltd/p1;->b()Ltd/e2;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Ltd/y1;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Ltd/z1;->B0(Ltd/y1;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p2}, Ltd/y1;->u()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_8

    .line 67
    .line 68
    instance-of v0, v1, Ltd/z1$c;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    check-cast v1, Ltd/z1$c;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object v1, v3

    .line 76
    :goto_1
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move-object v0, v3

    .line 84
    :goto_2
    if-nez v0, :cond_6

    .line 85
    .line 86
    const/4 v0, 0x5

    .line 87
    invoke-virtual {v4, p2, v0}, Lyd/q;->c(Lyd/q;I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    if-eqz p1, :cond_7

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ltd/y1;->v(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_7
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_8
    invoke-virtual {v4, p2, v2}, Lyd/q;->c(Lyd/q;I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    :goto_3
    if-eqz v0, :cond_0

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_9
    const/4 v2, 0x0

    .line 108
    :goto_4
    if-eqz v2, :cond_a

    .line 109
    .line 110
    return-object p2

    .line 111
    :cond_a
    if-eqz p1, :cond_d

    .line 112
    .line 113
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    instance-of v0, p1, Ltd/a0;

    .line 118
    .line 119
    if-eqz v0, :cond_b

    .line 120
    .line 121
    check-cast p1, Ltd/a0;

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_b
    move-object p1, v3

    .line 125
    :goto_5
    if-eqz p1, :cond_c

    .line 126
    .line 127
    iget-object v3, p1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 128
    .line 129
    :cond_c
    invoke-virtual {p2, v3}, Ltd/y1;->v(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_d
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 133
    .line 134
    return-object p1
.end method

.method public final o0(ZZLid/l;)Ltd/a1;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ltd/r1;

    .line 4
    .line 5
    invoke-direct {p1, p3}, Ltd/r1;-><init>(Lid/l;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ltd/s1;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ltd/s1;-><init>(Lid/l;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p2, p1}, Ltd/z1;->n0(ZLtd/y1;)Ltd/a1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected p0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Lid/l;)Ltd/a1;
    .locals 1

    .line 1
    new-instance v0, Ltd/s1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ltd/s1;-><init>(Lid/l;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Ltd/z1;->n0(ZLtd/y1;)Ltd/a1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final r0(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Ltd/z1;->L0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    sget-object v1, Ltd/a2;->b:Lyd/f0;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ltd/z1;->F(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v2
.end method

.method public final s0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Ltd/z1;->L0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ltd/a2;->a()Lyd/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ltd/a2;->b()Lyd/f0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Job "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " is already complete or completing, but is being completed with "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p0, p1}, Ltd/z1;->Y(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ltd/z1;->E0(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public t0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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
    invoke-virtual {p0}, Ltd/z1;->I0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ltd/p0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final u()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/z1$c;

    .line 6
    .line 7
    const-string v2, "Job is still new or active: "

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, Ltd/z1$c;

    .line 12
    .line 13
    invoke-virtual {v0}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " is cancelling"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, Ltd/z1;->G0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    instance-of v1, v0, Ltd/p1;

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    instance-of v1, v0, Ltd/a0;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    check-cast v0, Ltd/a0;

    .line 82
    .line 83
    iget-object v0, v0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-static {p0, v0, v2, v1, v2}, Ltd/z1;->H0(Ltd/z1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ltd/u1;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, " has completed normally"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v0, v1, v2, p0}, Ltd/u1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ltd/t1;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-object v0

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
.end method

.method public final x(Ltd/u;)Ltd/s;
    .locals 5

    .line 1
    new-instance v0, Ltd/t;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ltd/t;-><init>(Ltd/u;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ltd/y1;->w(Ltd/z1;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v1, p1, Ltd/c1;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Ltd/c1;

    .line 21
    .line 22
    invoke-virtual {v1}, Ltd/c1;->isActive()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-static {}, Ltd/z1;->i0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    invoke-direct {p0, v1}, Ltd/z1;->A0(Ltd/c1;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    instance-of v1, p1, Ltd/p1;

    .line 44
    .line 45
    if-eqz v1, :cond_9

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    check-cast v1, Ltd/p1;

    .line 49
    .line 50
    invoke-interface {v1}, Ltd/p1;->b()Ltd/e2;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 57
    .line 58
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast p1, Ltd/y1;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ltd/z1;->B0(Ltd/y1;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 p1, 0x7

    .line 68
    invoke-virtual {v1, v0, p1}, Lyd/q;->c(Lyd/q;I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    const/4 p1, 0x3

    .line 76
    invoke-virtual {v1, v0, p1}, Lyd/q;->c(Lyd/q;I)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    instance-of v4, v1, Ltd/z1$c;

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    check-cast v1, Ltd/z1$c;

    .line 89
    .line 90
    invoke-virtual {v1}, Ltd/z1$c;->e()Ljava/lang/Throwable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    instance-of v4, v1, Ltd/a0;

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    check-cast v1, Ltd/a0;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    move-object v1, v3

    .line 103
    :goto_1
    if-eqz v1, :cond_7

    .line 104
    .line 105
    iget-object v1, v1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    move-object v1, v3

    .line 109
    :goto_2
    invoke-virtual {v0, v1}, Ltd/t;->v(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_8
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_9
    const/4 v2, 0x0

    .line 119
    :goto_3
    if-eqz v2, :cond_a

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_a
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    instance-of v1, p1, Ltd/a0;

    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    check-cast p1, Ltd/a0;

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_b
    move-object p1, v3

    .line 134
    :goto_4
    if-eqz p1, :cond_c

    .line 135
    .line 136
    iget-object v3, p1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 137
    .line 138
    :cond_c
    invoke-virtual {v0, v3}, Ltd/t;->v(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Ltd/f2;->a:Ltd/f2;

    .line 142
    .line 143
    return-object p1
.end method

.method protected x0(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected y0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected z0()V
    .locals 0

    .line 1
    return-void
.end method
