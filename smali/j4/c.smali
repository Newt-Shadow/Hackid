.class public final Lj4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/l;
.implements Lx4/e0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj4/c$b;,
        Lj4/c$c;
    }
.end annotation


# static fields
.field public static final p:Lj4/l$a;


# instance fields
.field private final a:Li4/g;

.field private final b:Lj4/k;

.field private final c:Lx4/d0;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:D

.field private g:Ld4/a0$a;

.field private h:Lx4/e0;

.field private i:Landroid/os/Handler;

.field private j:Lj4/l$e;

.field private k:Lj4/h;

.field private l:Landroid/net/Uri;

.field private m:Lj4/g;

.field private n:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lj4/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj4/c;->p:Lj4/l$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Li4/g;Lx4/d0;Lj4/k;)V
    .locals 6

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lj4/c;-><init>(Li4/g;Lx4/d0;Lj4/k;D)V

    return-void
.end method

.method public constructor <init>(Li4/g;Lx4/d0;Lj4/k;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lj4/c;->a:Li4/g;

    .line 4
    iput-object p3, p0, Lj4/c;->b:Lj4/k;

    .line 5
    iput-object p2, p0, Lj4/c;->c:Lx4/d0;

    .line 6
    iput-wide p4, p0, Lj4/c;->f:D

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lj4/c;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lj4/c;->o:J

    return-void
.end method

.method static synthetic A(Lj4/c;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lj4/c;)Li4/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->a:Li4/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lj4/c;)Ld4/a0$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->g:Ld4/a0$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lj4/c;)Lx4/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->c:Lx4/d0;

    .line 2
    .line 3
    return-object p0
.end method

