.class public final Lrf/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf/s$a;
    }
.end annotation


# instance fields
.field private final a:Lqf/d;

.field private final b:Lqf/f;

.field private c:Lqf/a;

.field private final d:Lrf/n;

.field private e:Lrf/l;

.field private f:Lsf/c;

.field private g:F

.field private h:F

.field private i:F

.field private j:Lqf/h;

.field private k:Lqf/g;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private final p:Lrf/a;


# direct methods
.method public constructor <init>(Lqf/d;Lqf/f;Lqf/a;Lrf/n;)V
    .locals 1

    .line 1
    const-string v0, "ref"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "soundPoolManager"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lrf/s;->a:Lqf/d;

    .line 25
    .line 26
    iput-object p2, p0, Lrf/s;->b:Lqf/f;

    .line 27
    .line 28
    iput-object p3, p0, Lrf/s;->c:Lqf/a;

    .line 29
    .line 30
    iput-object p4, p0, Lrf/s;->d:Lrf/n;

    .line 31
    .line 32
    const/high16 p1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iput p1, p0, Lrf/s;->g:F

    .line 35
    .line 36
    iput p1, p0, Lrf/s;->i:F

    .line 37
    .line 38
    sget-object p1, Lqf/h;->a:Lqf/h;

    .line 39
    .line 40
    iput-object p1, p0, Lrf/s;->j:Lqf/h;

    .line 41
    .line 42
    sget-object p1, Lqf/g;->a:Lqf/g;

    .line 43
    .line 44
    iput-object p1, p0, Lrf/s;->k:Lqf/g;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lrf/s;->l:Z

    .line 48
    .line 49
    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lrf/s;->o:I

    .line 51
    .line 52
    sget-object p1, Lrf/a;->a:Lrf/a$a;

    .line 53
    .line 54
    new-instance p2, Lrf/q;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lrf/q;-><init>(Lrf/s;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lrf/r;

    .line 60
    .line 61
    invoke-direct {p3, p0}, Lrf/r;-><init>(Lrf/s;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0, p2, p3}, Lrf/a$a;->a(Lrf/s;Lid/a;Lid/l;)Lrf/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lrf/s;->p:Lrf/a;

    .line 69
    .line 70
    return-void
.end method

.method private final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->p:Lrf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/a;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final O(Lrf/l;FF)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float v1, v0, p3

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-float/2addr v1, p2

    .line 10
    add-float/2addr p3, v0

    .line 11
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    mul-float/2addr p3, p2

    .line 16
    invoke-interface {p1, v1, p3}, Lrf/l;->h(FF)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lrf/s;Z)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrf/s;->g(Lrf/s;Z)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lrf/s;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrf/s;->f(Lrf/s;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lrf/l;)V
    .locals 2

    .line 1
    iget v0, p0, Lrf/s;->g:F

    .line 2
    .line 3
    iget v1, p0, Lrf/s;->h:F

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lrf/s;->O(Lrf/l;FF)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrf/s;->v()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-interface {p1, v0}, Lrf/l;->c(Z)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lrf/l;->b()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final d()Lrf/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/s;->k:Lqf/g;

    .line 2
    .line 3
    sget-object v1, Lrf/s$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lrf/o;

    .line 18
    .line 19
    iget-object v1, p0, Lrf/s;->d:Lrf/n;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lrf/o;-><init>(Lrf/s;Lrf/n;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lxc/i;

    .line 26
    .line 27
    invoke-direct {v0}, Lxc/i;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Lrf/i;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lrf/i;-><init>(Lrf/s;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method private static final f(Lrf/s;)Lxc/t;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lrf/s;->e:Lrf/l;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lrf/l;->start()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final g(Lrf/s;Z)Lxc/t;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lrf/s;->e:Lrf/l;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Lrf/l;->pause()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lrf/s;->C()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 15
    .line 16
    return-object p0
.end method

.method private final n()Lrf/l;
    .locals 3

    .line 1
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 2
    .line 3
    iget-boolean v1, p0, Lrf/s;->l:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, p0, Lrf/s;->m:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Lrf/l;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lrf/s;->J(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-direct {p0}, Lrf/s;->d()Lrf/l;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 27
    .line 28
    iput-boolean v2, p0, Lrf/s;->l:Z

    .line 29
    .line 30
    :cond_2
    :goto_1
    return-object v0
.end method

.method private final u()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lrf/s;->d()Lrf/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 6
    .line 7
    iget-object v1, p0, Lrf/s;->f:Lsf/c;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lrf/l;->d(Lsf/c;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lrf/s;->c(Lrf/l;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final w()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 3
    .line 4
    iget-object v1, p0, Lrf/s;->e:Lrf/l;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lrf/l;->f()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 26
    :goto_2
    if-nez v2, :cond_3

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move-object v1, v0

    .line 30
    :goto_3
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_4

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    sget-object v2, Lxc/l;->b:Lxc/l$a;

    .line 37
    .line 38
    invoke-static {v1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_4
    invoke-static {v1}, Lxc/l;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_4
    move-object v0, v1

    .line 54
    :goto_5
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_6

    .line 63
    :cond_5
    const/4 v0, -0x1

    .line 64
    :goto_6
    return v0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lrf/s;->J(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lrf/s;->a:Lqf/d;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lqf/d;->j(Lrf/s;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lrf/s;->n:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lrf/s;->F()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lrf/s;->o:I

    .line 18
    .line 19
    if-ltz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lrf/s;->e:Lrf/l;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Lrf/l;->i()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lrf/s;->o:I

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lrf/l;->e(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lqf/d;->p(Lrf/s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lrf/s;->n:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lrf/l;->pause()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lrf/s;->l:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lrf/s;->n:Z

    .line 11
    .line 12
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lrf/s;->u()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lrf/s;->F()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->p:Lrf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/a;->g()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lrf/s;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lrf/l;->stop()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lrf/s;->M(Lsf/c;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 27
    .line 28
    return-void
.end method

.method public final G(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lrf/l;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    if-nez v1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lrf/l;->e(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, -0x1

    .line 28
    :cond_2
    iput p1, p0, Lrf/s;->o:I

    .line 29
    .line 30
    return-void
.end method

.method public final H(F)V
    .locals 2

    .line 1
    iget v0, p0, Lrf/s;->h:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput p1, p0, Lrf/s;->h:F

    .line 13
    .line 14
    iget-boolean v0, p0, Lrf/s;->l:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lrf/s;->g:F

    .line 23
    .line 24
    invoke-direct {p0, v0, v1, p1}, Lrf/s;->O(Lrf/l;FF)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final I(Lqf/g;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->k:Lqf/g;

    .line 7
    .line 8
    if-eq v0, p1, :cond_1

    .line 9
    .line 10
    iput-object p1, p0, Lrf/s;->k:Lqf/g;

    .line 11
    .line 12
    iget-object p1, p0, Lrf/s;->e:Lrf/l;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lrf/s;->w()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lrf/s;->o:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lrf/s;->J(Z)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lrf/l;->release()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lrf/s;->u()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final J(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lrf/s;->m:Z

    .line 6
    .line 7
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Lqf/d;->o(Lrf/s;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final K(F)V
    .locals 1

    .line 1
    iget v0, p0, Lrf/s;->i:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput p1, p0, Lrf/s;->i:F

    .line 13
    .line 14
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lrf/l;->j(F)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final L(Lqf/h;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->j:Lqf/h;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lrf/s;->j:Lqf/h;

    .line 11
    .line 12
    iget-boolean p1, p0, Lrf/s;->l:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lrf/s;->e:Lrf/l;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lrf/s;->v()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {p1, v0}, Lrf/l;->c(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final M(Lsf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/s;->f:Lsf/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lrf/s;->n()Lrf/l;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Lrf/l;->d(Lsf/c;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lrf/s;->c(Lrf/l;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v1, p0, Lrf/s;->l:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lrf/s;->J(Z)V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lrf/s;->n:Z

    .line 30
    .line 31
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lrf/l;->release()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iput-object p1, p0, Lrf/s;->f:Lsf/c;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lrf/s;->a:Lqf/d;

    .line 42
    .line 43
    invoke-virtual {p1, p0, v1}, Lqf/d;->o(Lrf/s;Z)V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public final N(F)V
    .locals 2

    .line 1
    iget v0, p0, Lrf/s;->g:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput p1, p0, Lrf/s;->g:F

    .line 13
    .line 14
    iget-boolean v0, p0, Lrf/s;->l:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lrf/s;->h:F

    .line 23
    .line 24
    invoke-direct {p0, v0, p1, v1}, Lrf/s;->O(Lrf/l;FF)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrf/s;->p:Lrf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/a;->g()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lrf/s;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lrf/s;->j:Lqf/h;

    .line 12
    .line 13
    sget-object v1, Lqf/h;->a:Lqf/h;

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0}, Lrf/s;->C()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lrf/l;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v1

    .line 38
    :goto_0
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Lrf/l;->stop()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0, v1}, Lrf/s;->J(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-interface {v0}, Lrf/l;->b()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p0, v1}, Lrf/s;->G(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p0}, Lrf/s;->E()V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_1
    return-void
.end method

.method public final Q(Lqf/a;)V
    .locals 10

    .line 1
    const-string v0, "audioContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lqf/a;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lqf/a;->d()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lrf/s;->p:Lrf/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lrf/a;->g()V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/16 v8, 0x3f

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    move-object v1, p1

    .line 44
    invoke-static/range {v1 .. v9}, Lqf/a;->c(Lqf/a;ZZIIIIILjava/lang/Object;)Lqf/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lrf/s;->c:Lqf/a;

    .line 49
    .line 50
    invoke-virtual {p0}, Lrf/s;->i()Landroid/media/AudioManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 55
    .line 56
    invoke-virtual {v0}, Lqf/a;->e()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lrf/s;->i()Landroid/media/AudioManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 68
    .line 69
    invoke-virtual {v0}, Lqf/a;->g()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lrf/s;->e:Lrf/l;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-interface {p1}, Lrf/l;->stop()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lrf/s;->J(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Lrf/l;->g(Lqf/a;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lrf/s;->f:Lsf/c;

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-interface {p1, v0}, Lrf/l;->d(Lsf/c;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Lrf/s;->c(Lrf/l;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrf/s;->E()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrf/s;->b:Lqf/f;

    .line 5
    .line 6
    invoke-virtual {v0}, Lqf/f;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqf/d;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final i()Landroid/media/AudioManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqf/d;->f()Landroid/media/AudioManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final j()Lqf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->c:Lqf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lrf/l;->f()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    return-object v1
.end method

.method public final l()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->e:Lrf/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lrf/l;->getDuration()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    return-object v1
.end method

.method public final m()Lqf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->b:Lqf/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()F
    .locals 1

    .line 1
    iget v0, p0, Lrf/s;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public final r()F
    .locals 1

    .line 1
    iget v0, p0, Lrf/s;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lqf/d;->k(Lrf/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Lqf/d;->n(Lrf/s;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/s;->j:Lqf/h;

    .line 2
    .line 3
    sget-object v1, Lqf/h;->b:Lqf/h;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final x(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf/s;->j:Lqf/h;

    .line 2
    .line 3
    sget-object v1, Lqf/h;->b:Lqf/h;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lrf/s;->P()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lrf/s;->a:Lqf/d;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lqf/d;->i(Lrf/s;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z(II)Z
    .locals 4

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/16 v1, 0x7d

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const-string p1, "MEDIA_ERROR_SERVER_DIED"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "MEDIA_ERROR_UNKNOWN {what:"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    const-string v2, "MEDIA_ERROR_SYSTEM"

    .line 33
    .line 34
    if-eq p2, v0, :cond_5

    .line 35
    .line 36
    const/16 v0, -0x3f2

    .line 37
    .line 38
    if-eq p2, v0, :cond_4

    .line 39
    .line 40
    const/16 v0, -0x3ef

    .line 41
    .line 42
    if-eq p2, v0, :cond_3

    .line 43
    .line 44
    const/16 v0, -0x3ec

    .line 45
    .line 46
    if-eq p2, v0, :cond_2

    .line 47
    .line 48
    const/16 v0, -0x6e

    .line 49
    .line 50
    if-eq p2, v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "MEDIA_ERROR_UNKNOWN {extra:"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string p2, "MEDIA_ERROR_TIMED_OUT"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string p2, "MEDIA_ERROR_IO"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string p2, "MEDIA_ERROR_MALFORMED"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string p2, "MEDIA_ERROR_UNSUPPORTED"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move-object p2, v2

    .line 86
    :goto_1
    iget-boolean v0, p0, Lrf/s;->m:Z

    .line 87
    .line 88
    const-string v1, "AndroidAudioError"

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    invoke-static {p2, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ", "

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p2, "Failed to set source. For troubleshooting, see: https://github.com/bluefireteam/audioplayers/blob/main/troubleshooting.md"

    .line 120
    .line 121
    invoke-virtual {p0, v1, p2, p1}, Lrf/s;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p0, v3}, Lrf/s;->J(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1, p1, p2}, Lrf/s;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    return v3
.end method
