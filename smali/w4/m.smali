.class public Lw4/m;
.super Lw4/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/m$f;,
        Lw4/m$c;,
        Lw4/m$g;,
        Lw4/m$b;,
        Lw4/m$i;,
        Lw4/m$h;,
        Lw4/m$e;,
        Lw4/m$d;
    }
.end annotation


# static fields
.field private static final k:Lo6/h0;

.field private static final l:Lo6/h0;


# instance fields
.field private final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field private final f:Lw4/y$b;

.field private final g:Z

.field private h:Lw4/m$d;

.field private i:Lw4/m$f;

.field private j:Ld3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw4/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lw4/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lo6/h0;->a(Ljava/util/Comparator;)Lo6/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lw4/m;->k:Lo6/h0;

    .line 11
    .line 12
    new-instance v0, Lw4/g;

    .line 13
    .line 14
    invoke-direct {v0}, Lw4/g;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo6/h0;->a(Ljava/util/Comparator;)Lo6/h0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lw4/m;->l:Lo6/h0;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lw4/a$b;

    invoke-direct {v0}, Lw4/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lw4/m;-><init>(Landroid/content/Context;Lw4/y$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw4/f0;Lw4/y$b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lw4/m;-><init>(Lw4/f0;Lw4/y$b;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw4/y$b;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lw4/m$d;->I(Landroid/content/Context;)Lw4/m$d;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lw4/m;-><init>(Landroid/content/Context;Lw4/f0;Lw4/y$b;)V

    return-void
.end method

.method private constructor <init>(Lw4/f0;Lw4/y$b;Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lw4/a0;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lw4/m;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lw4/m;->f:Lw4/y$b;

    .line 8
    instance-of p2, p1, Lw4/m$d;

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, Lw4/m$d;

    iput-object p1, p0, Lw4/m;->h:Lw4/m$d;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 10
    sget-object p2, Lw4/m$d;->H0:Lw4/m$d;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lw4/m$d;->I(Landroid/content/Context;)Lw4/m$d;

    move-result-object p2

    .line 11
    :goto_1
    invoke-virtual {p2}, Lw4/m$d;->H()Lw4/m$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw4/m$d$a;->b0(Lw4/f0;)Lw4/m$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lw4/m$d$a;->X()Lw4/m$d;

    move-result-object p1

    iput-object p1, p0, Lw4/m;->h:Lw4/m$d;

    .line 12
    :goto_2
    sget-object p1, Ld3/e;->g:Ld3/e;

    iput-object p1, p0, Lw4/m;->j:Ld3/e;

    if-eqz p3, :cond_3

    .line 13
    invoke-static {p3}, Ly4/q0;->w0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lw4/m;->g:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 14
    sget p1, Ly4/q0;->a:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    .line 15
    invoke-static {p3}, Lw4/m$f;->g(Landroid/content/Context;)Lw4/m$f;

    move-result-object p1

    iput-object p1, p0, Lw4/m;->i:Lw4/m$f;

    .line 16
    :cond_4
    iget-object p1, p0, Lw4/m;->h:Lw4/m$d;

    iget-boolean p1, p1, Lw4/m$d;->B0:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 17
    invoke-static {p1, p2}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static A(Ld4/u0;Lw4/f0;Ljava/util/Map;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ld4/u0;->a:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ld4/u0;->b(I)Ld4/s0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p1, Lw4/f0;->y:Lo6/r;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lo6/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lw4/d0;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Lw4/d0;->b()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lw4/d0;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, v2, Lw4/d0;->b:Lo6/q;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v1, Lw4/d0;->b:Lo6/q;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v1}, Lw4/d0;->b()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method protected static B(Lb3/x1;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lb3/x1;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {p1}, Lw4/m;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lb3/x1;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0}, Lw4/m;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p2, "-"

    .line 47
    .line 48
    invoke-static {p0, p2}, Ly4/q0;->Q0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    aget-object p0, p0, v0

    .line 53
    .line 54
    invoke-static {p1, p2}, Ly4/q0;->Q0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aget-object p1, p1, v0

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    const/4 p0, 0x2

    .line 67
    return p0

    .line 68
    :cond_3
    return v0

    .line 69
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 70
    return p0

    .line 71
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 72
    .line 73
    if-nez p0, :cond_6

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    :cond_6
    return v0
.end method

.method private static C(Ld4/s0;IIZ)I
    .locals 8

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget v2, p0, Ld4/s0;->a:I

    .line 11
    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ld4/s0;->b(I)Lb3/x1;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, v2, Lb3/x1;->q:I

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    iget v4, v2, Lb3/x1;->r:I

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    invoke-static {p3, p1, p2, v3, v4}, Lw4/m;->D(ZIIII)Landroid/graphics/Point;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget v4, v2, Lb3/x1;->q:I

    .line 31
    .line 32
    iget v2, v2, Lb3/x1;->r:I

    .line 33
    .line 34
    mul-int v5, v4, v2

    .line 35
    .line 36
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    int-to-float v6, v6

    .line 39
    const v7, 0x3f7ae148    # 0.98f

    .line 40
    .line 41
    .line 42
    mul-float/2addr v6, v7

    .line 43
    float-to-int v6, v6

    .line 44
    if-lt v4, v6, :cond_1

    .line 45
    .line 46
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    mul-float/2addr v3, v7

    .line 50
    float-to-int v3, v3

    .line 51
    if-lt v2, v3, :cond_1

    .line 52
    .line 53
    if-ge v5, v0, :cond_1

    .line 54
    .line 55
    move v0, v5

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return v0
.end method

.method private static D(ZIIII)Landroid/graphics/Point;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-le p3, p4, :cond_0

    .line 6
    .line 7
    move v1, p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-le p1, p2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move p0, v0

    .line 14
    :goto_1
    if-eq v1, p0, :cond_2

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    move v2, p2

    .line 18
    move p2, p1

    .line 19
    move p1, v2

    .line 20
    :goto_2
    mul-int p0, p3, p1

    .line 21
    .line 22
    mul-int v0, p4, p2

    .line 23
    .line 24
    if-lt p0, v0, :cond_3

    .line 25
    .line 26
    new-instance p0, Landroid/graphics/Point;

    .line 27
    .line 28
    invoke-static {v0, p3}, Ly4/q0;->l(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-static {p0, p4}, Ly4/q0;->l(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method private static E(II)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const p0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    and-int/2addr p0, p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static F(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, -0x1

    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v6, v2

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v1, "video/avc"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v1, "video/hevc"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v6, v4

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v1, "video/av01"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    move v6, v5

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string v1, "video/dolby-vision"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    move v6, v0

    .line 72
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :pswitch_0
    return v4

    .line 77
    :pswitch_1
    return v5

    .line 78
    :pswitch_2
    return v3

    .line 79
    :pswitch_3
    return v2

    .line 80
    :pswitch_4
    const/4 p0, 0x5

    .line 81
    return p0

    .line 82
    nop

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private G(Lb3/x1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw4/m;->h:Lw4/m$d;

    .line 5
    .line 6
    iget-boolean v1, v1, Lw4/m$d;->B0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-boolean v1, p0, Lw4/m;->g:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget v1, p1, Lb3/x1;->y:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-le v1, v2, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lw4/m;->H(Lb3/x1;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget v1, Ly4/q0;->a:I

    .line 28
    .line 29
    if-lt v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lw4/m$f;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    :cond_0
    sget v1, Ly4/q0;->a:I

    .line 42
    .line 43
    if-lt v1, v2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lw4/m$f;->e()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 56
    .line 57
    invoke-virtual {v1}, Lw4/m$f;->c()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 64
    .line 65
    invoke-virtual {v1}, Lw4/m$f;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 72
    .line 73
    iget-object v2, p0, Lw4/m;->j:Ld3/e;

    .line 74
    .line 75
    invoke-virtual {v1, v2, p1}, Lw4/m$f;->a(Ld3/e;Lb3/x1;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/4 p1, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 85
    :goto_1
    monitor-exit v0

    .line 86
    return p1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method private static H(Lb3/x1;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lb3/x1;->l:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, -0x1

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v1, "audio/eac3"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v3, 0x3

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v1, "audio/ac4"

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v3, 0x2

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v1, "audio/ac3"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v3, v2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v1, "audio/eac3-joc"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    move v3, v0

    .line 63
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    return v0

    .line 67
    :pswitch_0
    return v2

    .line 68
    nop

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static I(IZ)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lb3/u3;->F(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private synthetic J(Lw4/m$d;ZILd4/s0;[I)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v5, Lw4/l;

    .line 2
    .line 3
    invoke-direct {v5, p0}, Lw4/l;-><init>(Lw4/m;)V

    .line 4
    .line 5
    .line 6
    move v0, p3

    .line 7
    move-object v1, p4

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p5

    .line 10
    move v4, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lw4/m$b;->j(ILd4/s0;Lw4/m$d;[IZLn6/n;)Lo6/q;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private static synthetic K(Lw4/m$d;Ljava/lang/String;ILd4/s0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p2, p3, p0, p4, p1}, Lw4/m$g;->j(ILd4/s0;Lw4/m$d;[ILjava/lang/String;)Lo6/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic L(Lw4/m$d;[IILd4/s0;[I)Ljava/util/List;
    .locals 0

    .line 1
    aget p1, p1, p2

    .line 2
    .line 3
    invoke-static {p2, p3, p0, p4, p1}, Lw4/m$i;->n(ILd4/s0;Lw4/m$d;[II)Lo6/q;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic M(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ne p0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int v1, p0, p1

    .line 33
    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic N(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static O(Lw4/a0$a;[[[I[Lb3/v3;[Lw4/y;)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v4, v3

    .line 5
    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lw4/a0$a;->d()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lw4/a0$a;->e(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    aget-object v7, p3, v2

    .line 18
    .line 19
    if-eq v5, v6, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    if-ne v5, v8, :cond_4

    .line 23
    .line 24
    :cond_0
    if-eqz v7, :cond_4

    .line 25
    .line 26
    aget-object v8, p1, v2

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-static {v8, v9, v7}, Lw4/m;->R([[ILd4/u0;Lw4/y;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_4

    .line 37
    .line 38
    if-ne v5, v6, :cond_2

    .line 39
    .line 40
    if-eq v4, v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v4, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    if-eq v3, v0, :cond_3

    .line 46
    .line 47
    :goto_1
    move p0, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v3, v2

    .line 50
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    move p0, v6

    .line 54
    :goto_3
    if-eq v4, v0, :cond_6

    .line 55
    .line 56
    if-eq v3, v0, :cond_6

    .line 57
    .line 58
    move v1, v6

    .line 59
    :cond_6
    and-int/2addr p0, v1

    .line 60
    if-eqz p0, :cond_7

    .line 61
    .line 62
    new-instance p0, Lb3/v3;

    .line 63
    .line 64
    invoke-direct {p0, v6}, Lb3/v3;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    aput-object p0, p2, v4

    .line 68
    .line 69
    aput-object p0, p2, v3

    .line 70
    .line 71
    :cond_7
    return-void
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw4/m;->h:Lw4/m$d;

    .line 5
    .line 6
    iget-boolean v1, v1, Lw4/m$d;->B0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lw4/m;->g:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget v1, Ly4/q0;->a:I

    .line 15
    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lw4/m$f;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lw4/h0;->c()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method

.method protected static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "und"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :cond_1
    return-object p0
.end method

.method private static R([[ILd4/u0;Lw4/y;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p2}, Lw4/b0;->a()Ld4/s0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Ld4/u0;->c(Ld4/s0;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    move v1, v0

    .line 14
    :goto_0
    invoke-interface {p2}, Lw4/b0;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-object v2, p0, p1

    .line 21
    .line 22
    invoke-interface {p2, v1}, Lw4/b0;->j(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    aget v2, v2, v3

    .line 27
    .line 28
    invoke-static {v2}, Lb3/u3;->p(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x20

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method private W(ILw4/a0$a;[[[ILw4/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lw4/a0$a;->d()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Lw4/a0$a;->e(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    move/from16 v6, p1

    .line 20
    .line 21
    if-ne v6, v5, :cond_6

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v7, 0x0

    .line 28
    :goto_1
    iget v8, v5, Ld4/u0;->a:I

    .line 29
    .line 30
    if-ge v7, v8, :cond_6

    .line 31
    .line 32
    invoke-virtual {v5, v7}, Ld4/u0;->b(I)Ld4/s0;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    aget-object v9, p3, v4

    .line 37
    .line 38
    aget-object v9, v9, v7

    .line 39
    .line 40
    move-object/from16 v10, p4

    .line 41
    .line 42
    invoke-interface {v10, v4, v8, v9}, Lw4/m$h$a;->a(ILd4/s0;[I)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    iget v11, v8, Ld4/s0;->a:I

    .line 47
    .line 48
    new-array v11, v11, [Z

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    :goto_2
    iget v13, v8, Ld4/s0;->a:I

    .line 52
    .line 53
    if-ge v12, v13, :cond_5

    .line 54
    .line 55
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    check-cast v13, Lw4/m$h;

    .line 60
    .line 61
    invoke-virtual {v13}, Lw4/m$h;->a()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    aget-boolean v15, v11, v12

    .line 66
    .line 67
    if-nez v15, :cond_4

    .line 68
    .line 69
    if-nez v14, :cond_0

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_0
    const/4 v15, 0x1

    .line 73
    if-ne v14, v15, :cond_1

    .line 74
    .line 75
    invoke-static {v13}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    move/from16 v17, v2

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v16, v12, 0x1

    .line 91
    .line 92
    move/from16 v3, v16

    .line 93
    .line 94
    :goto_3
    iget v15, v8, Ld4/s0;->a:I

    .line 95
    .line 96
    if-ge v3, v15, :cond_3

    .line 97
    .line 98
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    check-cast v15, Lw4/m$h;

    .line 103
    .line 104
    invoke-virtual {v15}, Lw4/m$h;->a()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    move/from16 v17, v2

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    if-ne v0, v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {v13, v15}, Lw4/m$h;->b(Lw4/m$h;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    aput-boolean v0, v11, v3

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_2
    const/4 v0, 0x1

    .line 127
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    move-object/from16 v0, p2

    .line 130
    .line 131
    move/from16 v2, v17

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    move/from16 v17, v2

    .line 135
    .line 136
    move-object v13, v14

    .line 137
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_4
    :goto_6
    move/from16 v17, v2

    .line 142
    .line 143
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 144
    .line 145
    move-object/from16 v0, p2

    .line 146
    .line 147
    move/from16 v2, v17

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    move/from16 v17, v2

    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    move-object/from16 v0, p2

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_6
    move-object/from16 v10, p4

    .line 159
    .line 160
    move/from16 v17, v2

    .line 161
    .line 162
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    move-object/from16 v0, p2

    .line 165
    .line 166
    move/from16 v2, v17

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    return-object v0

    .line 178
    :cond_8
    move-object/from16 v0, p5

    .line 179
    .line 180
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    new-array v1, v1, [I

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-ge v2, v3, :cond_9

    .line 198
    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Lw4/m$h;

    .line 204
    .line 205
    iget v3, v3, Lw4/m$h;->c:I

    .line 206
    .line 207
    aput v3, v1, v2

    .line 208
    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_9
    const/4 v2, 0x0

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lw4/m$h;

    .line 218
    .line 219
    new-instance v2, Lw4/y$a;

    .line 220
    .line 221
    iget-object v3, v0, Lw4/m$h;->b:Ld4/s0;

    .line 222
    .line 223
    invoke-direct {v2, v3, v1}, Lw4/y$a;-><init>(Ld4/s0;[I)V

    .line 224
    .line 225
    .line 226
    iget v0, v0, Lw4/m$h;->a:I

    .line 227
    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0
.end method

.method public static synthetic m(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw4/m;->N(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lw4/m;Lb3/x1;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw4/m;->G(Lb3/x1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lw4/m$d;[IILd4/s0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lw4/m;->L(Lw4/m$d;[IILd4/s0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lw4/m$d;Ljava/lang/String;ILd4/s0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lw4/m;->K(Lw4/m$d;Ljava/lang/String;ILd4/s0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lw4/m;Lw4/m$d;ZILd4/s0;[I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lw4/m;->J(Lw4/m$d;ZILd4/s0;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw4/m;->M(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic s(Ld4/s0;IIZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lw4/m;->C(Ld4/s0;IIZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic t(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw4/m;->E(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic u(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lw4/m;->F(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic v()Lo6/h0;
    .locals 1

    .line 1
    sget-object v0, Lw4/m;->k:Lo6/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic w()Lo6/h0;
    .locals 1

    .line 1
    sget-object v0, Lw4/m;->l:Lo6/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic x(Lw4/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw4/m;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static y(Lw4/a0$a;Lw4/m$d;[Lw4/y$a;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lw4/a0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1, v1, v2}, Lw4/m$d;->L(ILd4/u0;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1, v1, v2}, Lw4/m$d;->K(ILd4/u0;)Lw4/m$e;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v4, v3, Lw4/m$e;->b:[I

    .line 26
    .line 27
    array-length v4, v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    new-instance v4, Lw4/y$a;

    .line 31
    .line 32
    iget v5, v3, Lw4/m$e;->a:I

    .line 33
    .line 34
    invoke-virtual {v2, v5}, Ld4/u0;->b(I)Ld4/s0;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v5, v3, Lw4/m$e;->b:[I

    .line 39
    .line 40
    iget v3, v3, Lw4/m$e;->d:I

    .line 41
    .line 42
    invoke-direct {v4, v2, v5, v3}, Lw4/y$a;-><init>(Ld4/s0;[II)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    :goto_1
    aput-object v4, p2, v1

    .line 48
    .line 49
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method private static z(Lw4/a0$a;Lw4/f0;[Lw4/y$a;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lw4/a0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4, p1, v1}, Lw4/m;->A(Ld4/u0;Lw4/f0;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lw4/a0$a;->h()Ld4/u0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, p1, v1}, Lw4/m;->A(Ld4/u0;Lw4/f0;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lw4/a0$a;->e(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lw4/d0;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    iget-object v3, p1, Lw4/d0;->b:Lo6/q;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p1, Lw4/d0;->a:Ld4/s0;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ld4/u0;->c(Ld4/s0;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, -0x1

    .line 69
    if-eq v3, v4, :cond_2

    .line 70
    .line 71
    new-instance v3, Lw4/y$a;

    .line 72
    .line 73
    iget-object v4, p1, Lw4/d0;->a:Ld4/s0;

    .line 74
    .line 75
    iget-object p1, p1, Lw4/d0;->b:Lo6/q;

    .line 76
    .line 77
    invoke-static {p1}, Lq6/e;->k(Ljava/util/Collection;)[I

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v3, v4, p1}, Lw4/y$a;-><init>(Ld4/s0;[I)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    :goto_2
    aput-object v3, p2, v2

    .line 87
    .line 88
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    return-void
.end method


# virtual methods
.method protected S(Lw4/a0$a;[[[I[ILw4/m$d;)[Lw4/y$a;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lw4/a0$a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lw4/y$a;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lw4/m;->X(Lw4/a0$a;[[[I[ILw4/m$d;)Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lw4/y$a;

    .line 24
    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lw4/m;->T(Lw4/a0$a;[[[I[ILw4/m$d;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lw4/y$a;

    .line 44
    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    if-nez p3, :cond_2

    .line 49
    .line 50
    const/4 p3, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v3, p3

    .line 55
    check-cast v3, Lw4/y$a;

    .line 56
    .line 57
    iget-object v3, v3, Lw4/y$a;->a:Ld4/s0;

    .line 58
    .line 59
    check-cast p3, Lw4/y$a;

    .line 60
    .line 61
    iget-object p3, p3, Lw4/y$a;->b:[I

    .line 62
    .line 63
    aget p3, p3, v2

    .line 64
    .line 65
    invoke-virtual {v3, p3}, Ld4/s0;->b(I)Lb3/x1;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iget-object p3, p3, Lb3/x1;->c:Ljava/lang/String;

    .line 70
    .line 71
    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lw4/m;->V(Lw4/a0$a;[[[ILw4/m$d;Ljava/lang/String;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    if-eqz p3, :cond_3

    .line 76
    .line 77
    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p3, Lw4/y$a;

    .line 88
    .line 89
    aput-object p3, v1, v3

    .line 90
    .line 91
    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lw4/a0$a;->e(I)I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    const/4 v3, 0x2

    .line 98
    if-eq p3, v3, :cond_4

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    if-eq p3, v3, :cond_4

    .line 102
    .line 103
    const/4 v3, 0x3

    .line 104
    if-eq p3, v3, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    aget-object v4, p2, v2

    .line 111
    .line 112
    invoke-virtual {p0, p3, v3, v4, p4}, Lw4/m;->U(ILd4/u0;[[ILw4/m$d;)Lw4/y$a;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    aput-object p3, v1, v2

    .line 117
    .line 118
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    return-object v1
.end method

.method protected T(Lw4/a0$a;[[[I[ILw4/m$d;)Landroid/util/Pair;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    move v0, p3

    .line 3
    :goto_0
    invoke-virtual {p1}, Lw4/a0$a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v0}, Lw4/a0$a;->e(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lw4/a0$a;->f(I)Ld4/u0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v1, v1, Ld4/u0;->a:I

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 30
    new-instance v4, Lw4/j;

    .line 31
    .line 32
    invoke-direct {v4, p0, p4, p3}, Lw4/j;-><init>(Lw4/m;Lw4/m$d;Z)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lw4/k;

    .line 36
    .line 37
    invoke-direct {v5}, Lw4/k;-><init>()V

    .line 38
    .line 39
    .line 40
    move-object v0, p0

    .line 41
    move-object v2, p1

    .line 42
    move-object v3, p2

    .line 43
    invoke-direct/range {v0 .. v5}, Lw4/m;->W(ILw4/a0$a;[[[ILw4/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method protected U(ILd4/u0;[[ILw4/m$d;)Lw4/y$a;
    .locals 11

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    move-object v2, p1

    .line 4
    move-object v4, v2

    .line 5
    move v1, v0

    .line 6
    move v3, v1

    .line 7
    :goto_0
    iget v5, p2, Ld4/u0;->a:I

    .line 8
    .line 9
    if-ge v1, v5, :cond_3

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ld4/u0;->b(I)Ld4/s0;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    aget-object v6, p3, v1

    .line 16
    .line 17
    move v7, v0

    .line 18
    :goto_1
    iget v8, v5, Ld4/s0;->a:I

    .line 19
    .line 20
    if-ge v7, v8, :cond_2

    .line 21
    .line 22
    aget v8, v6, v7

    .line 23
    .line 24
    iget-boolean v9, p4, Lw4/m$d;->C0:Z

    .line 25
    .line 26
    invoke-static {v8, v9}, Lw4/m;->I(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5, v7}, Ld4/s0;->b(I)Lb3/x1;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, Lw4/m$c;

    .line 37
    .line 38
    aget v10, v6, v7

    .line 39
    .line 40
    invoke-direct {v9, v8, v10}, Lw4/m$c;-><init>(Lb3/x1;I)V

    .line 41
    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v9, v4}, Lw4/m$c;->a(Lw4/m$c;)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-lez v8, :cond_1

    .line 50
    .line 51
    :cond_0
    move-object v2, v5

    .line 52
    move v3, v7

    .line 53
    move-object v4, v9

    .line 54
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-nez v2, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    new-instance p1, Lw4/y$a;

    .line 64
    .line 65
    filled-new-array {v3}, [I

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, v2, p2}, Lw4/y$a;-><init>(Ld4/s0;[I)V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-object p1
.end method

.method protected V(Lw4/a0$a;[[[ILw4/m$d;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    .line 1
    const/4 v1, 0x3

    .line 2
    new-instance v4, Lw4/d;

    .line 3
    .line 4
    invoke-direct {v4, p3, p4}, Lw4/d;-><init>(Lw4/m$d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v5, Lw4/e;

    .line 8
    .line 9
    invoke-direct {v5}, Lw4/e;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lw4/m;->W(ILw4/a0$a;[[[ILw4/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected X(Lw4/a0$a;[[[I[ILw4/m$d;)Landroid/util/Pair;
    .locals 6

    .line 1
    const/4 v1, 0x2

    .line 2
    new-instance v4, Lw4/h;

    .line 3
    .line 4
    invoke-direct {v4, p4, p3}, Lw4/h;-><init>(Lw4/m$d;[I)V

    .line 5
    .line 6
    .line 7
    new-instance v5, Lw4/i;

    .line 8
    .line 9
    invoke-direct {v5}, Lw4/i;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lw4/m;->W(ILw4/a0$a;[[[ILw4/m$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Ly4/q0;->a:I

    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lw4/m;->i:Lw4/m$f;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lw4/m$f;->f()V

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-super {p0}, Lw4/h0;->f()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method public h(Ld3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw4/m;->j:Ld3/e;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ld3/e;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iput-object p1, p0, Lw4/m;->j:Ld3/e;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lw4/m;->P()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method protected final l(Lw4/a0$a;[[[I[ILd4/t$b;Lb3/g4;)Landroid/util/Pair;
    .locals 7

    .line 1
    iget-object v0, p0, Lw4/m;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw4/m;->h:Lw4/m$d;

    .line 5
    .line 6
    iget-boolean v2, v1, Lw4/m$d;->B0:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget v2, Ly4/q0;->a:I

    .line 11
    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    if-lt v2, v3, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lw4/m;->i:Lw4/m$f;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/Looper;

    .line 29
    .line 30
    invoke-virtual {v2, p0, v3}, Lw4/m$f;->b(Lw4/m;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p1}, Lw4/a0$a;->d()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v1}, Lw4/m;->S(Lw4/a0$a;[[[I[ILw4/m$d;)[Lw4/y$a;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-static {p1, v1, p3}, Lw4/m;->z(Lw4/a0$a;Lw4/f0;[Lw4/y$a;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1, p3}, Lw4/m;->y(Lw4/a0$a;Lw4/m$d;[Lw4/y$a;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    move v3, v2

    .line 50
    :goto_0
    const/4 v4, 0x0

    .line 51
    if-ge v3, v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lw4/a0$a;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v1, v3}, Lw4/m$d;->J(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    iget-object v6, v1, Lw4/f0;->z:Lo6/s;

    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v6, v5}, Lo6/o;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    :cond_1
    aput-object v4, p3, v3

    .line 76
    .line 77
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v3, p0, Lw4/m;->f:Lw4/y$b;

    .line 81
    .line 82
    invoke-virtual {p0}, Lw4/h0;->a()Lx4/e;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-interface {v3, p3, v5, p4, p5}, Lw4/y$b;->a([Lw4/y$a;Lx4/e;Ld4/t$b;Lb3/g4;)[Lw4/y;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    new-array p4, v0, [Lb3/v3;

    .line 91
    .line 92
    move p5, v2

    .line 93
    :goto_1
    if-ge p5, v0, :cond_9

    .line 94
    .line 95
    invoke-virtual {p1, p5}, Lw4/a0$a;->e(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v1, p5}, Lw4/m$d;->J(I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/4 v6, 0x1

    .line 104
    if-nez v5, :cond_5

    .line 105
    .line 106
    iget-object v5, v1, Lw4/f0;->z:Lo6/s;

    .line 107
    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v5, v3}, Lo6/o;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v3, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    move v3, v6

    .line 122
    :goto_3
    if-nez v3, :cond_6

    .line 123
    .line 124
    invoke-virtual {p1, p5}, Lw4/a0$a;->e(I)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/4 v5, -0x2

    .line 129
    if-eq v3, v5, :cond_7

    .line 130
    .line 131
    aget-object v3, p3, p5

    .line 132
    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move v6, v2

    .line 137
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 138
    .line 139
    sget-object v3, Lb3/v3;->b:Lb3/v3;

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_8
    move-object v3, v4

    .line 143
    :goto_5
    aput-object v3, p4, p5

    .line 144
    .line 145
    add-int/lit8 p5, p5, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    iget-boolean p5, v1, Lw4/m$d;->D0:Z

    .line 149
    .line 150
    if-eqz p5, :cond_a

    .line 151
    .line 152
    invoke-static {p1, p2, p4, p3}, Lw4/m;->O(Lw4/a0$a;[[[I[Lb3/v3;[Lw4/y;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw p1
.end method
