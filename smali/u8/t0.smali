.class public final Lu8/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/t0$b;,
        Lu8/t0$c;
    }
.end annotation


# instance fields
.field private final b:Lx8/j;

.field private final c:Lu8/n0;

.field private final d:Lu8/k0;

.field private final e:Lu8/w0;

.field private final f:Lj0/i;

.field private final g:Lu8/w;

.field private final h:Lad/i;

.field public i:Lu8/e0;

.field private j:Z

.field private k:Lu8/t0$b;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx8/j;Lu8/n0;Lu8/k0;Lu8/w0;Lj0/i;Lu8/w;Lad/i;)V
    .locals 1

    .line 1
    const-string v0, "sessionsSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionGenerator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionFirelogPublisher"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "timeProvider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sessionDataStore"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "processDataManager"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "backgroundDispatcher"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lu8/t0;->b:Lx8/j;

    .line 40
    .line 41
    iput-object p2, p0, Lu8/t0;->c:Lu8/n0;

    .line 42
    .line 43
    iput-object p3, p0, Lu8/t0;->d:Lu8/k0;

    .line 44
    .line 45
    iput-object p4, p0, Lu8/t0;->e:Lu8/w0;

    .line 46
    .line 47
    iput-object p5, p0, Lu8/t0;->f:Lj0/i;

    .line 48
    .line 49
    iput-object p6, p0, Lu8/t0;->g:Lu8/w;

    .line 50
    .line 51
    iput-object p7, p0, Lu8/t0;->h:Lad/i;

    .line 52
    .line 53
    sget-object p1, Lu8/t0$b;->a:Lu8/t0$b;

    .line 54
    .line 55
    iput-object p1, p0, Lu8/t0;->k:Lu8/t0$b;

    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    iput-object p1, p0, Lu8/t0;->l:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p7}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/4 p3, 0x0

    .line 66
    const/4 p4, 0x0

    .line 67
    new-instance p5, Lu8/t0$a;

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-direct {p5, p0, p1}, Lu8/t0$a;-><init>(Lu8/t0;Lad/e;)V

    .line 71
    .line 72
    .line 73
    const/4 p6, 0x3

    .line 74
    const/4 p7, 0x0

    .line 75
    invoke-static/range {p2 .. p7}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static final synthetic d(Lu8/t0;)Lu8/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/t0;->g:Lu8/w;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lu8/t0;)Lj0/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/t0;->f:Lj0/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lu8/t0;)Lu8/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/t0;->d:Lu8/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lu8/t0;)Lu8/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/t0;->c:Lu8/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lu8/t0;)Lu8/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/t0;->e:Lu8/w0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lu8/t0;Lu8/e0;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/t0;->n(Lu8/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j(Lu8/t0;Lu8/e0;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/t0;->o(Lu8/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Lu8/t0;Lu8/e0;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu8/t0;->p(Lu8/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Lu8/t0;Ljava/lang/String;Lu8/t0$b;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lu8/t0;->q(Ljava/lang/String;Lu8/t0$b;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n(Lu8/e0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lu8/e0;->e()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "FirebaseSessions"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lu8/t0;->g:Lu8/w;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lu8/w;->b(Ljava/util/Map;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string v1, "Cold app start detected"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    return p1

    .line 23
    :cond_1
    const-string p1, "No process data map"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method private final o(Lu8/e0;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu8/e0;->e()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "FirebaseSessions"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lu8/t0;->g:Lu8/w;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lu8/w;->d(Ljava/util/Map;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "Process "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lu8/t0;->g:Lu8/w;

    .line 28
    .line 29
    invoke-interface {v2}, Lu8/w;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " is stale"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    return p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "No process data for "

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lu8/t0;->g:Lu8/w;

    .line 60
    .line 61
    invoke-interface {v1}, Lu8/w;->c()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    return p1
.end method

.method private final p(Lu8/e0;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lu8/e0;->d()Lu8/v0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Session "

    .line 7
    .line 8
    const-string v3, "FirebaseSessions"

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lu8/t0;->e:Lu8/w0;

    .line 13
    .line 14
    invoke-interface {v4}, Lu8/w0;->a()Lu8/v0;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, v0}, Lu8/v0;->c(Lu8/v0;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    iget-object v0, p0, Lu8/t0;->b:Lx8/j;

    .line 23
    .line 24
    invoke-virtual {v0}, Lx8/j;->b()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-static {v4, v5, v6, v7}, Lsd/a;->i(JJ)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lu8/e0;->f()Lu8/h0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lu8/h0;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " is expired"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    return v1

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lu8/e0;->f()Lu8/h0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lu8/h0;->b()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " has not backgrounded yet"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method private final q(Ljava/lang/String;Lu8/t0$b;Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lu8/t0$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lu8/t0$f;

    .line 7
    .line 8
    iget v1, v0, Lu8/t0$f;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lu8/t0$f;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lu8/t0$f;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lu8/t0$f;-><init>(Lu8/t0;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lu8/t0$f;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lu8/t0$f;->e:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lu8/t0$f;->b:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Lu8/t0$b;

    .line 42
    .line 43
    iget-object p1, v0, Lu8/t0$f;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lu8/t0;->k:Lu8/t0$b;

    .line 63
    .line 64
    iget-object p3, p0, Lu8/t0;->l:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p3, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    iput-object p1, p0, Lu8/t0;->l:Ljava/lang/String;

    .line 76
    .line 77
    sget-object p3, Lv8/b;->a:Lv8/b;

    .line 78
    .line 79
    iput-object p1, v0, Lu8/t0$f;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p2, v0, Lu8/t0$f;->b:Ljava/lang/Object;

    .line 82
    .line 83
    iput v3, v0, Lu8/t0$f;->e:I

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Lv8/b;->c(Lad/e;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    if-ne p3, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Ljava/lang/Iterable;

    .line 99
    .line 100
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lv8/c;

    .line 115
    .line 116
    new-instance v1, Lv8/c$b;

    .line 117
    .line 118
    invoke-direct {v1, p1}, Lv8/c$b;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v1}, Lv8/c;->c(Lv8/c$b;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lu8/t0$c;->a:[I

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    aget v1, v1, v2

    .line 131
    .line 132
    const-string v2, "Notified "

    .line 133
    .line 134
    if-eq v1, v3, :cond_6

    .line 135
    .line 136
    const/4 v4, 0x2

    .line 137
    if-ne v1, v4, :cond_5

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-interface {v0}, Lv8/c;->b()Lv8/c$a;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v0, " of new fallback session "

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    new-instance p1, Lxc/i;

    .line 168
    .line 169
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Lv8/c;->b()Lv8/c$a;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, " of new session "

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :goto_3
    const-string v1, "FirebaseSessions"

    .line 201
    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 207
    .line 208
    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu8/t0;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu8/t0;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lu8/t0;->i:Lu8/e0;

    .line 5
    .line 6
    const-string v1, "FirebaseSessions"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "App backgrounded, but local SessionData not initialized"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "App backgrounded on "

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lu8/t0;->g:Lu8/w;

    .line 27
    .line 28
    invoke-interface {v2}, Lu8/w;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lu8/t0;->h:Lad/i;

    .line 43
    .line 44
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    new-instance v4, Lu8/t0$d;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {v4, p0, v0}, Lu8/t0$d;-><init>(Lu8/t0;Lad/e;)V

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public c()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu8/t0;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lu8/t0;->i:Lu8/e0;

    .line 5
    .line 6
    const-string v1, "FirebaseSessions"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "App foregrounded, but local SessionData not initialized"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lu8/t0;->m()Lu8/e0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "App foregrounded on "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lu8/t0;->g:Lu8/w;

    .line 31
    .line 32
    invoke-interface {v3}, Lu8/w;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lu8/t0;->p(Lu8/e0;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lu8/t0;->o(Lu8/e0;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Lu8/t0;->h:Lad/i;

    .line 59
    .line 60
    invoke-static {v1}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    new-instance v5, Lu8/t0$e;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {v5, p0, v0, v1}, Lu8/t0$e;-><init>(Lu8/t0;Lu8/e0;Lad/e;)V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x3

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-static/range {v2 .. v7}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final m()Lu8/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/t0;->i:Lu8/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "localSessionData"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final r(Lu8/e0;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lu8/t0;->i:Lu8/e0;

    .line 7
    .line 8
    return-void
.end method