.method private E(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/net/Uri;

    .line 13
    .line 14
    new-instance v3, Lj4/c$c;

    .line 15
    .line 16
    invoke-direct {v3, p0, v2}, Lj4/c$c;-><init>(Lj4/c;Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static F(Lj4/g;Lj4/g;)Lj4/g$d;
    .locals 4

    .line 1
    iget-wide v0, p1, Lj4/g;->k:J

    .line 2
    .line 3
    iget-wide v2, p0, Lj4/g;->k:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    long-to-int p1, v0

    .line 7
    iget-object p0, p0, Lj4/g;->r:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lj4/g$d;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method private G(Lj4/g;Lj4/g;)Lj4/g;
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Lj4/g;->f(Lj4/g;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p2, p2, Lj4/g;->o:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lj4/g;->d()Lj4/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lj4/c;->I(Lj4/g;Lj4/g;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-direct {p0, p1, p2}, Lj4/c;->H(Lj4/g;Lj4/g;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p2, v0, v1, p1}, Lj4/g;->c(JI)Lj4/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private H(Lj4/g;Lj4/g;)I
    .locals 3

    .line 1
    iget-boolean v0, p2, Lj4/g;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p2, Lj4/g;->j:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lj4/c;->m:Lj4/g;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, v0, Lj4/g;->j:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-static {p1, p2}, Lj4/c;->F(Lj4/g;Lj4/g;)Lj4/g$d;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget p1, p1, Lj4/g;->j:I

    .line 27
    .line 28
    iget v0, v2, Lj4/g$e;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iget-object p2, p2, Lj4/g;->r:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lj4/g$d;

    .line 38
    .line 39
    iget p2, p2, Lj4/g$e;->d:I

    .line 40
    .line 41
    sub-int/2addr p1, p2

    .line 42
    return p1

    .line 43
    :cond_3
    return v0
.end method

.method private I(Lj4/g;Lj4/g;)J
    .locals 8

    .line 1
    iget-boolean v0, p2, Lj4/g;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p2, Lj4/g;->h:J

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    iget-object v0, p0, Lj4/c;->m:Lj4/g;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v0, v0, Lj4/g;->h:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_2
    iget-object v2, p1, Lj4/g;->r:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {p1, p2}, Lj4/c;->F(Lj4/g;Lj4/g;)Lj4/g$d;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-wide p1, p1, Lj4/g;->h:J

    .line 33
    .line 34
    iget-wide v0, v3, Lj4/g$e;->e:J

    .line 35
    .line 36
    add-long/2addr p1, v0

    .line 37
    return-wide p1

    .line 38
    :cond_3
    int-to-long v2, v2

    .line 39
    iget-wide v4, p2, Lj4/g;->k:J

    .line 40
    .line 41
    iget-wide v6, p1, Lj4/g;->k:J

    .line 42
    .line 43
    sub-long/2addr v4, v6

    .line 44
    cmp-long p2, v2, v4

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Lj4/g;->e()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    return-wide p1

    .line 53
    :cond_4
    return-wide v0
.end method

.method private J(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lj4/c;->m:Lj4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lj4/g;->v:Lj4/g$f;

    .line 6
    .line 7
    iget-boolean v1, v1, Lj4/g$f;->e:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lj4/g;->t:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lj4/g$c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-wide v1, v0, Lj4/g$c;->b:J

    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "_HLS_msn"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    iget v0, v0, Lj4/g$c;->c:I

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    const-string v1, "_HLS_part"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    return-object p1
.end method

.method private K(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lj4/c;->k:Lj4/h;

    .line 2
    .line 3
    iget-object v0, v0, Lj4/h;->e:Ljava/util/List;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lj4/h$b;

    .line 18
    .line 19
    iget-object v3, v3, Lj4/h$b;->a:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method private L()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lj4/c;->k:Lj4/h;

    .line 2
    .line 3
    iget-object v0, v0, Lj4/h;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v1, :cond_1

    .line 16
    .line 17
    iget-object v6, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, Lj4/h$b;

    .line 24
    .line 25
    iget-object v7, v7, Lj4/h$b;->a:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Lj4/c$c;

    .line 32
    .line 33
    invoke-static {v6}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lj4/c$c;

    .line 38
    .line 39
    invoke-static {v6}, Lj4/c$c;->d(Lj4/c$c;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    cmp-long v7, v2, v7

    .line 44
    .line 45
    if-lez v7, :cond_0

    .line 46
    .line 47
    invoke-static {v6}, Lj4/c$c;->e(Lj4/c$c;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lj4/c;->J(Landroid/net/Uri;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v6, v0}, Lj4/c$c;->f(Lj4/c$c;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v4
.end method

.method private M(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lj4/c;->K(Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lj4/c;->m:Lj4/g;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, v0, Lj4/g;->o:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 25
    .line 26
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lj4/c$c;

    .line 33
    .line 34
    invoke-static {v0}, Lj4/c$c;->g(Lj4/c$c;)Lj4/g;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-boolean v2, v1, Lj4/g;->o:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iput-object v1, p0, Lj4/c;->m:Lj4/g;

    .line 45
    .line 46
    iget-object p1, p0, Lj4/c;->j:Lj4/l$e;

    .line 47
    .line 48
    invoke-interface {p1, v1}, Lj4/l$e;->m(Lj4/g;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lj4/c;->J(Landroid/net/Uri;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Lj4/c$c;->f(Lj4/c$c;Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method private N(Landroid/net/Uri;Lx4/d0$c;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lj4/l$b;

    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3}, Lj4/l$b;->g(Landroid/net/Uri;Lx4/d0$c;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method private R(Landroid/net/Uri;Lj4/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lj4/c;->m:Lj4/g;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p2, Lj4/g;->o:Z

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lj4/c;->n:Z

    .line 18
    .line 19
    iget-wide v0, p2, Lj4/g;->h:J

    .line 20
    .line 21
    iput-wide v0, p0, Lj4/c;->o:J

    .line 22
    .line 23
    :cond_0
    iput-object p2, p0, Lj4/c;->m:Lj4/g;

    .line 24
    .line 25
    iget-object p1, p0, Lj4/c;->j:Lj4/l$e;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lj4/l$e;->m(Lj4/g;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lj4/l$b;

    .line 47
    .line 48
    invoke-interface {p2}, Lj4/l$b;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method static synthetic n(Lj4/c;Landroid/net/Uri;Lx4/d0$c;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lj4/c;->N(Landroid/net/Uri;Lx4/d0$c;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic p(Lj4/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->i:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lj4/c;)Lj4/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->k:Lj4/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lj4/c;)Lj4/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->b:Lj4/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lj4/c;Lj4/g;Lj4/g;)Lj4/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj4/c;->G(Lj4/g;Lj4/g;)Lj4/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic u(Lj4/c;Landroid/net/Uri;Lj4/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj4/c;->R(Landroid/net/Uri;Lj4/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lj4/c;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lj4/c;->f:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic w(Lj4/c;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lj4/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lj4/c;->L()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic y(Lj4/c;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lj4/c;)Lj4/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/c;->m:Lj4/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public O(Lx4/g0;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Ld4/n;

    .line 5
    .line 6
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Lx4/g0;->b:Lx4/n;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lj4/c;->c:Lx4/d0;

    .line 31
    .line 32
    iget-wide v3, v1, Lx4/g0;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lj4/c;->g:Ld4/a0$a;

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-virtual {v1, v14, v2}, Ld4/a0$a;->q(Ld4/n;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public P(Lx4/g0;JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->e()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lj4/i;

    .line 10
    .line 11
    instance-of v3, v2, Lj4/g;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v2, Lj4/i;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v4}, Lj4/h;->e(Ljava/lang/String;)Lj4/h;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v2

    .line 23
    check-cast v4, Lj4/h;

    .line 24
    .line 25
    :goto_0
    iput-object v4, v0, Lj4/c;->k:Lj4/h;

    .line 26
    .line 27
    iget-object v5, v4, Lj4/h;->e:Ljava/util/List;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lj4/h$b;

    .line 35
    .line 36
    iget-object v5, v5, Lj4/h$b;->a:Landroid/net/Uri;

    .line 37
    .line 38
    iput-object v5, v0, Lj4/c;->l:Landroid/net/Uri;

    .line 39
    .line 40
    iget-object v5, v0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    new-instance v6, Lj4/c$b;

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-direct {v6, v0, v7}, Lj4/c$b;-><init>(Lj4/c;Lj4/c$a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v4, v4, Lj4/h;->d:Ljava/util/List;

    .line 52
    .line 53
    invoke-direct {v0, v4}, Lj4/c;->E(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Ld4/n;

    .line 57
    .line 58
    iget-wide v6, v1, Lx4/g0;->a:J

    .line 59
    .line 60
    iget-object v8, v1, Lx4/g0;->b:Lx4/n;

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 71
    .line 72
    .line 73
    move-result-wide v15

    .line 74
    move-object v5, v4

    .line 75
    move-wide/from16 v11, p2

    .line 76
    .line 77
    move-wide/from16 v13, p4

    .line 78
    .line 79
    invoke-direct/range {v5 .. v16}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v0, Lj4/c;->d:Ljava/util/HashMap;

    .line 83
    .line 84
    iget-object v6, v0, Lj4/c;->l:Landroid/net/Uri;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Lj4/c$c;

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    check-cast v2, Lj4/g;

    .line 95
    .line 96
    invoke-static {v5, v2, v4}, Lj4/c$c;->c(Lj4/c$c;Lj4/g;Ld4/n;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v5}, Lj4/c$c;->n()V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v2, v0, Lj4/c;->c:Lx4/d0;

    .line 104
    .line 105
    iget-wide v5, v1, Lx4/g0;->a:J

    .line 106
    .line 107
    invoke-interface {v2, v5, v6}, Lx4/d0;->c(J)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lj4/c;->g:Ld4/a0$a;

    .line 111
    .line 112
    const/4 v2, 0x4

    .line 113
    invoke-virtual {v1, v4, v2}, Ld4/a0$a;->t(Ld4/n;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public Q(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Ld4/n;

    .line 8
    .line 9
    iget-wide v4, v1, Lx4/g0;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lx4/g0;->b:Lx4/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->f()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->d()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx4/g0;->b()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ld4/q;

    .line 34
    .line 35
    iget v4, v1, Lx4/g0;->c:I

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ld4/q;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lj4/c;->c:Lx4/d0;

    .line 41
    .line 42
    new-instance v5, Lx4/d0$c;

    .line 43
    .line 44
    move/from16 v6, p7

    .line 45
    .line 46
    invoke-direct {v5, v15, v3, v2, v6}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v5}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v5, v3, v5

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v5, v6

    .line 66
    :goto_0
    iget-object v7, v0, Lj4/c;->g:Ld4/a0$a;

    .line 67
    .line 68
    iget v8, v1, Lx4/g0;->c:I

    .line 69
    .line 70
    invoke-virtual {v7, v15, v8, v2, v5}, Ld4/a0$a;->x(Ld4/n;ILjava/io/IOException;Z)V

    .line 71
    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v2, v0, Lj4/c;->c:Lx4/d0;

    .line 76
    .line 77
    iget-wide v7, v1, Lx4/g0;->a:J

    .line 78
    .line 79
    invoke-interface {v2, v7, v8}, Lx4/d0;->c(J)V

    .line 80
    .line 81
    .line 82
    :cond_1
    if-eqz v5, :cond_2

    .line 83
    .line 84
    sget-object v1, Lx4/e0;->g:Lx4/e0$c;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v6, v3, v4}, Lx4/e0;->h(ZJ)Lx4/e0$c;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    return-object v1
.end method

.method public a(Landroid/net/Uri;Ld4/a0$a;Lj4/l$e;)V
    .locals 7

    .line 1
    invoke-static {}, Ly4/q0;->w()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lj4/c;->i:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p2, p0, Lj4/c;->g:Ld4/a0$a;

    .line 8
    .line 9
    iput-object p3, p0, Lj4/c;->j:Lj4/l$e;

    .line 10
    .line 11
    new-instance p3, Lx4/g0;

    .line 12
    .line 13
    iget-object v0, p0, Lj4/c;->a:Li4/g;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-interface {v0, v1}, Li4/g;->a(I)Lx4/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lj4/c;->b:Lj4/k;

    .line 21
    .line 22
    invoke-interface {v2}, Lj4/k;->b()Lx4/g0$a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {p3, v0, p1, v1, v2}, Lx4/g0;-><init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lj4/c;->h:Lx4/e0;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    invoke-static {p1}, Ly4/a;->f(Z)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lx4/e0;

    .line 40
    .line 41
    const-string v0, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lx4/e0;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lj4/c;->h:Lx4/e0;

    .line 47
    .line 48
    iget-object v0, p0, Lj4/c;->c:Lx4/d0;

    .line 49
    .line 50
    iget v1, p3, Lx4/g0;->c:I

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lx4/d0;->d(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, p3, p0, v0}, Lx4/e0;->n(Lx4/e0$e;Lx4/e0$b;I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    new-instance p1, Ld4/n;

    .line 61
    .line 62
    iget-wide v2, p3, Lx4/g0;->a:J

    .line 63
    .line 64
    iget-object v4, p3, Lx4/g0;->b:Lx4/n;

    .line 65
    .line 66
    move-object v1, p1

    .line 67
    invoke-direct/range {v1 .. v6}, Ld4/n;-><init>(JLx4/n;J)V

    .line 68
    .line 69
    .line 70
    iget p3, p3, Lx4/g0;->c:I

    .line 71
    .line 72
    invoke-virtual {p2, p1, p3}, Ld4/a0$a;->z(Ld4/n;I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public b(Lj4/l$b;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj4/c$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lj4/c$c;->l()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public d(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj4/c$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lj4/c$c;->r()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj4/c;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj4/c;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Lj4/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->k:Lj4/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h(Lx4/e0$e;JJLjava/io/IOException;I)Lx4/e0$c;
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lj4/c;->Q(Lx4/g0;JJLjava/io/IOException;I)Lx4/e0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public i(Lj4/l$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Landroid/net/Uri;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj4/c$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Lj4/c$c;->b(Lj4/c$c;J)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->h:Lx4/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lx4/e0;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj4/c;->d(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public l(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj4/c$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lj4/c$c;->n()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public m(Landroid/net/Uri;Z)Lj4/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj4/c$c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lj4/c$c;->k()Lj4/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lj4/c;->M(Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method public bridge synthetic o(Lx4/e0$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lj4/c;->P(Lx4/g0;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic s(Lx4/e0$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lx4/g0;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lj4/c;->O(Lx4/g0;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lj4/c;->l:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p0, Lj4/c;->m:Lj4/g;

    .line 5
    .line 6
    iput-object v0, p0, Lj4/c;->k:Lj4/h;

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lj4/c;->o:J

    .line 14
    .line 15
    iget-object v1, p0, Lj4/c;->h:Lx4/e0;

    .line 16
    .line 17
    invoke-virtual {v1}, Lx4/e0;->l()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lj4/c;->h:Lx4/e0;

    .line 21
    .line 22
    iget-object v1, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lj4/c$c;

    .line 43
    .line 44
    invoke-virtual {v2}, Lj4/c$c;->x()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lj4/c;->i:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lj4/c;->i:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v0, p0, Lj4/c;->d:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
