.class public final Lu8/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/w;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lxc/d;

.field private final c:I

.field private final d:Lxc/d;

.field private final e:Lxc/d;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu8/y0;)V
    .locals 1

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uuidGenerator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lu8/a0;->a:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Lu8/x;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lu8/x;-><init>(Lu8/a0;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lu8/a0;->b:Lxc/d;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lu8/a0;->c:I

    .line 32
    .line 33
    new-instance p1, Lu8/y;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lu8/y;-><init>(Lu8/y0;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lu8/a0;->d:Lxc/d;

    .line 43
    .line 44
    new-instance p1, Lu8/z;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lu8/z;-><init>(Lu8/a0;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lu8/a0;->e:Lxc/d;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic g(Lu8/y0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lu8/a0;->q(Lu8/y0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lu8/a0;)Lu8/c0;
    .locals 0

    .line 1
    invoke-static {p0}, Lu8/a0;->o(Lu8/a0;)Lu8/c0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lu8/a0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lu8/a0;->p(Lu8/a0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final j()Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lu8/d0;->a:Lu8/d0;

    .line 2
    .line 3
    iget-object v1, p0, Lu8/a0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lu8/d0;->a(Landroid/content/Context;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final l()Lu8/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/a0;->e:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu8/c0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n(Lu8/c0;Lu8/v;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu8/a0;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lu8/c0;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lu8/c0;->b()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p2}, Lu8/v;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lu8/a0;->m()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2}, Lu8/v;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lu8/c0;->b()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2}, Lu8/v;->a()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eq p1, p2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    :cond_2
    :goto_0
    return v1
.end method

.method private static final o(Lu8/a0;)Lu8/c0;
    .locals 1

    .line 1
    sget-object v0, Lu8/d0;->a:Lu8/d0;

    .line 2
    .line 3
    iget-object p0, p0, Lu8/a0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lu8/d0;->b(Landroid/content/Context;)Lu8/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static final p(Lu8/a0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lu8/a0;->l()Lu8/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lu8/c0;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static final q(Lu8/y0;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lu8/y0;->next()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "toString(...)"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu8/a0;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/util/Map;)Z
    .locals 6

    .line 1
    const-string v0, "processDataMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lu8/a0;->f:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-direct {p0}, Lu8/a0;->j()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lu8/c0;

    .line 38
    .line 39
    invoke-virtual {v3}, Lu8/c0;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lu8/v;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    new-instance v5, Lxc/k;

    .line 52
    .line 53
    invoke-direct {v5, v3, v4}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v5, 0x0

    .line 58
    :goto_1
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v0, 0x1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    :cond_4
    move v1, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lxc/k;

    .line 88
    .line 89
    invoke-virtual {v2}, Lxc/k;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lu8/c0;

    .line 94
    .line 95
    invoke-virtual {v2}, Lxc/k;->b()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lu8/v;

    .line 100
    .line 101
    invoke-direct {p0, v3, v2}, Lu8/a0;->n(Lu8/c0;Lu8/v;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    :goto_2
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/a0;->b:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public d(Ljava/util/Map;)Z
    .locals 3

    .line 1
    const-string v0, "processDataMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu8/a0;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lu8/v;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lu8/v;->a()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lu8/a0;->k()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lu8/v;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lu8/a0;->m()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :cond_2
    :goto_0
    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0}, Lu8/w$a;->a(Lu8/w;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu8/a0;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lu8/v;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Lu8/a0;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v2, v3}, Lu8/v;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lyc/e0;->q(Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lu8/a0;->c()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lu8/v;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p0}, Lu8/a0;->m()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v0, v1, v2}, Lu8/v;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    return-object p1
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lu8/a0;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/a0;->d:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method
