.class public abstract Lxd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lxd/d;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final c()Lxd/d;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lxd/b;->a:[Lxd/d;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lxd/b;->e(I)[Lxd/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lxd/b;->a:[Lxd/d;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v2, p0, Lxd/b;->b:I

    .line 15
    .line 16
    array-length v3, v0

    .line 17
    if-lt v2, v3, :cond_1

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    mul-int/2addr v2, v1

    .line 21
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "copyOf(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, [Lxd/d;

    .line 32
    .line 33
    iput-object v1, p0, Lxd/b;->a:[Lxd/d;

    .line 34
    .line 35
    check-cast v0, [Lxd/d;

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget v1, p0, Lxd/b;->c:I

    .line 38
    .line 39
    :cond_2
    aget-object v2, v0, v1

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lxd/b;->d()Lxd/d;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v0, v1

    .line 48
    .line 49
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    array-length v3, v0

    .line 52
    if-lt v1, v3, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p0}, Lxd/d;->a(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    iput v1, p0, Lxd/b;->c:I

    .line 67
    .line 68
    iget v0, p0, Lxd/b;->b:I

    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    iput v0, p0, Lxd/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-object v2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p0

    .line 78
    throw v0
.end method

.method protected abstract d()Lxd/d;
.end method

.method protected abstract e(I)[Lxd/d;
.end method

.method protected final f(Lxd/d;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lxd/b;->b:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lxd/b;->b:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lxd/b;->c:I

    .line 12
    .line 13
    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lxd/d;->b(Ljava/lang/Object;)[Lad/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    array-length v0, p1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    aget-object v2, p1, v1

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    sget-object v3, Lxc/l;->b:Lxc/l$a;

    .line 31
    .line 32
    sget-object v3, Lxc/t;->a:Lxc/t;

    .line 33
    .line 34
    invoke-static {v3}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v3}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method protected final g()[Lxd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/b;->a:[Lxd/d;

    .line 2
    .line 3
    return-object v0
.end method
