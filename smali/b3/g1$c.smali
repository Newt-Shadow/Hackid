.class final Lb3/g1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/y;
.implements Ld3/v;
.implements Lm4/n;
.implements Lt3/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lb3/m$b;
.implements Lb3/b$b;
.implements Lb3/b4$b;
.implements Lb3/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lb3/g1;


# direct methods
.method private constructor <init>(Lb3/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb3/g1;Lb3/g1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb3/g1$c;-><init>(Lb3/g1;)V

    return-void
.end method

.method public static synthetic B(Lt3/a;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->M(Lt3/a;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic C(Lz4/a0;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->Q(Lz4/a0;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic D(IZLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb3/g1$c;->P(IZLb3/m3$d;)V

    return-void
.end method

.method public static synthetic E(Lm4/e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->K(Lm4/e;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic F(Ljava/util/List;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->J(Ljava/util/List;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic G(Lb3/g1$c;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb3/g1$c;->L(Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic H(Lb3/y;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->O(Lb3/y;Lb3/m3$d;)V

    return-void
.end method

.method public static synthetic I(ZLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb3/g1$c;->N(ZLb3/m3$d;)V

    return-void
.end method

.method private static synthetic J(Ljava/util/List;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onCues(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(Lm4/e;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onCues(Lm4/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic L(Lb3/m3$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->t0(Lb3/g1;)Lb3/k2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lb3/m3$d;->onMediaMetadataChanged(Lb3/k2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic M(Lt3/a;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onMetadata(Lt3/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N(ZLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onSkipSilenceEnabledChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic O(Lb3/y;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onDeviceInfoChanged(Lb3/y;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P(IZLb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lb3/m3$d;->onDeviceVolumeChanged(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q(Lz4/a0;Lb3/m3$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lb3/m3$d;->onVideoSizeChanged(Lz4/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->a(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lc3/a;->c(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lc3/a;->e(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f(Lb3/x1;Le3/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->m0(Lb3/g1;Lb3/x1;)Lb3/x1;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lc3/a;->f(Lb3/x1;Le3/i;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public g(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lc3/a;->g(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Lb3/x1;Le3/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->J0(Lb3/g1;Lb3/x1;)Lb3/x1;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lc3/a;->h(Lb3/x1;Le3/i;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i(Le3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->H0(Lb3/g1;Le3/e;)Le3/e;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lc3/a;->i(Le3/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lc3/a;->j(Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 11
    .line 12
    invoke-static {p2}, Lb3/g1;->M0(Lb3/g1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 19
    .line 20
    invoke-static {p1}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lb3/o1;

    .line 25
    .line 26
    invoke-direct {p2}, Lb3/o1;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 p3, 0x1a

    .line 30
    .line 31
    invoke-virtual {p1, p3, p2}, Ly4/q;->k(ILy4/q$a;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public k(Le3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->k(Le3/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lb3/g1;->m0(Lb3/g1;Lb3/x1;)Lb3/x1;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lb3/g1;->N0(Lb3/g1;Le3/e;)Le3/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public l(Le3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->N0(Lb3/g1;Le3/e;)Le3/e;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lc3/a;->l(Le3/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public m(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lc3/a;->m(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->n(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public o(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->o(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    move-result-object v0

    new-instance v1, Lb3/k1;

    invoke-direct {v1, p1}, Lb3/k1;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    return-void
.end method

.method public onCues(Lm4/e;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    invoke-static {v0, p1}, Lb3/g1;->p0(Lb3/g1;Lm4/e;)Lm4/e;

    .line 3
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    move-result-object v0

    new-instance v1, Lb3/n1;

    invoke-direct {v1, p1}, Lb3/n1;-><init>(Lm4/e;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    return-void
.end method

.method public onMetadata(Lt3/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->q0(Lb3/g1;)Lb3/k2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lb3/k2;->b()Lb3/k2$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lb3/k2$b;->L(Lt3/a;)Lb3/k2$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lb3/k2$b;->H()Lb3/k2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lb3/g1;->r0(Lb3/g1;Lb3/k2;)Lb3/k2;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 23
    .line 24
    invoke-static {v0}, Lb3/g1;->s0(Lb3/g1;)Lb3/k2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 29
    .line 30
    invoke-static {v1}, Lb3/g1;->t0(Lb3/g1;)Lb3/k2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lb3/k2;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lb3/g1;->u0(Lb3/g1;Lb3/k2;)Lb3/k2;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 46
    .line 47
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lb3/i1;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lb3/i1;-><init>(Lb3/g1$c;)V

    .line 54
    .line 55
    .line 56
    const/16 v2, 0xe

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 62
    .line 63
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lb3/j1;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Lb3/j1;-><init>(Lt3/a;)V

    .line 70
    .line 71
    .line 72
    const/16 p1, 0x1c

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Ly4/q;->i(ILy4/q$a;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 78
    .line 79
    invoke-static {p1}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ly4/q;->f()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->n0(Lb3/g1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lb3/g1;->o0(Lb3/g1;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 16
    .line 17
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lb3/q1;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lb3/q1;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x17

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->y0(Lb3/g1;Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Lb3/g1;->x0(Lb3/g1;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lb3/g1;->w0(Lb3/g1;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, v0}, Lb3/g1;->x0(Lb3/g1;II)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lb3/g1;->x0(Lb3/g1;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoSizeChanged(Lz4/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb3/g1;->K0(Lb3/g1;Lz4/a0;)Lz4/a0;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 7
    .line 8
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lb3/p1;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lb3/p1;-><init>(Lz4/a0;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x19

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public p(Le3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lc3/a;->p(Le3/e;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lb3/g1;->J0(Lb3/g1;Lb3/x1;)Lb3/x1;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lb3/g1;->H0(Lb3/g1;Le3/e;)Le3/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public q(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lc3/a;->q(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public r(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->I0(Lb3/g1;)Lc3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lc3/a;->r(JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public s(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1}, Lb3/g1;->C0(Lb3/g1;)Lb3/b4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lb3/g1;->D0(Lb3/b4;)Lb3/y;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 12
    .line 13
    invoke-static {v0}, Lb3/g1;->E0(Lb3/g1;)Lb3/y;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lb3/y;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lb3/g1;->F0(Lb3/g1;Lb3/y;)Lb3/y;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 29
    .line 30
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lb3/l1;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lb3/l1;-><init>(Lb3/y;)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x1d

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1, p3, p4}, Lb3/g1;->x0(Lb3/g1;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->v0(Lb3/g1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lb3/g1;->w0(Lb3/g1;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1}, Lb3/g1;->v0(Lb3/g1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lb3/g1;->w0(Lb3/g1;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0, v0}, Lb3/g1;->x0(Lb3/g1;II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2}, Lb3/g1;->B0(Lb3/g1;ZII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1}, Lb3/g1;->G0(Lb3/g1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {p1}, Lb3/g1;->z0(Lb3/g1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lb3/g1;->A0(ZI)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v1, v0, p1, v2}, Lb3/g1;->B0(Lb3/g1;ZII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/g1$c;->a:Lb3/g1;

    .line 2
    .line 3
    invoke-static {v0}, Lb3/g1;->L0(Lb3/g1;)Ly4/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lb3/m1;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lb3/m1;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1e

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Ly4/q;->k(ILy4/q$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
