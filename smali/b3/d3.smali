.class final Lb3/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/d3$a;,
        Lb3/d3$b;,
        Lb3/d3$c;,
        Lb3/d3$d;
    }
.end annotation


# instance fields
.field private final a:Lc3/t3;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/IdentityHashMap;

.field private final d:Ljava/util/Map;

.field private final e:Lb3/d3$d;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/Set;

.field private final h:Lc3/a;

.field private final i:Ly4/n;

.field private j:Ld4/o0;

.field private k:Z

.field private l:Lx4/m0;


# direct methods
.method public constructor <init>(Lb3/d3$d;Lc3/a;Ly4/n;Lc3/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lb3/d3;->a:Lc3/t3;

    .line 5
    .line 6
    iput-object p1, p0, Lb3/d3;->e:Lb3/d3$d;

    .line 7
    .line 8
    new-instance p1, Ld4/o0$a;

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    invoke-direct {p1, p4}, Ld4/o0$a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb3/d3;->j:Ld4/o0;

    .line 15
    .line 16
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lb3/d3;->c:Ljava/util/IdentityHashMap;

    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lb3/d3;->d:Ljava/util/Map;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lb3/d3;->b:Ljava/util/List;

    .line 36
    .line 37
    iput-object p2, p0, Lb3/d3;->h:Lc3/a;

    .line 38
    .line 39
    iput-object p3, p0, Lb3/d3;->i:Ly4/n;

    .line 40
    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 47
    .line 48
    new-instance p1, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 54
    .line 55
    return-void
.end method

.method private A(II)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    :goto_0
    if-lt p2, p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lb3/d3;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lb3/d3$c;

    .line 12
    .line 13
    iget-object v2, p0, Lb3/d3;->d:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v3, v1, Lb3/d3$c;->b:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lb3/d3$c;->a:Ld4/p;

    .line 21
    .line 22
    invoke-virtual {v2}, Ld4/p;->Z()Lb3/g4;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lb3/g4;->t()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    neg-int v2, v2

    .line 31
    invoke-direct {p0, p2, v2}, Lb3/d3;->g(II)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, v1, Lb3/d3$c;->e:Z

    .line 35
    .line 36
    iget-boolean v2, p0, Lb3/d3;->k:Z

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, v1}, Lb3/d3;->u(Lb3/d3$c;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public static synthetic a(Lb3/d3;Ld4/t;Lb3/g4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb3/d3;->t(Ld4/t;Lb3/g4;)V

    return-void
.end method

.method static synthetic b(Lb3/d3;)Ly4/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/d3;->i:Ly4/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lb3/d3$c;Ld4/t$b;)Ld4/t$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/d3;->n(Lb3/d3$c;Ld4/t$b;)Ld4/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lb3/d3$c;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/d3;->r(Lb3/d3$c;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Lb3/d3;)Lc3/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/d3;->h:Lc3/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lb3/d3$c;

    .line 16
    .line 17
    iget v1, v0, Lb3/d3$c;->d:I

    .line 18
    .line 19
    add-int/2addr v1, p2

    .line 20
    iput v1, v0, Lb3/d3$c;->d:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private j(Lb3/d3$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb3/d3$b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lb3/d3$b;->a:Ld4/t;

    .line 12
    .line 13
    iget-object p1, p1, Lb3/d3$b;->b:Ld4/t$c;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ld4/t;->p(Ld4/t$c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lb3/d3$c;

    .line 18
    .line 19
    iget-object v2, v1, Lb3/d3$c;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lb3/d3;->j(Lb3/d3$c;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private l(Lb3/d3$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lb3/d3$b;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p1, Lb3/d3$b;->a:Ld4/t;

    .line 17
    .line 18
    iget-object p1, p1, Lb3/d3$b;->b:Ld4/t$c;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ld4/t;->q(Ld4/t$c;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/a;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static n(Lb3/d3$c;Ld4/t$b;)Ld4/t$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lb3/d3$c;->c:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lb3/d3$c;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ld4/t$b;

    .line 17
    .line 18
    iget-wide v1, v1, Ld4/s;->d:J

    .line 19
    .line 20
    iget-wide v3, p1, Ld4/s;->d:J

    .line 21
    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p0, v0}, Lb3/d3;->p(Lb3/d3$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ld4/t$b;->c(Ljava/lang/Object;)Ld4/t$b;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lb3/a;->A(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static p(Lb3/d3$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb3/d3$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lb3/a;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static r(Lb3/d3$c;I)I
    .locals 0

    .line 1
    iget p0, p0, Lb3/d3$c;->d:I

    .line 2
    .line 3
    add-int/2addr p1, p0

    .line 4
    return p1
.end method

.method private synthetic t(Ld4/t;Lb3/g4;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb3/d3;->e:Lb3/d3$d;

    .line 2
    .line 3
    invoke-interface {p1}, Lb3/d3$d;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private u(Lb3/d3$c;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lb3/d3$c;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lb3/d3$c;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lb3/d3$b;

    .line 20
    .line 21
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lb3/d3$b;

    .line 26
    .line 27
    iget-object v1, v0, Lb3/d3$b;->a:Ld4/t;

    .line 28
    .line 29
    iget-object v2, v0, Lb3/d3$b;->b:Ld4/t$c;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ld4/t;->c(Ld4/t$c;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lb3/d3$b;->a:Ld4/t;

    .line 35
    .line 36
    iget-object v2, v0, Lb3/d3$b;->c:Lb3/d3$a;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ld4/t;->e(Ld4/a0;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lb3/d3$b;->a:Ld4/t;

    .line 42
    .line 43
    iget-object v0, v0, Lb3/d3$b;->c:Lb3/d3$a;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Ld4/t;->b(Lf3/u;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private w(Lb3/d3$c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lb3/d3$c;->a:Ld4/p;

    .line 2
    .line 3
    new-instance v1, Lb3/q2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lb3/q2;-><init>(Lb3/d3;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lb3/d3$a;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lb3/d3$a;-><init>(Lb3/d3;Lb3/d3$c;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v4, Lb3/d3$b;

    .line 16
    .line 17
    invoke-direct {v4, v0, v1, v2}, Lb3/d3$b;-><init>(Ld4/t;Ld4/t$c;Lb3/d3$a;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ly4/q0;->y()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1, v2}, Ld4/t;->i(Landroid/os/Handler;Ld4/a0;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ly4/q0;->y()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p1, v2}, Ld4/t;->a(Landroid/os/Handler;Lf3/u;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lb3/d3;->l:Lx4/m0;

    .line 38
    .line 39
    iget-object v2, p0, Lb3/d3;->a:Lc3/t3;

    .line 40
    .line 41
    invoke-interface {v0, v1, p1, v2}, Ld4/t;->r(Ld4/t$c;Lx4/m0;Lc3/t3;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public B(Ljava/util/List;Ld4/o0;)Lb3/g4;
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v1, v0}, Lb3/d3;->A(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0, p1, p2}, Lb3/d3;->f(ILjava/util/List;Ld4/o0;)Lb3/g4;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public C(Ld4/o0;)Lb3/g4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb3/d3;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ld4/o0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ld4/o0;->i()Ld4/o0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, v1, v0}, Ld4/o0;->g(II)Ld4/o0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    iput-object p1, p0, Lb3/d3;->j:Ld4/o0;

    .line 21
    .line 22
    invoke-virtual {p0}, Lb3/d3;->i()Lb3/g4;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public f(ILjava/util/List;Ld4/o0;)Lb3/g4;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iput-object p3, p0, Lb3/d3;->j:Ld4/o0;

    .line 8
    .line 9
    move p3, p1

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, p1

    .line 15
    if-ge p3, v0, :cond_3

    .line 16
    .line 17
    sub-int v0, p3, p1

    .line 18
    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lb3/d3$c;

    .line 24
    .line 25
    if-lez p3, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lb3/d3;->b:Ljava/util/List;

    .line 28
    .line 29
    add-int/lit8 v2, p3, -0x1

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lb3/d3$c;

    .line 36
    .line 37
    iget-object v2, v1, Lb3/d3$c;->a:Ld4/p;

    .line 38
    .line 39
    invoke-virtual {v2}, Ld4/p;->Z()Lb3/g4;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v1, v1, Lb3/d3$c;->d:I

    .line 44
    .line 45
    invoke-virtual {v2}, Lb3/g4;->t()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v1, v2

    .line 50
    invoke-virtual {v0, v1}, Lb3/d3$c;->c(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lb3/d3$c;->c(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object v1, v0, Lb3/d3$c;->a:Ld4/p;

    .line 59
    .line 60
    invoke-virtual {v1}, Ld4/p;->Z()Lb3/g4;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lb3/g4;->t()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-direct {p0, p3, v1}, Lb3/d3;->g(II)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lb3/d3;->b:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lb3/d3;->d:Ljava/util/Map;

    .line 77
    .line 78
    iget-object v2, v0, Lb3/d3$c;->b:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-boolean v1, p0, Lb3/d3;->k:Z

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lb3/d3;->w(Lb3/d3$c;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lb3/d3;->c:Ljava/util/IdentityHashMap;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    iget-object v1, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    invoke-direct {p0, v0}, Lb3/d3;->j(Lb3/d3$c;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lb3/d3;->i()Lb3/g4;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method

.method public h(Ld4/t$b;Lx4/b;J)Ld4/r;
    .locals 2

    .line 1
    iget-object v0, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/d3;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1}, Lb3/d3;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Ld4/t$b;->c(Ljava/lang/Object;)Ld4/t$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lb3/d3;->d:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lb3/d3$c;

    .line 24
    .line 25
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lb3/d3$c;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lb3/d3;->l(Lb3/d3$c;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lb3/d3$c;->c:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lb3/d3$c;->a:Ld4/p;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p2, p3, p4}, Ld4/p;->W(Ld4/t$b;Lx4/b;J)Ld4/o;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Lb3/d3;->c:Ljava/util/IdentityHashMap;

    .line 46
    .line 47
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lb3/d3;->k()V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public i()Lb3/g4;
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lb3/g4;->a:Lb3/g4;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lb3/d3;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lb3/d3;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lb3/d3$c;

    .line 29
    .line 30
    iput v1, v2, Lb3/d3$c;->d:I

    .line 31
    .line 32
    iget-object v2, v2, Lb3/d3$c;->a:Ld4/p;

    .line 33
    .line 34
    invoke-virtual {v2}, Ld4/p;->Z()Lb3/g4;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lb3/g4;->t()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/2addr v1, v2

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lb3/q3;

    .line 47
    .line 48
    iget-object v1, p0, Lb3/d3;->b:Ljava/util/List;

    .line 49
    .line 50
    iget-object v2, p0, Lb3/d3;->j:Ld4/o0;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lb3/q3;-><init>(Ljava/util/Collection;Ld4/o0;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb3/d3;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public v(Lx4/m0;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb3/d3;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lb3/d3;->l:Lx4/m0;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge p1, v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lb3/d3;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lb3/d3$c;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lb3/d3;->w(Lb3/d3$c;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-boolean v1, p0, Lb3/d3;->k:Z

    .line 39
    .line 40
    return-void
.end method

.method public x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lb3/d3$b;

    .line 22
    .line 23
    :try_start_0
    iget-object v2, v1, Lb3/d3$b;->a:Ld4/t;

    .line 24
    .line 25
    iget-object v3, v1, Lb3/d3$b;->b:Ld4/t$c;

    .line 26
    .line 27
    invoke-interface {v2, v3}, Ld4/t;->c(Ld4/t$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v2

    .line 32
    const-string v3, "MediaSourceList"

    .line 33
    .line 34
    const-string v4, "Failed to release child source."

    .line 35
    .line 36
    invoke-static {v3, v4, v2}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v2, v1, Lb3/d3$b;->a:Ld4/t;

    .line 40
    .line 41
    iget-object v3, v1, Lb3/d3$b;->c:Lb3/d3$a;

    .line 42
    .line 43
    invoke-interface {v2, v3}, Ld4/t;->e(Ld4/a0;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lb3/d3$b;->a:Ld4/t;

    .line 47
    .line 48
    iget-object v1, v1, Lb3/d3$b;->c:Lb3/d3$a;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ld4/t;->b(Lf3/u;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lb3/d3;->f:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lb3/d3;->g:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lb3/d3;->k:Z

    .line 66
    .line 67
    return-void
.end method

.method public y(Ld4/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/d3;->c:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lb3/d3$c;

    .line 8
    .line 9
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lb3/d3$c;

    .line 14
    .line 15
    iget-object v1, v0, Lb3/d3$c;->a:Ld4/p;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ld4/p;->g(Ld4/r;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lb3/d3$c;->c:Ljava/util/List;

    .line 21
    .line 22
    check-cast p1, Ld4/o;

    .line 23
    .line 24
    iget-object p1, p1, Ld4/o;->a:Ld4/t$b;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lb3/d3;->c:Ljava/util/IdentityHashMap;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lb3/d3;->k()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lb3/d3;->u(Lb3/d3$c;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public z(IILd4/o0;)Lb3/g4;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-gt p1, p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lb3/d3;->q()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lb3/d3;->j:Ld4/o0;

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lb3/d3;->A(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lb3/d3;->i()Lb3/g4;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
