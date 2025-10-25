.class final Ld4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/r;
.implements Lg3/m;
.implements Lx4/e0$b;
.implements Lx4/e0$f;
.implements Ld4/l0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/g0$d;,
        Ld4/g0$e;,
        Ld4/g0$a;,
        Ld4/g0$c;,
        Ld4/g0$b;
    }
.end annotation


# static fields
.field private static final M:Ljava/util/Map;

.field private static final N:Lb3/x1;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:J

.field private H:J

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lx4/j;

.field private final c:Lf3/v;

.field private final d:Lx4/d0;

.field private final e:Ld4/a0$a;

.field private final f:Lf3/u$a;

.field private final g:Ld4/g0$b;

.field private final h:Lx4/b;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:Lx4/e0;

.field private final l:Ld4/b0;

.field private final m:Ly4/g;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private q:Ld4/r$a;

.field private r:Lx3/b;

.field private s:[Ld4/l0;

.field private t:[Ld4/g0$d;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ld4/g0$e;

.field private y:Lg3/z;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ld4/g0;->K()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ld4/g0;->M:Ljava/util/Map;

    .line 6
    .line 7
    new-instance v0, Lb3/x1$b;

    .line 8
    .line 9
    invoke-direct {v0}, Lb3/x1$b;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "icy"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "application/x-icy"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lb3/x1$b;->G()Lb3/x1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Ld4/g0;->N:Lb3/x1;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lx4/j;Ld4/b0;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;Ld4/g0$b;Lx4/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/g0;->a:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Ld4/g0;->b:Lx4/j;

    .line 7
    .line 8
    iput-object p4, p0, Ld4/g0;->c:Lf3/v;

    .line 9
    .line 10
    iput-object p5, p0, Ld4/g0;->f:Lf3/u$a;

    .line 11
    .line 12
    iput-object p6, p0, Ld4/g0;->d:Lx4/d0;

    .line 13
    .line 14
    iput-object p7, p0, Ld4/g0;->e:Ld4/a0$a;

    .line 15
    .line 16
    iput-object p8, p0, Ld4/g0;->g:Ld4/g0$b;

    .line 17
    .line 18
    iput-object p9, p0, Ld4/g0;->h:Lx4/b;

    .line 19
    .line 20
    iput-object p10, p0, Ld4/g0;->i:Ljava/lang/String;

    .line 21
    .line 22
    int-to-long p1, p11

    .line 23
    iput-wide p1, p0, Ld4/g0;->j:J

    .line 24
    .line 25
    new-instance p1, Lx4/e0;

    .line 26
    .line 27
    const-string p2, "ProgressiveMediaPeriod"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ld4/g0;->k:Lx4/e0;

    .line 33
    .line 34
    iput-object p3, p0, Ld4/g0;->l:Ld4/b0;

    .line 35
    .line 36
    new-instance p1, Ly4/g;

    .line 37
    .line 38
    invoke-direct {p1}, Ly4/g;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Ld4/g0;->m:Ly4/g;

    .line 42
    .line 43
    new-instance p1, Ld4/c0;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ld4/c0;-><init>(Ld4/g0;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Ld4/g0;->n:Ljava/lang/Runnable;

    .line 49
    .line 50
    new-instance p1, Ld4/d0;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ld4/d0;-><init>(Ld4/g0;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Ld4/g0;->o:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-static {}, Ly4/q0;->w()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    new-array p2, p1, [Ld4/g0$d;

    .line 65
    .line 66
    iput-object p2, p0, Ld4/g0;->t:[Ld4/g0$d;

    .line 67
    .line 68
    new-array p1, p1, [Ld4/l0;

    .line 69
    .line 70
    iput-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 71
    .line 72
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide p1, p0, Ld4/g0;->H:J

    .line 78
    .line 79
    iput-wide p1, p0, Ld4/g0;->z:J

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    iput p1, p0, Ld4/g0;->B:I

    .line 83
    .line 84
    return-void
.end method

.method static synthetic A(Ld4/g0;Z)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld4/g0;->M(Z)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic B()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Ld4/g0;->M:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic C(Ld4/g0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld4/g0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Ld4/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld4/g0;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Ld4/g0;)Lx3/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ld4/g0;->r:Lx3/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Ld4/g0;Lx3/b;)Lx3/b;
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/g0;->r:Lx3/b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic G()Lb3/x1;
    .locals 1

    .line 1
    sget-object v0, Ld4/g0;->N:Lb3/x1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic H(Ld4/g0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/g0;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private I()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld4/g0;->v:Z

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 12
    .line 13
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private J(Ld4/g0$a;I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ld4/g0;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lg3/z;->i()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean p2, p0, Ld4/g0;->v:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Ld4/g0;->j0()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Ld4/g0;->I:Z

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget-boolean p2, p0, Ld4/g0;->v:Z

    .line 39
    .line 40
    iput-boolean p2, p0, Ld4/g0;->D:Z

    .line 41
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    iput-wide v2, p0, Ld4/g0;->G:J

    .line 45
    .line 46
    iput v0, p0, Ld4/g0;->J:I

    .line 47
    .line 48
    iget-object p2, p0, Ld4/g0;->s:[Ld4/l0;

    .line 49
    .line 50
    array-length v4, p2

    .line 51
    :goto_0
    if-ge v0, v4, :cond_2

    .line 52
    .line 53
    aget-object v5, p2, v0

    .line 54
    .line 55
    invoke-virtual {v5}, Ld4/l0;->V()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1, v2, v3, v2, v3}, Ld4/g0$a;->h(Ld4/g0$a;JJ)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_3
    :goto_1
    iput p2, p0, Ld4/g0;->J:I

    .line 66
    .line 67
    return v1
.end method

.method private static K()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private L()I
    .locals 5

    .line 1
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {v4}, Ld4/l0;->G()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    add-int/2addr v3, v4

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v3
.end method

.method private M(Z)J
    .locals 5

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Ld4/g0;->s:[Ld4/l0;

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 12
    .line 13
    invoke-static {v3}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ld4/g0$e;

    .line 18
    .line 19
    iget-object v3, v3, Ld4/g0$e;->c:[Z

    .line 20
    .line 21
    aget-boolean v3, v3, v2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v3, p0, Ld4/g0;->s:[Ld4/l0;

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    invoke-virtual {v3}, Ld4/l0;->z()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-wide v0
.end method

.method private O()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ld4/g0;->H:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private synthetic Q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld4/g0;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld4/g0;->q:Ld4/r$a;

    .line 6
    .line 7
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ld4/r$a;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private synthetic R()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld4/g0;->F:Z

    .line 3
    .line 4
    return-void
.end method

.method private synthetic S(Lg3/z;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld4/g0;->g0(Lg3/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Ld4/g0;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p0, Ld4/g0;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    iget-boolean v0, p0, Ld4/g0;->u:Z

    .line 10
    .line 11
    if-eqz v0, :cond_a

    .line 12
    .line 13
    iget-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_2

    .line 25
    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-virtual {v4}, Ld4/l0;->F()Lb3/x1;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Ld4/g0;->m:Ly4/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Ly4/g;->c()Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 44
    .line 45
    array-length v0, v0

    .line 46
    new-array v1, v0, [Ld4/s0;

    .line 47
    .line 48
    new-array v3, v0, [Z

    .line 49
    .line 50
    move v4, v2

    .line 51
    :goto_1
    const/4 v5, 0x1

    .line 52
    if-ge v4, v0, :cond_9

    .line 53
    .line 54
    iget-object v6, p0, Ld4/g0;->s:[Ld4/l0;

    .line 55
    .line 56
    aget-object v6, v6, v4

    .line 57
    .line 58
    invoke-virtual {v6}, Ld4/l0;->F()Lb3/x1;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Lb3/x1;

    .line 67
    .line 68
    iget-object v7, v6, Lb3/x1;->l:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v7}, Ly4/v;->o(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_4

    .line 75
    .line 76
    invoke-static {v7}, Ly4/v;->s(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v7, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    move v7, v5

    .line 86
    :goto_3
    aput-boolean v7, v3, v4

    .line 87
    .line 88
    iget-boolean v9, p0, Ld4/g0;->w:Z

    .line 89
    .line 90
    or-int/2addr v7, v9

    .line 91
    iput-boolean v7, p0, Ld4/g0;->w:Z

    .line 92
    .line 93
    iget-object v7, p0, Ld4/g0;->r:Lx3/b;

    .line 94
    .line 95
    if-eqz v7, :cond_8

    .line 96
    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    iget-object v9, p0, Ld4/g0;->t:[Ld4/g0$d;

    .line 100
    .line 101
    aget-object v9, v9, v4

    .line 102
    .line 103
    iget-boolean v9, v9, Ld4/g0$d;->b:Z

    .line 104
    .line 105
    if-eqz v9, :cond_7

    .line 106
    .line 107
    :cond_5
    iget-object v9, v6, Lb3/x1;->j:Lt3/a;

    .line 108
    .line 109
    if-nez v9, :cond_6

    .line 110
    .line 111
    new-instance v9, Lt3/a;

    .line 112
    .line 113
    new-array v5, v5, [Lt3/a$b;

    .line 114
    .line 115
    aput-object v7, v5, v2

    .line 116
    .line 117
    invoke-direct {v9, v5}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    new-array v5, v5, [Lt3/a$b;

    .line 122
    .line 123
    aput-object v7, v5, v2

    .line 124
    .line 125
    invoke-virtual {v9, v5}, Lt3/a;->a([Lt3/a$b;)Lt3/a;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    :goto_4
    invoke-virtual {v6}, Lb3/x1;->b()Lb3/x1$b;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5, v9}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lb3/x1$b;->G()Lb3/x1;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    :cond_7
    if-eqz v8, :cond_8

    .line 142
    .line 143
    iget v5, v6, Lb3/x1;->f:I

    .line 144
    .line 145
    const/4 v8, -0x1

    .line 146
    if-ne v5, v8, :cond_8

    .line 147
    .line 148
    iget v5, v6, Lb3/x1;->g:I

    .line 149
    .line 150
    if-ne v5, v8, :cond_8

    .line 151
    .line 152
    iget v5, v7, Lx3/b;->a:I

    .line 153
    .line 154
    if-eq v5, v8, :cond_8

    .line 155
    .line 156
    invoke-virtual {v6}, Lb3/x1;->b()Lb3/x1$b;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget v6, v7, Lx3/b;->a:I

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Lb3/x1$b;->I(I)Lb3/x1$b;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lb3/x1$b;->G()Lb3/x1;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :cond_8
    iget-object v5, p0, Ld4/g0;->c:Lf3/v;

    .line 171
    .line 172
    invoke-interface {v5, v6}, Lf3/v;->c(Lb3/x1;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v6, v5}, Lb3/x1;->c(I)Lb3/x1;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    new-instance v6, Ld4/s0;

    .line 181
    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    filled-new-array {v5}, [Lb3/x1;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-direct {v6, v7, v5}, Ld4/s0;-><init>(Ljava/lang/String;[Lb3/x1;)V

    .line 191
    .line 192
    .line 193
    aput-object v6, v1, v4

    .line 194
    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_9
    new-instance v0, Ld4/g0$e;

    .line 200
    .line 201
    new-instance v2, Ld4/u0;

    .line 202
    .line 203
    invoke-direct {v2, v1}, Ld4/u0;-><init>([Ld4/s0;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v2, v3}, Ld4/g0$e;-><init>(Ld4/u0;[Z)V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 210
    .line 211
    iput-boolean v5, p0, Ld4/g0;->v:Z

    .line 212
    .line 213
    iget-object v0, p0, Ld4/g0;->q:Ld4/r$a;

    .line 214
    .line 215
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Ld4/r$a;

    .line 220
    .line 221
    invoke-interface {v0, p0}, Ld4/r$a;->g(Ld4/r;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_5
    return-void
.end method

.method private U(I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 5
    .line 6
    iget-object v1, v0, Ld4/g0$e;->d:[Z

    .line 7
    .line 8
    aget-boolean v2, v1, p1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Ld4/g0$e;->a:Ld4/u0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ld4/u0;->b(I)Ld4/s0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Ld4/s0;->b(I)Lb3/x1;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v3, p0, Ld4/g0;->e:Ld4/a0$a;

    .line 24
    .line 25
    iget-object v0, v5, Lb3/x1;->l:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Ly4/v;->k(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    iget-wide v8, p0, Ld4/g0;->G:J

    .line 34
    .line 35
    invoke-virtual/range {v3 .. v9}, Ld4/a0$a;->i(ILb3/x1;ILjava/lang/Object;J)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-boolean v0, v1, p1

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private V(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 5
    .line 6
    iget-object v0, v0, Ld4/g0$e;->b:[Z

    .line 7
    .line 8
    iget-boolean v1, p0, Ld4/g0;->I:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    aget-boolean v0, v0, p1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 17
    .line 18
    aget-object p1, v0, p1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Ld4/l0;->K(Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, p0, Ld4/g0;->H:J

    .line 31
    .line 32
    iput-boolean v0, p0, Ld4/g0;->I:Z

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Ld4/g0;->D:Z

    .line 36
    .line 37
    iput-wide v1, p0, Ld4/g0;->G:J

    .line 38
    .line 39
    iput v0, p0, Ld4/g0;->J:I

    .line 40
    .line 41
    iget-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 42
    .line 43
    array-length v1, p1

    .line 44
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    .line 46
    aget-object v2, p1, v0

    .line 47
    .line 48
    invoke-virtual {v2}, Ld4/l0;->V()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Ld4/g0;->q:Ld4/r$a;

    .line 55
    .line 56
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ld4/r$a;

    .line 61
    .line 62
    invoke-interface {p1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ld4/e0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ld4/e0;-><init>(Ld4/g0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private c0(Ld4/g0$d;)Lg3/b0;
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Ld4/g0;->t:[Ld4/g0$d;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ld4/g0$d;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Ld4/g0;->h:Lx4/b;

    .line 26
    .line 27
    iget-object v2, p0, Ld4/g0;->c:Lf3/v;

    .line 28
    .line 29
    iget-object v3, p0, Ld4/g0;->f:Lf3/u$a;

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Ld4/l0;->k(Lx4/b;Lf3/v;Lf3/u$a;)Ld4/l0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p0}, Ld4/l0;->d0(Ld4/l0$d;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Ld4/g0;->t:[Ld4/g0$d;

    .line 39
    .line 40
    add-int/lit8 v3, v0, 0x1

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, [Ld4/g0$d;

    .line 47
    .line 48
    aput-object p1, v2, v0

    .line 49
    .line 50
    invoke-static {v2}, Ly4/q0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, [Ld4/g0$d;

    .line 55
    .line 56
    iput-object p1, p0, Ld4/g0;->t:[Ld4/g0$d;

    .line 57
    .line 58
    iget-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 59
    .line 60
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, [Ld4/l0;

    .line 65
    .line 66
    aput-object v1, p1, v0

    .line 67
    .line 68
    invoke-static {p1}, Ly4/q0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Ld4/l0;

    .line 73
    .line 74
    iput-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 75
    .line 76
    return-object v1
.end method

.method private f0([ZJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Ld4/g0;->s:[Ld4/l0;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3, p2, p3, v1}, Ld4/l0;->Z(JZ)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    aget-boolean v3, p1, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget-boolean v3, p0, Ld4/g0;->w:Z

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    :cond_0
    return v1

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private g0(Lg3/z;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld4/g0;->r:Lx3/b;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lg3/z$b;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lg3/z$b;-><init>(J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 18
    .line 19
    invoke-interface {p1}, Lg3/z;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, p0, Ld4/g0;->z:J

    .line 24
    .line 25
    iget-boolean v0, p0, Ld4/g0;->F:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lg3/z;->i()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v4, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    iput-boolean v0, p0, Ld4/g0;->A:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    :cond_2
    iput v3, p0, Ld4/g0;->B:I

    .line 47
    .line 48
    iget-object v0, p0, Ld4/g0;->g:Ld4/g0$b;

    .line 49
    .line 50
    iget-wide v1, p0, Ld4/g0;->z:J

    .line 51
    .line 52
    invoke-interface {p1}, Lg3/z;->e()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-boolean v3, p0, Ld4/g0;->A:Z

    .line 57
    .line 58
    invoke-interface {v0, v1, v2, p1, v3}, Ld4/g0$b;->f(JZZ)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Ld4/g0;->v:Z

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Ld4/g0;->T()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method private i0()V
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    new-instance v8, Ld4/g0$a;

    .line 4
    .line 5
    iget-object v2, v7, Ld4/g0;->a:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, v7, Ld4/g0;->b:Lx4/j;

    .line 8
    .line 9
    iget-object v4, v7, Ld4/g0;->l:Ld4/b0;

    .line 10
    .line 11
    iget-object v6, v7, Ld4/g0;->m:Ly4/g;

    .line 12
    .line 13
    move-object v0, v8

    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-object/from16 v5, p0

    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Ld4/g0$a;-><init>(Ld4/g0;Landroid/net/Uri;Lx4/j;Ld4/b0;Lg3/m;Ly4/g;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, v7, Ld4/g0;->v:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-direct/range {p0 .. p0}, Ld4/g0;->O()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, v7, Ld4/g0;->z:J

    .line 33
    .line 34
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmp-long v4, v0, v2

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    iget-wide v4, v7, Ld4/g0;->H:J

    .line 44
    .line 45
    cmp-long v0, v4, v0

    .line 46
    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, v7, Ld4/g0;->K:Z

    .line 51
    .line 52
    iput-wide v2, v7, Ld4/g0;->H:J

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, v7, Ld4/g0;->y:Lg3/z;

    .line 56
    .line 57
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lg3/z;

    .line 62
    .line 63
    iget-wide v4, v7, Ld4/g0;->H:J

    .line 64
    .line 65
    invoke-interface {v0, v4, v5}, Lg3/z;->h(J)Lg3/z$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lg3/z$a;->a:Lg3/a0;

    .line 70
    .line 71
    iget-wide v0, v0, Lg3/a0;->b:J

    .line 72
    .line 73
    iget-wide v4, v7, Ld4/g0;->H:J

    .line 74
    .line 75
    invoke-static {v8, v0, v1, v4, v5}, Ld4/g0$a;->h(Ld4/g0$a;JJ)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v7, Ld4/g0;->s:[Ld4/l0;

    .line 79
    .line 80
    array-length v1, v0

    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_0
    if-ge v4, v1, :cond_1

    .line 83
    .line 84
    aget-object v5, v0, v4

    .line 85
    .line 86
    iget-wide v9, v7, Ld4/g0;->H:J

    .line 87
    .line 88
    invoke-virtual {v5, v9, v10}, Ld4/l0;->b0(J)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iput-wide v2, v7, Ld4/g0;->H:J

    .line 95
    .line 96
    :cond_2
    invoke-direct/range {p0 .. p0}, Ld4/g0;->L()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, v7, Ld4/g0;->J:I

    .line 101
    .line 102
    iget-object v0, v7, Ld4/g0;->k:Lx4/e0;

    .line 103
    .line 104
    iget-object v1, v7, Ld4/g0;->d:Lx4/d0;

    .line 105
    .line 106
    iget v2, v7, Ld4/g0;->B:I

    .line 107
    .line 108
    invoke-interface {v1, v2}, Lx4/d0;->d(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v8, v7, v1}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v13

    .line 116
    invoke-static {v8}, Ld4/g0$a;->f(Ld4/g0$a;)Lx4/n;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    iget-object v15, v7, Ld4/g0;->e:Ld4/a0$a;

    .line 121
    .line 122
    new-instance v16, Ld4/n;

    .line 123
    .line 124
    invoke-static {v8}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    move-object/from16 v9, v16

    .line 129
    .line 130
    invoke-direct/range {v9 .. v14}, Ld4/n;-><init>(JLx4/n;J)V

    .line 131
    .line 132
    .line 133
    const/16 v17, 0x1

    .line 134
    .line 135
    const/16 v18, -0x1

    .line 136
    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    const/16 v20, 0x0

    .line 140
    .line 141
    const/16 v21, 0x0

    .line 142
    .line 143
    invoke-static {v8}, Ld4/g0$a;->g(Ld4/g0$a;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v22

    .line 147
    iget-wide v0, v7, Ld4/g0;->z:J

    .line 148
    .line 149
    move-wide/from16 v24, v0

    .line 150
    .line 151
    invoke-virtual/range {v15 .. v25}, Ld4/a0$a;->A(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private j0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld4/g0;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Ld4/g0;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public static synthetic u(Ld4/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld4/g0;->T()V

    return-void
.end method

.method public static synthetic v(Ld4/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld4/g0;->R()V

    return-void
.end method

.method public static synthetic w(Ld4/g0;Lg3/z;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld4/g0;->S(Lg3/z;)V

    return-void
.end method

.method public static synthetic x(Ld4/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld4/g0;->Q()V

    return-void
.end method

.method static synthetic y(Ld4/g0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Ld4/g0;->o:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Ld4/g0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method N()Lg3/b0;
    .locals 3

    .line 1
    new-instance v0, Ld4/g0$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Ld4/g0$d;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ld4/g0;->c0(Ld4/g0$d;)Lg3/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method P(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ld4/g0;->j0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    iget-boolean v0, p0, Ld4/g0;->K:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ld4/l0;->K(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method W()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/g0;->d:Lx4/d0;

    .line 4
    .line 5
    iget v2, p0, Ld4/g0;->B:I

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lx4/d0;->d(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lx4/e0;->k(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method X(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Ld4/l0;->N()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ld4/g0;->W()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Z(Ld4/g0$a;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->d(Ld4/g0$a;)Lx4/l0;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v14, Ld4/n;

    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->f(Ld4/g0$a;)Lx4/n;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v1}, Lx4/l0;->r()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v1}, Lx4/l0;->s()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v1}, Lx4/l0;->q()J

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    move-object v2, v14

    .line 29
    move-wide/from16 v8, p2

    .line 30
    .line 31
    move-wide/from16 v10, p4

    .line 32
    .line 33
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Ld4/g0;->d:Lx4/d0;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-interface {v1, v2, v3}, Lx4/d0;->c(J)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Ld4/g0;->e:Ld4/a0$a;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, -0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->g(Ld4/g0$a;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    iget-wide v11, v0, Ld4/g0;->z:J

    .line 57
    .line 58
    move-object v3, v14

    .line 59
    invoke-virtual/range {v2 .. v12}, Ld4/a0$a;->r(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 60
    .line 61
    .line 62
    if-nez p6, :cond_1

    .line 63
    .line 64
    iget-object v1, v0, Ld4/g0;->s:[Ld4/l0;

    .line 65
    .line 66
    array-length v2, v1

    .line 67
    const/4 v3, 0x0

    .line 68
    :goto_0
    if-ge v3, v2, :cond_0

    .line 69
    .line 70
    aget-object v4, v1, v3

    .line 71
    .line 72
    invoke-virtual {v4}, Ld4/l0;->V()V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget v1, v0, Ld4/g0;->E:I

    .line 79
    .line 80
    if-lez v1, :cond_1

    .line 81
    .line 82
    iget-object v1, v0, Ld4/g0;->q:Ld4/r$a;

    .line 83
    .line 84
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ld4/r$a;

    .line 89
    .line 90
    invoke-interface {v1, p0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public a(II)Lg3/b0;
    .locals 1

    .line 1
    new-instance p2, Ld4/g0$d;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Ld4/g0$d;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Ld4/g0;->c0(Ld4/g0$d;)Lg3/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public a0(Ld4/g0$a;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Ld4/g0;->z:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Ld4/g0;->y:Lg3/z;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Lg3/z;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v2}, Ld4/g0;->M(Z)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    const-wide/high16 v5, -0x8000000000000000L

    .line 28
    .line 29
    cmp-long v5, v3, v5

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v5, 0x2710

    .line 37
    .line 38
    add-long/2addr v3, v5

    .line 39
    :goto_0
    iput-wide v3, v0, Ld4/g0;->z:J

    .line 40
    .line 41
    iget-object v5, v0, Ld4/g0;->g:Ld4/g0$b;

    .line 42
    .line 43
    iget-boolean v6, v0, Ld4/g0;->A:Z

    .line 44
    .line 45
    invoke-interface {v5, v3, v4, v1, v6}, Ld4/g0$b;->f(JZZ)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->d(Ld4/g0$a;)Lx4/l0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v15, Ld4/n;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->f(Ld4/g0$a;)Lx4/n;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v1}, Lx4/l0;->r()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v1}, Lx4/l0;->s()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v1}, Lx4/l0;->q()J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    move-object v3, v15

    .line 75
    move-wide/from16 v9, p2

    .line 76
    .line 77
    move-wide/from16 v11, p4

    .line 78
    .line 79
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Ld4/g0;->d:Lx4/d0;

    .line 83
    .line 84
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-interface {v1, v3, v4}, Lx4/d0;->c(J)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Ld4/g0;->e:Ld4/a0$a;

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    const/4 v6, -0x1

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->g(Ld4/g0$a;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    iget-wide v12, v0, Ld4/g0;->z:J

    .line 103
    .line 104
    move-object v4, v15

    .line 105
    invoke-virtual/range {v3 .. v13}, Ld4/a0$a;->u(Ld4/n;IILb3/x1;ILjava/lang/Object;JJ)V

    .line 106
    .line 107
    .line 108
    iput-boolean v2, v0, Ld4/g0;->K:Z

    .line 109
    .line 110
    iget-object v1, v0, Ld4/g0;->q:Ld4/r$a;

    .line 111
    .line 112
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ld4/r$a;

    .line 117
    .line 118
    invoke-interface {v1, v0}, Ld4/n0$a;->h(Ld4/n0;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld4/g0;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public b0(Ld4/g0$a;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->d(Ld4/g0$a;)Lx4/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v14, Ld4/n;

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->f(Ld4/g0$a;)Lx4/n;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v1}, Lx4/l0;->r()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v1}, Lx4/l0;->s()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v1}, Lx4/l0;->q()J

    .line 26
    .line 27
    .line 28
    move-result-wide v12

    .line 29
    move-object v2, v14

    .line 30
    move-wide/from16 v8, p2

    .line 31
    .line 32
    move-wide/from16 v10, p4

    .line 33
    .line 34
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ld4/q;

    .line 38
    .line 39
    const/16 v16, 0x1

    .line 40
    .line 41
    const/16 v17, -0x1

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    const/16 v19, 0x0

    .line 46
    .line 47
    const/16 v20, 0x0

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->g(Ld4/g0$a;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ly4/q0;->X0(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v21

    .line 57
    iget-wide v2, v0, Ld4/g0;->z:J

    .line 58
    .line 59
    invoke-static {v2, v3}, Ly4/q0;->X0(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v23

    .line 63
    move-object v15, v1

    .line 64
    invoke-direct/range {v15 .. v24}, Ld4/q;-><init>(IILb3/x1;ILjava/lang/Object;JJ)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Ld4/g0;->d:Lx4/d0;

    .line 68
    .line 69
    new-instance v3, Lx4/d0$c;

    .line 70
    .line 71
    move-object/from16 v13, p6

    .line 72
    .line 73
    move/from16 v4, p7

    .line 74
    .line 75
    invoke-direct {v3, v14, v1, v13, v4}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v3}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    cmp-long v3, v1, v3

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    if-nez v3, :cond_0

    .line 91
    .line 92
    sget-object v1, Lx4/e0;->g:Lx4/e0$c;

    .line 93
    .line 94
    move-object/from16 v15, p1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    invoke-direct/range {p0 .. p0}, Ld4/g0;->L()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget v5, v0, Ld4/g0;->J:I

    .line 102
    .line 103
    if-le v3, v5, :cond_1

    .line 104
    .line 105
    move-object/from16 v15, p1

    .line 106
    .line 107
    move v5, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 v5, 0x0

    .line 110
    move-object/from16 v15, p1

    .line 111
    .line 112
    :goto_0
    invoke-direct {v0, v15, v3}, Ld4/g0;->J(Ld4/g0$a;I)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-static {v5, v1, v2}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    sget-object v1, Lx4/e0;->f:Lx4/e0$c;

    .line 124
    .line 125
    :goto_1
    invoke-virtual {v1}, Lx4/e0$c;->c()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    xor-int/lit8 v16, v2, 0x1

    .line 130
    .line 131
    iget-object v2, v0, Ld4/g0;->e:Ld4/a0$a;

    .line 132
    .line 133
    const/4 v4, 0x1

    .line 134
    const/4 v5, -0x1

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->g(Ld4/g0$a;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    iget-wide v11, v0, Ld4/g0;->z:J

    .line 143
    .line 144
    move-object v3, v14

    .line 145
    move-object/from16 v13, p6

    .line 146
    .line 147
    move/from16 v14, v16

    .line 148
    .line 149
    invoke-virtual/range {v2 .. v14}, Ld4/a0$a;->w(Ld4/n;IILb3/x1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 150
    .line 151
    .line 152
    if-eqz v16, :cond_3

    .line 153
    .line 154
    iget-object v2, v0, Ld4/g0;->d:Lx4/d0;

    .line 155
    .line 156
    invoke-static/range {p1 .. p1}, Ld4/g0$a;->e(Ld4/g0$a;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 161
    .line 162
    .line 163
    :cond_3
    return-object v1
.end method

.method public c(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Ld4/g0;->K:Z

    .line 2
    .line 3
    if-nez p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Ld4/g0;->k:Lx4/e0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lx4/e0;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-boolean p1, p0, Ld4/g0;->I:Z

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-boolean p1, p0, Ld4/g0;->v:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p1, p0, Ld4/g0;->E:I

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Ld4/g0;->m:Ly4/g;

    .line 27
    .line 28
    invoke-virtual {p1}, Ly4/g;->e()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p2, p0, Ld4/g0;->k:Lx4/e0;

    .line 33
    .line 34
    invoke-virtual {p2}, Lx4/e0;->j()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Ld4/g0;->i0()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    :cond_1
    return p1

    .line 45
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public d()J
    .locals 11

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ld4/g0;->K:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, Ld4/g0;->E:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-direct {p0}, Ld4/g0;->O()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Ld4/g0;->H:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Ld4/g0;->w:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move v6, v3

    .line 38
    move-wide v7, v4

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 42
    .line 43
    iget-object v10, v9, Ld4/g0$e;->b:[Z

    .line 44
    .line 45
    aget-boolean v10, v10, v6

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v9, v9, Ld4/g0$e;->c:[Z

    .line 50
    .line 51
    aget-boolean v9, v9, v6

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    iget-object v9, p0, Ld4/g0;->s:[Ld4/l0;

    .line 56
    .line 57
    aget-object v9, v9, v6

    .line 58
    .line 59
    invoke-virtual {v9}, Ld4/l0;->J()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    iget-object v9, p0, Ld4/g0;->s:[Ld4/l0;

    .line 66
    .line 67
    aget-object v9, v9, v6

    .line 68
    .line 69
    invoke-virtual {v9}, Ld4/l0;->z()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-wide v7, v4

    .line 81
    :cond_4
    cmp-long v0, v7, v4

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    invoke-direct {p0, v3}, Ld4/g0;->M(Z)J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    :cond_5
    cmp-long v0, v7, v1

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    iget-wide v7, p0, Ld4/g0;->G:J

    .line 94
    .line 95
    :cond_6
    return-wide v7

    .line 96
    :cond_7
    :goto_1
    return-wide v1
.end method

.method d0(ILb3/y1;Le3/g;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Ld4/g0;->j0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Ld4/g0;->U(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    iget-boolean v2, p0, Ld4/g0;->K:Z

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, p4, v2}, Ld4/l0;->S(Lb3/y1;Le3/g;IZ)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ne p2, v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ld4/g0;->V(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return p2
.end method

.method public e(JLb3/x3;)J
    .locals 9

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 5
    .line 6
    invoke-interface {v0}, Lg3/z;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v0, p0, Ld4/g0;->y:Lg3/z;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lg3/z;->h(J)Lg3/z$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Lg3/z$a;->a:Lg3/a0;

    .line 22
    .line 23
    iget-wide v5, v1, Lg3/a0;->a:J

    .line 24
    .line 25
    iget-object v0, v0, Lg3/z$a;->b:Lg3/a0;

    .line 26
    .line 27
    iget-wide v7, v0, Lg3/a0;->a:J

    .line 28
    .line 29
    move-object v2, p3

    .line 30
    move-wide v3, p1

    .line 31
    invoke-virtual/range {v2 .. v8}, Lb3/x3;->a(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    return-wide p1
.end method

.method public e0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld4/g0;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ld4/l0;->R()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lx4/e0;->m(Lx4/e0$f;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Ld4/g0;->q:Ld4/r$a;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Ld4/g0;->L:Z

    .line 34
    .line 35
    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ld4/l0;->T()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Ld4/g0;->l:Ld4/b0;

    .line 16
    .line 17
    invoke-interface {v0}, Ld4/b0;->release()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic h(Lx4/e0$e;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 0

    .line 1
    check-cast p1, Ld4/g0$a;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Ld4/g0;->b0(Ld4/g0$a;JJLjava/io/IOException;I)Lx4/e0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method h0(IJ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Ld4/g0;->j0()Z

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
    invoke-direct {p0, p1}, Ld4/g0;->U(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    iget-boolean v1, p0, Ld4/g0;->K:Z

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, v1}, Ld4/l0;->E(JZ)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {v0, p2}, Ld4/l0;->e0(I)V

    .line 23
    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ld4/g0;->V(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld4/g0;->W()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ld4/g0;->K:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Ld4/g0;->v:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld4/g0;->m:Ly4/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly4/g;->d()Z

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

.method public j(Lb3/x1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Ld4/g0;->n:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k(J)J
    .locals 4

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 5
    .line 6
    iget-object v0, v0, Ld4/g0$e;->b:[Z

    .line 7
    .line 8
    iget-object v1, p0, Ld4/g0;->y:Lg3/z;

    .line 9
    .line 10
    invoke-interface {v1}, Lg3/z;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 p1, 0x0

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Ld4/g0;->D:Z

    .line 21
    .line 22
    iput-wide p1, p0, Ld4/g0;->G:J

    .line 23
    .line 24
    invoke-direct {p0}, Ld4/g0;->O()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iput-wide p1, p0, Ld4/g0;->H:J

    .line 31
    .line 32
    return-wide p1

    .line 33
    :cond_1
    iget v2, p0, Ld4/g0;->B:I

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, v0, p1, p2}, Ld4/g0;->f0([ZJ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    return-wide p1

    .line 45
    :cond_2
    iput-boolean v1, p0, Ld4/g0;->I:Z

    .line 46
    .line 47
    iput-wide p1, p0, Ld4/g0;->H:J

    .line 48
    .line 49
    iput-boolean v1, p0, Ld4/g0;->K:Z

    .line 50
    .line 51
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 52
    .line 53
    invoke-virtual {v0}, Lx4/e0;->j()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 60
    .line 61
    array-length v2, v0

    .line 62
    :goto_1
    if-ge v1, v2, :cond_3

    .line 63
    .line 64
    aget-object v3, v0, v1

    .line 65
    .line 66
    invoke-virtual {v3}, Ld4/l0;->r()V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 73
    .line 74
    invoke-virtual {v0}, Lx4/e0;->f()V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    iget-object v0, p0, Ld4/g0;->k:Lx4/e0;

    .line 79
    .line 80
    invoke-virtual {v0}, Lx4/e0;->g()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Ld4/g0;->s:[Ld4/l0;

    .line 84
    .line 85
    array-length v2, v0

    .line 86
    :goto_2
    if-ge v1, v2, :cond_5

    .line 87
    .line 88
    aget-object v3, v0, v1

    .line 89
    .line 90
    invoke-virtual {v3}, Ld4/l0;->V()V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_3
    return-wide p1
.end method

.method public l(Lg3/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ld4/f0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ld4/f0;-><init>(Ld4/g0;Lg3/z;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m([Lw4/y;[Z[Ld4/m0;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 5
    .line 6
    iget-object v1, v0, Ld4/g0$e;->a:Ld4/u0;

    .line 7
    .line 8
    iget-object v0, v0, Ld4/g0$e;->c:[Z

    .line 9
    .line 10
    iget v2, p0, Ld4/g0;->E:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    array-length v5, p1

    .line 15
    const/4 v6, 0x1

    .line 16
    if-ge v4, v5, :cond_2

    .line 17
    .line 18
    aget-object v5, p3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    aget-object v7, p1, v4

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    aget-boolean v7, p2, v4

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    :cond_0
    check-cast v5, Ld4/g0$c;

    .line 31
    .line 32
    invoke-static {v5}, Ld4/g0$c;->b(Ld4/g0$c;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    aget-boolean v7, v0, v5

    .line 37
    .line 38
    invoke-static {v7}, Ly4/a;->f(Z)V

    .line 39
    .line 40
    .line 41
    iget v7, p0, Ld4/g0;->E:I

    .line 42
    .line 43
    sub-int/2addr v7, v6

    .line 44
    iput v7, p0, Ld4/g0;->E:I

    .line 45
    .line 46
    aput-boolean v3, v0, v5

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v5, p3, v4

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-boolean p2, p0, Ld4/g0;->C:Z

    .line 55
    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    cmp-long p2, p5, v4

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    :goto_1
    move p2, v6

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move p2, v3

    .line 70
    :goto_2
    move v2, v3

    .line 71
    :goto_3
    array-length v4, p1

    .line 72
    if-ge v2, v4, :cond_9

    .line 73
    .line 74
    aget-object v4, p3, v2

    .line 75
    .line 76
    if-nez v4, :cond_8

    .line 77
    .line 78
    aget-object v4, p1, v2

    .line 79
    .line 80
    if-eqz v4, :cond_8

    .line 81
    .line 82
    invoke-interface {v4}, Lw4/b0;->length()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-ne v5, v6, :cond_5

    .line 87
    .line 88
    move v5, v6

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move v5, v3

    .line 91
    :goto_4
    invoke-static {v5}, Ly4/a;->f(Z)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v4, v3}, Lw4/b0;->j(I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_6

    .line 99
    .line 100
    move v5, v6

    .line 101
    goto :goto_5

    .line 102
    :cond_6
    move v5, v3

    .line 103
    :goto_5
    invoke-static {v5}, Ly4/a;->f(Z)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v4}, Lw4/b0;->a()Ld4/s0;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1, v4}, Ld4/u0;->c(Ld4/s0;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    aget-boolean v5, v0, v4

    .line 115
    .line 116
    xor-int/2addr v5, v6

    .line 117
    invoke-static {v5}, Ly4/a;->f(Z)V

    .line 118
    .line 119
    .line 120
    iget v5, p0, Ld4/g0;->E:I

    .line 121
    .line 122
    add-int/2addr v5, v6

    .line 123
    iput v5, p0, Ld4/g0;->E:I

    .line 124
    .line 125
    aput-boolean v6, v0, v4

    .line 126
    .line 127
    new-instance v5, Ld4/g0$c;

    .line 128
    .line 129
    invoke-direct {v5, p0, v4}, Ld4/g0$c;-><init>(Ld4/g0;I)V

    .line 130
    .line 131
    .line 132
    aput-object v5, p3, v2

    .line 133
    .line 134
    aput-boolean v6, p4, v2

    .line 135
    .line 136
    if-nez p2, :cond_8

    .line 137
    .line 138
    iget-object p2, p0, Ld4/g0;->s:[Ld4/l0;

    .line 139
    .line 140
    aget-object p2, p2, v4

    .line 141
    .line 142
    invoke-virtual {p2, p5, p6, v6}, Ld4/l0;->Z(JZ)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_7

    .line 147
    .line 148
    invoke-virtual {p2}, Ld4/l0;->C()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_7

    .line 153
    .line 154
    move p2, v6

    .line 155
    goto :goto_6

    .line 156
    :cond_7
    move p2, v3

    .line 157
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    iget p1, p0, Ld4/g0;->E:I

    .line 161
    .line 162
    if-nez p1, :cond_c

    .line 163
    .line 164
    iput-boolean v3, p0, Ld4/g0;->I:Z

    .line 165
    .line 166
    iput-boolean v3, p0, Ld4/g0;->D:Z

    .line 167
    .line 168
    iget-object p1, p0, Ld4/g0;->k:Lx4/e0;

    .line 169
    .line 170
    invoke-virtual {p1}, Lx4/e0;->j()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_b

    .line 175
    .line 176
    iget-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 177
    .line 178
    array-length p2, p1

    .line 179
    :goto_7
    if-ge v3, p2, :cond_a

    .line 180
    .line 181
    aget-object p3, p1, v3

    .line 182
    .line 183
    invoke-virtual {p3}, Ld4/l0;->r()V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v3, v3, 0x1

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    iget-object p1, p0, Ld4/g0;->k:Lx4/e0;

    .line 190
    .line 191
    invoke-virtual {p1}, Lx4/e0;->f()V

    .line 192
    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_b
    iget-object p1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 196
    .line 197
    array-length p2, p1

    .line 198
    :goto_8
    if-ge v3, p2, :cond_e

    .line 199
    .line 200
    aget-object p3, p1, v3

    .line 201
    .line 202
    invoke-virtual {p3}, Ld4/l0;->V()V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_c
    if-eqz p2, :cond_e

    .line 209
    .line 210
    invoke-virtual {p0, p5, p6}, Ld4/g0;->k(J)J

    .line 211
    .line 212
    .line 213
    move-result-wide p5

    .line 214
    :goto_9
    array-length p1, p3

    .line 215
    if-ge v3, p1, :cond_e

    .line 216
    .line 217
    aget-object p1, p3, v3

    .line 218
    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    aput-boolean v6, p4, v3

    .line 222
    .line 223
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_e
    :goto_a
    iput-boolean v6, p0, Ld4/g0;->C:Z

    .line 227
    .line 228
    return-wide p5
.end method

.method public n()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld4/g0;->u:Z

    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->p:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Ld4/g0;->n:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic o(Lx4/e0$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Ld4/g0$a;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Ld4/g0;->a0(Ld4/g0$a;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld4/g0;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Ld4/g0;->K:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Ld4/g0;->L()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Ld4/g0;->J:I

    .line 14
    .line 15
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Ld4/g0;->D:Z

    .line 19
    .line 20
    iget-wide v0, p0, Ld4/g0;->G:J

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    return-wide v0
.end method

.method public q()Ld4/u0;
    .locals 1

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 5
    .line 6
    iget-object v0, v0, Ld4/g0$e;->a:Ld4/u0;

    .line 7
    .line 8
    return-object v0
.end method

.method public r(JZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ld4/g0;->I()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ld4/g0;->O()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Ld4/g0;->x:Ld4/g0$e;

    .line 12
    .line 13
    iget-object v0, v0, Ld4/g0$e;->c:[Z

    .line 14
    .line 15
    iget-object v1, p0, Ld4/g0;->s:[Ld4/l0;

    .line 16
    .line 17
    array-length v1, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Ld4/g0;->s:[Ld4/l0;

    .line 22
    .line 23
    aget-object v3, v3, v2

    .line 24
    .line 25
    aget-boolean v4, v0, v2

    .line 26
    .line 27
    invoke-virtual {v3, p1, p2, p3, v4}, Ld4/l0;->q(JZZ)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public bridge synthetic s(Lx4/e0$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Ld4/g0$a;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Ld4/g0;->Z(Ld4/g0$a;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(Ld4/r$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/g0;->q:Ld4/r$a;

    .line 2
    .line 3
    iget-object p1, p0, Ld4/g0;->m:Ly4/g;

    .line 4
    .line 5
    invoke-virtual {p1}, Ly4/g;->e()Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ld4/g0;->i0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
