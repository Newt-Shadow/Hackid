.class Landroidx/recyclerview/widget/RecyclerView$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field c:Landroid/widget/OverScroller;

.field d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:Z

.field final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->T0:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->d:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->e:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->f:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method

.method private a(IIII)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    mul-int/2addr p3, p3

    .line 15
    mul-int/2addr p4, p4

    .line 16
    add-int/2addr p3, p4

    .line 17
    int-to-double p3, p3

    .line 18
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p3

    .line 22
    double-to-int p3, p3

    .line 23
    mul-int/2addr p1, p1

    .line 24
    mul-int/2addr p2, p2

    .line 25
    add-int/2addr p1, p2

    .line 26
    int-to-double p1, p1

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    double-to-int p1, p1

    .line 32
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    :goto_1
    div-int/lit8 p4, p2, 0x2

    .line 46
    .line 47
    int-to-float p1, p1

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .line 50
    mul-float/2addr p1, v3

    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p1, p2

    .line 53
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-float p4, p4

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->c(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    mul-float/2addr p1, p4

    .line 63
    add-float/2addr p4, p1

    .line 64
    if-lez p3, :cond_2

    .line 65
    .line 66
    int-to-float p1, p3

    .line 67
    div-float/2addr p4, p1

    .line 68
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 73
    .line 74
    mul-float/2addr p1, p2

    .line 75
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    mul-int/lit8 p1, p1, 0x4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v0, v1

    .line 86
    :goto_2
    int-to-float p1, v0

    .line 87
    div-float/2addr p1, p2

    .line 88
    add-float/2addr p1, v3

    .line 89
    const/high16 p2, 0x43960000    # 300.0f

    .line 90
    .line 91
    mul-float/2addr p1, p2

    .line 92
    float-to-int p1, p1

    .line 93
    :goto_3
    const/16 p2, 0x7d0

    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method private c(F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    const v0, 0x3ef1463b

    .line 5
    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-double v0, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    return p1
.end method

.method private d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->e:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public e(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->b:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->a:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/high16 v6, -0x80000000

    .line 17
    .line 18
    const v7, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const/high16 v8, -0x80000000

    .line 22
    .line 23
    const v9, 0x7fffffff

    .line 24
    .line 25
    .line 26
    move v4, p1

    .line 27
    move v5, p2

    .line 28
    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->f()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->f:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-static {v0, p0}, Ld0/p0;->P(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public g(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-eq v0, p4, :cond_0

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$z;->d:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    new-instance v0, Landroid/widget/OverScroller;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 19
    .line 20
    :cond_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-virtual {p4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 24
    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$z;->b:I

    .line 28
    .line 29
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$z;->a:I

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    move v3, p1

    .line 36
    move v4, p2

    .line 37
    move v5, p3

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->f()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public h(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->a(IIII)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->T0:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->g(IIILandroid/view/animation/Interpolator;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$z;->i()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->c:Landroid/widget/OverScroller;

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_d

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->E0:[I

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$z;->a:I

    .line 49
    .line 50
    sub-int v9, v3, v5

    .line 51
    .line 52
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$z;->b:I

    .line 53
    .line 54
    sub-int v10, v4, v5

    .line 55
    .line 56
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->a:I

    .line 57
    .line 58
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$z;->b:I

    .line 59
    .line 60
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x1

    .line 64
    move v4, v9

    .line 65
    move v5, v10

    .line 66
    move-object v6, v2

    .line 67
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->q(II[I[II)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x1

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    aget v3, v2, v4

    .line 76
    .line 77
    sub-int/2addr v9, v3

    .line 78
    aget v2, v2, v5

    .line 79
    .line 80
    sub-int/2addr v10, v2

    .line 81
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const/4 v15, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v3, 0x2

    .line 112
    if-eq v2, v3, :cond_3

    .line 113
    .line 114
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    invoke-virtual {v2, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->j(II)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/16 v17, 0x1

    .line 124
    .line 125
    invoke-virtual/range {v11 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->r(IIII[II)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_4

    .line 136
    .line 137
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 140
    .line 141
    .line 142
    :cond_4
    if-eqz v10, :cond_5

    .line 143
    .line 144
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    .line 146
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    if-nez v10, :cond_5

    .line 155
    .line 156
    move v2, v5

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    move v2, v4

    .line 159
    :goto_0
    if-eqz v9, :cond_6

    .line 160
    .line 161
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    if-nez v9, :cond_6

    .line 172
    .line 173
    move v3, v5

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    move v3, v4

    .line 176
    :goto_1
    if-nez v9, :cond_7

    .line 177
    .line 178
    if-eqz v10, :cond_9

    .line 179
    .line 180
    :cond_7
    if-nez v3, :cond_9

    .line 181
    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    move v2, v4

    .line 186
    goto :goto_3

    .line 187
    :cond_9
    :goto_2
    move v2, v5

    .line 188
    :goto_3
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_b

    .line 193
    .line 194
    if-nez v2, :cond_a

    .line 195
    .line 196
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->H(I)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_a

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$z;->f()V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 211
    .line 212
    if-eqz v2, :cond_d

    .line 213
    .line 214
    invoke-virtual {v2, v1, v9, v10}, Landroidx/recyclerview/widget/e;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_b
    :goto_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 221
    .line 222
    .line 223
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 224
    .line 225
    if-eqz v1, :cond_c

    .line 226
    .line 227
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/e$b;

    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/recyclerview/widget/e$b;->a()V

    .line 232
    .line 233
    .line 234
    :cond_c
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->w0(I)V

    .line 237
    .line 238
    .line 239
    :cond_d
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$z;->d()V

    .line 240
    .line 241
    .line 242
    return-void
.end method
