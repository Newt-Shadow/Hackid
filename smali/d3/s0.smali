.class public Ld3/s0;
.super Ls3/u;
.source "SourceFile"

# interfaces
.implements Ly4/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/s0$b;,
        Ld3/s0$c;
    }
.end annotation


# instance fields
.field private final S0:Landroid/content/Context;

.field private final T0:Ld3/v$a;

.field private final U0:Ld3/w;

.field private V0:I

.field private W0:Z

.field private X0:Lb3/x1;

.field private Y0:Lb3/x1;

.field private Z0:J

.field private a1:Z

.field private b1:Z

.field private c1:Z

.field private d1:Z

.field private e1:Lb3/t3$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls3/l$b;Ls3/w;ZLandroid/os/Handler;Ld3/v;Ld3/w;)V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    const v5, 0x472c4400    # 44100.0f

    .line 3
    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Ls3/u;-><init>(ILs3/l$b;Ls3/w;ZF)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ld3/s0;->S0:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p7, p0, Ld3/s0;->U0:Ld3/w;

    .line 19
    .line 20
    new-instance p1, Ld3/v$a;

    .line 21
    .line 22
    invoke-direct {p1, p5, p6}, Ld3/v$a;-><init>(Landroid/os/Handler;Ld3/v;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 26
    .line 27
    new-instance p1, Ld3/s0$c;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-direct {p1, p0, p2}, Ld3/s0$c;-><init>(Ld3/s0;Ld3/s0$a;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p7, p1}, Ld3/w;->o(Ld3/w$c;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static A1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Ly4/q0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    const-string v0, "OMX.SEC.aac.dec"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p0, "samsung"

    .line 16
    .line 17
    sget-object v0, Ly4/q0;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Ly4/q0;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "zeroflte"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, "herolte"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const-string v0, "heroqlte"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    :cond_0
    const/4 p0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    :goto_0
    return p0
.end method

.method private static B1()Z
    .locals 2

    .line 1
    sget v0, Ly4/q0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Ly4/q0;->d:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "ZTE B2017G"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "AXON 7 mini"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private C1(Ls3/s;Lb3/x1;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p1, p1, Ls3/s;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Ly4/q0;->a:I

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Ld3/s0;->S0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Ly4/q0;->w0(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    iget p1, p2, Lb3/x1;->m:I

    .line 32
    .line 33
    return p1
.end method

.method private static E1(Ls3/w;Lb3/x1;ZLd3/w;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lo6/q;->D()Lo6/q;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p3, p1}, Ld3/w;->b(Lb3/x1;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-static {}, Ls3/f0;->v()Ls3/s;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-static {p3}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    invoke-interface {p0, v0, p2, p3}, Ls3/w;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1}, Ls3/f0;->m(Lb3/x1;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Lo6/q;->t(Ljava/util/Collection;)Lo6/q;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Ls3/w;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {}, Lo6/q;->r()Lo6/q$a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Lo6/q$a;->j(Ljava/lang/Iterable;)Lo6/q$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p0}, Lo6/q$a;->j(Ljava/lang/Iterable;)Lo6/q$a;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lo6/q$a;->k()Lo6/q;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method private H1()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-virtual {p0}, Ld3/s0;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ld3/w;->m(Z)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Ld3/s0;->b1:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v2, p0, Ld3/s0;->Z0:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    iput-wide v0, p0, Ld3/s0;->Z0:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Ld3/s0;->b1:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method static synthetic y1(Ld3/s0;)Ld3/v$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z1(Ld3/s0;)Lb3/t3$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ld3/s0;->e1:Lb3/t3$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected B0(Ls3/w;Lb3/x1;Z)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Ld3/s0;->E1(Ls3/w;Lb3/x1;ZLd3/w;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p2}, Ls3/f0;->u(Ljava/util/List;Lb3/x1;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected D0(Ls3/s;Lb3/x1;Landroid/media/MediaCrypto;F)Ls3/l$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb3/o;->M()[Lb3/x1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Ld3/s0;->D1(Ls3/s;Lb3/x1;[Lb3/x1;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ld3/s0;->V0:I

    .line 10
    .line 11
    iget-object v0, p1, Ls3/s;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Ld3/s0;->A1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Ld3/s0;->W0:Z

    .line 18
    .line 19
    iget-object v0, p1, Ls3/s;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Ld3/s0;->V0:I

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0, v1, p4}, Ld3/s0;->F1(Lb3/x1;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    iget-object v0, p1, Ls3/s;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "audio/raw"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p2, Lb3/x1;->l:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    move-object v0, p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    iput-object v0, p0, Ld3/s0;->Y0:Lb3/x1;

    .line 54
    .line 55
    invoke-static {p1, p4, p2, p3}, Ls3/l$a;->a(Ls3/s;Landroid/media/MediaFormat;Lb3/x1;Landroid/media/MediaCrypto;)Ls3/l$a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method protected D1(Ls3/s;Lb3/x1;[Lb3/x1;)I
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Ld3/s0;->C1(Ls3/s;Lb3/x1;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    array-length v1, p3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    array-length v1, p3

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, p3, v2

    .line 15
    .line 16
    invoke-virtual {p1, p2, v3}, Ls3/s;->f(Lb3/x1;Lb3/x1;)Le3/i;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v4, v4, Le3/i;->d:I

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1, v3}, Ld3/s0;->C1(Ls3/s;Lb3/x1;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method public E()Ly4/t;
    .locals 0

    .line 1
    return-object p0
.end method

.method protected F1(Lb3/x1;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mime"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p1, Lb3/x1;->y:I

    .line 12
    .line 13
    const-string v1, "channel-count"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string p2, "sample-rate"

    .line 19
    .line 20
    iget v1, p1, Lb3/x1;->z:I

    .line 21
    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lb3/x1;->n:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v0, p2}, Ly4/u;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "max-input-size"

    .line 31
    .line 32
    invoke-static {v0, p2, p3}, Ly4/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sget p2, Ly4/q0;->a:I

    .line 36
    .line 37
    const/16 p3, 0x17

    .line 38
    .line 39
    if-lt p2, p3, :cond_0

    .line 40
    .line 41
    const-string p3, "priority"

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    cmpl-float p3, p4, p3

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    invoke-static {}, Ld3/s0;->B1()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_0

    .line 58
    .line 59
    const-string p3, "operating-rate"

    .line 60
    .line 61
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const/16 p3, 0x1c

    .line 65
    .line 66
    if-gt p2, p3, :cond_1

    .line 67
    .line 68
    const-string p3, "audio/ac4"

    .line 69
    .line 70
    iget-object p4, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_1

    .line 77
    .line 78
    const-string p3, "ac4-is-sync"

    .line 79
    .line 80
    const/4 p4, 0x1

    .line 81
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const/16 p3, 0x18

    .line 85
    .line 86
    if-lt p2, p3, :cond_2

    .line 87
    .line 88
    iget-object p3, p0, Ld3/s0;->U0:Ld3/w;

    .line 89
    .line 90
    iget p4, p1, Lb3/x1;->y:I

    .line 91
    .line 92
    iget p1, p1, Lb3/x1;->z:I

    .line 93
    .line 94
    const/4 v1, 0x4

    .line 95
    invoke-static {v1, p4, p1}, Ly4/q0;->c0(III)Lb3/x1;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p3, p1}, Ld3/w;->v(Lb3/x1;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 p3, 0x2

    .line 104
    if-ne p1, p3, :cond_2

    .line 105
    .line 106
    const-string p1, "pcm-encoding"

    .line 107
    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    const/16 p1, 0x20

    .line 112
    .line 113
    if-lt p2, p1, :cond_3

    .line 114
    .line 115
    const-string p1, "max-output-channel-count"

    .line 116
    .line 117
    const/16 p2, 0x63

    .line 118
    .line 119
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-object v0
.end method

.method protected G1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld3/s0;->b1:Z

    .line 3
    .line 4
    return-void
.end method

.method protected O()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld3/s0;->c1:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld3/s0;->X0:Lb3/x1;

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 8
    .line 9
    invoke-interface {v0}, Ld3/w;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-super {p0}, Ls3/u;->O()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 16
    .line 17
    iget-object v1, p0, Ls3/u;->N0:Le3/e;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ld3/v$a;->o(Le3/e;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 25
    .line 26
    iget-object v2, p0, Ls3/u;->N0:Le3/e;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ld3/v$a;->o(Le3/e;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    :try_start_2
    invoke-super {p0}, Ls3/u;->O()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 37
    .line 38
    iget-object v2, p0, Ls3/u;->N0:Le3/e;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ld3/v$a;->o(Le3/e;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :catchall_2
    move-exception v0

    .line 45
    iget-object v1, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 46
    .line 47
    iget-object v2, p0, Ls3/u;->N0:Le3/e;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ld3/v$a;->o(Le3/e;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method protected P(ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ls3/u;->P(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 5
    .line 6
    iget-object p2, p0, Ls3/u;->N0:Le3/e;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ld3/v$a;->p(Le3/e;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lb3/o;->I()Lb3/v3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-boolean p1, p1, Lb3/v3;->a:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 20
    .line 21
    invoke-interface {p1}, Ld3/w;->t()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 26
    .line 27
    invoke-interface {p1}, Ld3/w;->n()V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 31
    .line 32
    invoke-virtual {p0}, Lb3/o;->L()Lc3/t3;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, p2}, Ld3/w;->p(Lc3/t3;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected Q(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ls3/u;->Q(JZ)V

    .line 2
    .line 3
    .line 4
    iget-boolean p3, p0, Ld3/s0;->d1:Z

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Ld3/s0;->U0:Ld3/w;

    .line 9
    .line 10
    invoke-interface {p3}, Ld3/w;->x()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Ld3/s0;->U0:Ld3/w;

    .line 15
    .line 16
    invoke-interface {p3}, Ld3/w;->flush()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-wide p1, p0, Ld3/s0;->Z0:J

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Ld3/s0;->a1:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Ld3/s0;->b1:Z

    .line 25
    .line 26
    return-void
.end method

.method protected Q0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Ly4/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ld3/v$a;->k(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected R()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ls3/u;->R()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Ld3/s0;->c1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-boolean v0, p0, Ld3/s0;->c1:Z

    .line 10
    .line 11
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 12
    .line 13
    invoke-interface {v0}, Ld3/w;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    iget-boolean v2, p0, Ld3/s0;->c1:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iput-boolean v0, p0, Ld3/s0;->c1:Z

    .line 23
    .line 24
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 25
    .line 26
    invoke-interface {v0}, Ld3/w;->a()V

    .line 27
    .line 28
    .line 29
    :cond_1
    throw v1
.end method

.method protected R0(Ljava/lang/String;Ls3/l$a;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p3

    .line 5
    move-wide v4, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Ld3/v$a;->m(Ljava/lang/String;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected S()V
    .locals 1

    .line 1
    invoke-super {p0}, Ls3/u;->S()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 5
    .line 6
    invoke-interface {v0}, Ld3/w;->u()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected S0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld3/v$a;->n(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected T()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld3/s0;->H1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 5
    .line 6
    invoke-interface {v0}, Ld3/w;->pause()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Ls3/u;->T()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected T0(Lb3/y1;)Le3/i;
    .locals 2

    .line 1
    iget-object v0, p1, Lb3/y1;->b:Lb3/x1;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lb3/x1;

    .line 8
    .line 9
    iput-object v0, p0, Ld3/s0;->X0:Lb3/x1;

    .line 10
    .line 11
    invoke-super {p0, p1}, Ls3/u;->T0(Lb3/y1;)Le3/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Ld3/s0;->T0:Ld3/v$a;

    .line 16
    .line 17
    iget-object v1, p0, Ld3/s0;->X0:Lb3/x1;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Ld3/v$a;->q(Lb3/x1;Le3/i;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method protected U0(Lb3/x1;Landroid/media/MediaFormat;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld3/s0;->Y0:Lb3/x1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ls3/u;->w0()Ls3/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    iget-object v0, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "audio/raw"

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget v0, p1, Lb3/x1;->A:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget v0, Ly4/q0;->a:I

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    if-lt v0, v4, :cond_3

    .line 36
    .line 37
    const-string v0, "pcm-encoding"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ly4/q0;->b0(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v0, 0x2

    .line 68
    :goto_0
    new-instance v4, Lb3/x1$b;

    .line 69
    .line 70
    invoke-direct {v4}, Lb3/x1$b;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v3}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v0}, Lb3/x1$b;->a0(I)Lb3/x1$b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget v3, p1, Lb3/x1;->B:I

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lb3/x1$b;->P(I)Lb3/x1$b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v3, p1, Lb3/x1;->C:I

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Lb3/x1$b;->Q(I)Lb3/x1$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, "channel-count"

    .line 94
    .line 95
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v0, v3}, Lb3/x1$b;->J(I)Lb3/x1$b;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v3, "sample-rate"

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {v0, p2}, Lb3/x1$b;->h0(I)Lb3/x1$b;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lb3/x1$b;->G()Lb3/x1;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iget-boolean v0, p0, Ld3/s0;->W0:Z

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget v0, p2, Lb3/x1;->y:I

    .line 122
    .line 123
    const/4 v3, 0x6

    .line 124
    if-ne v0, v3, :cond_5

    .line 125
    .line 126
    iget v0, p1, Lb3/x1;->y:I

    .line 127
    .line 128
    if-ge v0, v3, :cond_5

    .line 129
    .line 130
    new-array v2, v0, [I

    .line 131
    .line 132
    move v0, v1

    .line 133
    :goto_1
    iget v3, p1, Lb3/x1;->y:I

    .line 134
    .line 135
    if-ge v0, v3, :cond_5

    .line 136
    .line 137
    aput v0, v2, v0

    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object p1, p2

    .line 143
    :goto_2
    :try_start_0
    iget-object p2, p0, Ld3/s0;->U0:Ld3/w;

    .line 144
    .line 145
    invoke-interface {p2, p1, v1, v2}, Ld3/w;->z(Lb3/x1;I[I)V
    :try_end_0
    .catch Ld3/w$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catch_0
    move-exception p1

    .line 150
    iget-object p2, p1, Ld3/w$a;->a:Lb3/x1;

    .line 151
    .line 152
    const/16 v0, 0x1389

    .line 153
    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lb3/o;->G(Ljava/lang/Throwable;Lb3/x1;I)Lb3/a0;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    throw p1
.end method

.method protected V0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ld3/w;->q(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected X0()V
    .locals 1

    .line 1
    invoke-super {p0}, Ls3/u;->X0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 5
    .line 6
    invoke-interface {v0}, Ld3/w;->s()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected Y0(Le3/g;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld3/s0;->a1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Le3/a;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-wide v0, p1, Le3/g;->e:J

    .line 12
    .line 13
    iget-wide v2, p0, Ld3/s0;->Z0:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x7a120

    .line 21
    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-wide v0, p1, Le3/g;->e:J

    .line 28
    .line 29
    iput-wide v0, p0, Ld3/s0;->Z0:J

    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Ld3/s0;->a1:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method protected a0(Ls3/s;Lb3/x1;Lb3/x1;)Le3/i;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Ls3/s;->f(Lb3/x1;Lb3/x1;)Le3/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Le3/i;->e:I

    .line 6
    .line 7
    invoke-direct {p0, p1, p3}, Ld3/s0;->C1(Ls3/s;Lb3/x1;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Ld3/s0;->V0:I

    .line 12
    .line 13
    if-le v2, v3, :cond_0

    .line 14
    .line 15
    or-int/lit8 v1, v1, 0x40

    .line 16
    .line 17
    :cond_0
    move v7, v1

    .line 18
    new-instance v1, Le3/i;

    .line 19
    .line 20
    iget-object v3, p1, Ls3/s;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget p1, v0, Le3/i;->d:I

    .line 27
    .line 28
    :goto_0
    move v6, p1

    .line 29
    move-object v2, v1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    invoke-direct/range {v2 .. v7}, Le3/i;-><init>(Ljava/lang/String;Lb3/x1;Lb3/x1;II)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method protected a1(JJLs3/l;Ljava/nio/ByteBuffer;IIIJZZLb3/x1;)Z
    .locals 0

    .line 1
    invoke-static {p6}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ld3/s0;->Y0:Lb3/x1;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    and-int/lit8 p1, p8, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p5}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ls3/l;

    .line 19
    .line 20
    invoke-interface {p1, p7, p3}, Ls3/l;->g(IZ)V

    .line 21
    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    if-eqz p12, :cond_2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    invoke-interface {p5, p7, p3}, Ls3/l;->g(IZ)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Ls3/u;->N0:Le3/e;

    .line 32
    .line 33
    iget p3, p1, Le3/e;->f:I

    .line 34
    .line 35
    add-int/2addr p3, p9

    .line 36
    iput p3, p1, Le3/e;->f:I

    .line 37
    .line 38
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 39
    .line 40
    invoke-interface {p1}, Ld3/w;->s()V

    .line 41
    .line 42
    .line 43
    return p2

    .line 44
    :cond_2
    :try_start_0
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 45
    .line 46
    invoke-interface {p1, p6, p10, p11, p9}, Ld3/w;->w(Ljava/nio/ByteBuffer;JI)Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catch Ld3/w$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ld3/w$e; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    invoke-interface {p5, p7, p3}, Ls3/l;->g(IZ)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Ls3/u;->N0:Le3/e;

    .line 58
    .line 59
    iget p3, p1, Le3/e;->e:I

    .line 60
    .line 61
    add-int/2addr p3, p9

    .line 62
    iput p3, p1, Le3/e;->e:I

    .line 63
    .line 64
    return p2

    .line 65
    :cond_4
    return p3

    .line 66
    :catch_0
    move-exception p1

    .line 67
    iget-boolean p2, p1, Ld3/w$e;->b:Z

    .line 68
    .line 69
    const/16 p3, 0x138a

    .line 70
    .line 71
    invoke-virtual {p0, p1, p14, p2, p3}, Lb3/o;->H(Ljava/lang/Throwable;Lb3/x1;ZI)Lb3/a0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    throw p1

    .line 76
    :catch_1
    move-exception p1

    .line 77
    iget-object p2, p0, Ld3/s0;->X0:Lb3/x1;

    .line 78
    .line 79
    iget-boolean p3, p1, Ld3/w$b;->b:Z

    .line 80
    .line 81
    const/16 p4, 0x1389

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lb3/o;->H(Ljava/lang/Throwable;Lb3/x1;ZI)Lb3/a0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    throw p1
.end method

.method public c(Lb3/l3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ld3/w;->c(Lb3/l3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ls3/u;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 8
    .line 9
    invoke-interface {v0}, Ld3/w;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method protected f1()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0}, Ld3/w;->i()V
    :try_end_0
    .catch Ld3/w$e; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, v0, Ld3/w$e;->c:Lb3/x1;

    .line 9
    .line 10
    iget-boolean v2, v0, Ld3/w$e;->b:Z

    .line 11
    .line 12
    const/16 v3, 0x138a

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2, v3}, Lb3/o;->H(Ljava/lang/Throwable;Lb3/x1;ZI)Lb3/a0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0
.end method

.method public g()Lb3/l3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0}, Ld3/w;->g()Lb3/l3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0}, Ld3/w;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0}, Ls3/u;->isReady()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public s()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb3/o;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Ld3/s0;->H1()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Ld3/s0;->Z0:J

    .line 12
    .line 13
    return-wide v0
.end method

.method protected s1(Lb3/x1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/s0;->U0:Ld3/w;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ld3/w;->b(Lb3/x1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected t1(Ls3/w;Lb3/x1;)I
    .locals 10

    .line 1
    iget-object v0, p2, Lb3/x1;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/v;->o(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lb3/u3;->v(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    sget v0, Ly4/q0;->a:I

    .line 16
    .line 17
    const/16 v2, 0x15

    .line 18
    .line 19
    if-lt v0, v2, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    iget v2, p2, Lb3/x1;->G:I

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v2, v1

    .line 33
    :goto_1
    invoke-static {p2}, Ls3/u;->u1(Lb3/x1;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    iget-object v7, p0, Ld3/s0;->U0:Ld3/w;

    .line 43
    .line 44
    invoke-interface {v7, p2}, Ld3/w;->b(Lb3/x1;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-static {}, Ls3/f0;->v()Ls3/s;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    :cond_3
    invoke-static {v6, v5, v0}, Lb3/u3;->r(III)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1

    .line 63
    :cond_4
    const-string v2, "audio/raw"

    .line 64
    .line 65
    iget-object v7, p2, Lb3/x1;->l:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    iget-object v2, p0, Ld3/s0;->U0:Ld3/w;

    .line 74
    .line 75
    invoke-interface {v2, p2}, Ld3/w;->b(Lb3/x1;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    invoke-static {v3}, Lb3/u3;->v(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :cond_5
    iget-object v2, p0, Ld3/s0;->U0:Ld3/w;

    .line 87
    .line 88
    iget v7, p2, Lb3/x1;->y:I

    .line 89
    .line 90
    iget v8, p2, Lb3/x1;->z:I

    .line 91
    .line 92
    const/4 v9, 0x2

    .line 93
    invoke-static {v9, v7, v8}, Ly4/q0;->c0(III)Lb3/x1;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-interface {v2, v7}, Ld3/w;->b(Lb3/x1;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    invoke-static {v3}, Lb3/u3;->v(I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :cond_6
    iget-object v2, p0, Ld3/s0;->U0:Ld3/w;

    .line 109
    .line 110
    invoke-static {p1, p2, v1, v2}, Ld3/s0;->E1(Ls3/w;Lb3/x1;ZLd3/w;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-static {v3}, Lb3/u3;->v(I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    return p1

    .line 125
    :cond_7
    if-nez v4, :cond_8

    .line 126
    .line 127
    invoke-static {v9}, Lb3/u3;->v(I)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ls3/s;

    .line 137
    .line 138
    invoke-virtual {v2, p2}, Ls3/s;->o(Lb3/x1;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_a

    .line 143
    .line 144
    move v7, v3

    .line 145
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-ge v7, v8, :cond_a

    .line 150
    .line 151
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Ls3/s;

    .line 156
    .line 157
    invoke-virtual {v8, p2}, Ls3/s;->o(Lb3/x1;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_9

    .line 162
    .line 163
    move p1, v1

    .line 164
    move-object v2, v8

    .line 165
    goto :goto_3

    .line 166
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    move p1, v3

    .line 170
    move v3, v4

    .line 171
    :goto_3
    if-eqz v3, :cond_b

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    const/4 v6, 0x3

    .line 175
    :goto_4
    if-eqz v3, :cond_c

    .line 176
    .line 177
    invoke-virtual {v2, p2}, Ls3/s;->r(Lb3/x1;)Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-eqz p2, :cond_c

    .line 182
    .line 183
    const/16 v5, 0x10

    .line 184
    .line 185
    :cond_c
    iget-boolean p2, v2, Ls3/s;->h:Z

    .line 186
    .line 187
    if-eqz p2, :cond_d

    .line 188
    .line 189
    const/16 p2, 0x40

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_d
    move p2, v1

    .line 193
    :goto_5
    if-eqz p1, :cond_e

    .line 194
    .line 195
    const/16 v1, 0x80

    .line 196
    .line 197
    :cond_e
    invoke-static {v6, v5, v0, p2, v1}, Lb3/u3;->n(IIIII)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    return p1
.end method

.method public y(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lb3/o;->y(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    sget p1, Ly4/q0;->a:I

    .line 18
    .line 19
    const/16 v0, 0x17

    .line 20
    .line 21
    if-lt p1, v0, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 24
    .line 25
    invoke-static {p1, p2}, Ld3/s0$b;->a(Ld3/w;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_1
    check-cast p2, Lb3/t3$a;

    .line 30
    .line 31
    iput-object p2, p0, Ld3/s0;->e1:Lb3/t3$a;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_2
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-interface {p1, p2}, Ld3/w;->l(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-interface {p1, p2}, Ld3/w;->y(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    check-cast p2, Ld3/z;

    .line 59
    .line 60
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Ld3/w;->r(Ld3/z;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    check-cast p2, Ld3/e;

    .line 67
    .line 68
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 69
    .line 70
    invoke-interface {p1, p2}, Ld3/w;->k(Ld3/e;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Ld3/s0;->U0:Ld3/w;

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Float;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-interface {p1, p2}, Ld3/w;->e(F)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_0
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected z0(FLb3/x1;[Lb3/x1;)F
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    aget-object v3, p3, v1

    .line 8
    .line 9
    iget v3, v3, Lb3/x1;->z:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    int-to-float p2, v2

    .line 26
    mul-float/2addr p1, p2

    .line 27
    :goto_1
    return p1
.end method
