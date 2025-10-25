.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$i;,
        Landroidx/recyclerview/widget/RecyclerView$k;,
        Landroidx/recyclerview/widget/RecyclerView$l;,
        Landroidx/recyclerview/widget/RecyclerView$p;,
        Landroidx/recyclerview/widget/RecyclerView$x;,
        Landroidx/recyclerview/widget/RecyclerView$w;,
        Landroidx/recyclerview/widget/RecyclerView$h;,
        Landroidx/recyclerview/widget/RecyclerView$o;,
        Landroidx/recyclerview/widget/RecyclerView$a0;,
        Landroidx/recyclerview/widget/RecyclerView$u;,
        Landroidx/recyclerview/widget/RecyclerView$r;,
        Landroidx/recyclerview/widget/RecyclerView$q;,
        Landroidx/recyclerview/widget/RecyclerView$m;,
        Landroidx/recyclerview/widget/RecyclerView$n;,
        Landroidx/recyclerview/widget/RecyclerView$g;,
        Landroidx/recyclerview/widget/RecyclerView$y;,
        Landroidx/recyclerview/widget/RecyclerView$t;,
        Landroidx/recyclerview/widget/RecyclerView$s;,
        Landroidx/recyclerview/widget/RecyclerView$j;,
        Landroidx/recyclerview/widget/RecyclerView$v;,
        Landroidx/recyclerview/widget/RecyclerView$z;
    }
.end annotation


# static fields
.field private static final K0:[I

.field private static final L0:[I

.field static final M0:Z

.field static final N0:Z

.field static final O0:Z

.field static final P0:Z

.field private static final Q0:Z

.field private static final R0:Z

.field private static final S0:[Ljava/lang/Class;

.field static final T0:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Ljava/util/List;

.field A0:Landroidx/recyclerview/widget/i;

.field B:Z

.field private final B0:[I

.field C:Z

.field private C0:Ld0/d0;

.field private D:I

.field private final D0:[I

.field private E:I

.field final E0:[I

.field private F:Landroidx/recyclerview/widget/RecyclerView$j;

.field private final F0:[I

.field private G:Landroid/widget/EdgeEffect;

.field final G0:[I

.field private H:Landroid/widget/EdgeEffect;

.field final H0:Ljava/util/List;

.field private I:Landroid/widget/EdgeEffect;

.field private I0:Ljava/lang/Runnable;

.field private J:Landroid/widget/EdgeEffect;

.field private final J0:Landroidx/recyclerview/widget/m$b;

.field K:Landroidx/recyclerview/widget/RecyclerView$k;

.field private L:I

.field private M:I

.field private N:Landroid/view/VelocityTracker;

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private final T:I

.field private final U:I

.field private V:F

.field private W:F

.field private final a:Landroidx/recyclerview/widget/RecyclerView$v;

.field private a0:Z

.field final b:Landroidx/recyclerview/widget/RecyclerView$t;

.field final b0:Landroidx/recyclerview/widget/RecyclerView$z;

.field private c:Landroidx/recyclerview/widget/RecyclerView$w;

.field c0:Landroidx/recyclerview/widget/e;

.field d:Landroidx/recyclerview/widget/a;

.field d0:Landroidx/recyclerview/widget/e$b;

.field e:Landroidx/recyclerview/widget/b;

.field final e0:Landroidx/recyclerview/widget/RecyclerView$x;

.field final f:Landroidx/recyclerview/widget/m;

.field private f0:Landroidx/recyclerview/widget/RecyclerView$r;

.field g:Z

.field final h:Ljava/lang/Runnable;

.field final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field final k:Landroid/graphics/RectF;

.field l:Landroidx/recyclerview/widget/RecyclerView$n;

.field final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/ArrayList;

.field private o:Landroidx/recyclerview/widget/RecyclerView$q;

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field private t:I

.field u:Z

.field v:Z

.field private v0:Ljava/util/List;

.field private w:Z

.field w0:Z

.field private x:I

.field x0:Z

.field y:Z

.field private y0:Landroidx/recyclerview/widget/RecyclerView$k$a;

.field private final z:Landroid/view/accessibility/AccessibilityManager;

.field z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x1010436

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->K0:[I

    .line 9
    .line 10
    const v0, 0x10100eb

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->L0:[I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->M0:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->N0:Z

    .line 24
    .line 25
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->O0:Z

    .line 26
    .line 27
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 28
    .line 29
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->Q0:Z

    .line 30
    .line 31
    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    .line 32
    .line 33
    const-class v0, Landroid/util/AttributeSet;

    .line 34
    .line 35
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    const-class v2, Landroid/content/Context;

    .line 38
    .line 39
    filled-new-array {v2, v0, v1, v1}, [Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->S0:[Ljava/lang/Class;

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$c;

    .line 46
    .line 47
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->T0:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/m;

    invoke-direct {v0}, Landroidx/recyclerview/widget/m;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/m;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 13
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    .line 17
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 18
    new-instance v1, Landroidx/recyclerview/widget/c;

    invoke-direct {v1}, Landroidx/recyclerview/widget/c;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 19
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    const/4 v2, 0x1

    .line 21
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->V:F

    .line 22
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->W:F

    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Z

    .line 24
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/RecyclerView$z;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 25
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/recyclerview/widget/e$b;

    invoke-direct {v3}, Landroidx/recyclerview/widget/e$b;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/e$b;

    .line 26
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 27
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:Z

    .line 28
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Z

    .line 29
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/RecyclerView$k$a;

    .line 30
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 31
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:[I

    new-array v4, v3, [I

    .line 32
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    new-array v4, v3, [I

    .line 33
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->E0:[I

    new-array v4, v3, [I

    .line 34
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    new-array v4, v3, [I

    .line 35
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->G0:[I

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->H0:Ljava/util/List;

    .line 37
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I0:Ljava/lang/Runnable;

    .line 38
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$d;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/RecyclerView$d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J0:Landroidx/recyclerview/widget/m$b;

    if-eqz p2, :cond_1

    .line 39
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->L0:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 40
    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 41
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 42
    :cond_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 43
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setScrollContainer(Z)V

    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 47
    invoke-static {v4, p1}, Ld0/s0;->f(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->V:F

    .line 48
    invoke-static {v4, p1}, Ld0/s0;->j(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->W:F

    .line 49
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    .line 50
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 52
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/RecyclerView$k$a;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$k;->j(Landroidx/recyclerview/widget/RecyclerView$k$a;)V

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->K()V

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->M()V

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    .line 56
    invoke-static {p0}, Ld0/p0;->r(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    .line 57
    invoke-static {p0, v2}, Ld0/p0;->d0(Landroid/view/View;I)V

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Landroid/view/accessibility/AccessibilityManager;

    .line 60
    new-instance v3, Landroidx/recyclerview/widget/i;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/i;)V

    const/high16 v3, 0x40000

    if-eqz p2, :cond_6

    .line 61
    sget-object v4, Lg1/b;->h:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 62
    sget v5, Lg1/b;->p:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    sget v5, Lg1/b;->j:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 64
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 65
    :cond_4
    sget v1, Lg1/b;->k:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz v1, :cond_5

    .line 66
    sget v1, Lg1/b;->n:I

    .line 67
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 68
    sget v3, Lg1/b;->o:I

    .line 69
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 70
    sget v5, Lg1/b;->l:I

    .line 71
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 72
    sget v6, Lg1/b;->m:I

    .line 73
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 74
    invoke-virtual {p0, v1, v3, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 76
    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/RecyclerView;->l(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 77
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->K0:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 80
    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 81
    :goto_3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static F(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    .line 28
    sub-int/2addr v3, v4

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    add-int/2addr v4, v5

    .line 36
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    .line 38
    add-int/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    add-int/2addr p0, v1

    .line 46
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    .line 48
    add-int/2addr p0, v0

    .line 49
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private G(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2e

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    const-string p1, "."

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method private J()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method

.method private L()V
    .locals 1

    .line 1
    invoke-static {p0}, Ld0/p0;->s(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-static {p0, v0}, Ld0/p0;->f0(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/b$b;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 12
    .line 13
    return-void
.end method

.method private R(Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1a

    .line 3
    .line 4
    if-ne p2, p0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    return v1

    .line 26
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$n;->C()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 p2, -0x1

    .line 69
    if-ne p1, v1, :cond_4

    .line 70
    .line 71
    move p1, p2

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    move p1, v1

    .line 74
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    .line 79
    .line 80
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    if-lt v3, v5, :cond_5

    .line 83
    .line 84
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    if-gt v6, v5, :cond_6

    .line 87
    .line 88
    :cond_5
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    if-ge v6, v7, :cond_6

    .line 93
    .line 94
    move v3, v1

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 99
    .line 100
    if-gt v6, v7, :cond_7

    .line 101
    .line 102
    if-lt v3, v7, :cond_8

    .line 103
    .line 104
    :cond_7
    if-le v3, v5, :cond_8

    .line 105
    .line 106
    move v3, p2

    .line 107
    goto :goto_1

    .line 108
    :cond_8
    move v3, v0

    .line 109
    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    if-lt v5, v6, :cond_9

    .line 114
    .line 115
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    if-gt v7, v6, :cond_a

    .line 118
    .line 119
    :cond_9
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    if-ge v7, v8, :cond_a

    .line 124
    .line 125
    move p2, v1

    .line 126
    goto :goto_2

    .line 127
    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    if-gt v2, v4, :cond_b

    .line 132
    .line 133
    if-lt v5, v4, :cond_c

    .line 134
    .line 135
    :cond_b
    if-le v5, v6, :cond_c

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_c
    move p2, v0

    .line 139
    :goto_2
    if-eq p3, v1, :cond_18

    .line 140
    .line 141
    const/4 v2, 0x2

    .line 142
    if-eq p3, v2, :cond_15

    .line 143
    .line 144
    const/16 p1, 0x11

    .line 145
    .line 146
    if-eq p3, p1, :cond_13

    .line 147
    .line 148
    const/16 p1, 0x21

    .line 149
    .line 150
    if-eq p3, p1, :cond_11

    .line 151
    .line 152
    const/16 p1, 0x42

    .line 153
    .line 154
    if-eq p3, p1, :cond_f

    .line 155
    .line 156
    const/16 p1, 0x82

    .line 157
    .line 158
    if-ne p3, p1, :cond_e

    .line 159
    .line 160
    if-lez p2, :cond_d

    .line 161
    .line 162
    move v0, v1

    .line 163
    :cond_d
    return v0

    .line 164
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v0, "Invalid direction: "

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_f
    if-lez v3, :cond_10

    .line 195
    .line 196
    move v0, v1

    .line 197
    :cond_10
    return v0

    .line 198
    :cond_11
    if-gez p2, :cond_12

    .line 199
    .line 200
    move v0, v1

    .line 201
    :cond_12
    return v0

    .line 202
    :cond_13
    if-gez v3, :cond_14

    .line 203
    .line 204
    move v0, v1

    .line 205
    :cond_14
    return v0

    .line 206
    :cond_15
    if-gtz p2, :cond_16

    .line 207
    .line 208
    if-nez p2, :cond_17

    .line 209
    .line 210
    mul-int/2addr v3, p1

    .line 211
    if-ltz v3, :cond_17

    .line 212
    .line 213
    :cond_16
    move v0, v1

    .line 214
    :cond_17
    return v0

    .line 215
    :cond_18
    if-ltz p2, :cond_19

    .line 216
    .line 217
    if-nez p2, :cond_1a

    .line 218
    .line 219
    mul-int/2addr v3, p1

    .line 220
    if-gtz v3, :cond_1a

    .line 221
    .line 222
    :cond_19
    move v0, v1

    .line 223
    :cond_1a
    :goto_3
    return v0
.end method

.method static synthetic a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private b0(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, v2

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 43
    .line 44
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private d0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->E0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private e0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->s()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$n;->g0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->q()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->i()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:Z

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    move v0, v2

    .line 50
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 51
    .line 52
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 53
    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 57
    .line 58
    if-eqz v4, :cond_6

    .line 59
    .line 60
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 61
    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 67
    .line 68
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RecyclerView$n;->g:Z

    .line 69
    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    :cond_4
    if-nez v4, :cond_5

    .line 73
    .line 74
    move v4, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :cond_6
    move v4, v1

    .line 79
    :goto_3
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$x;->k:Z

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 86
    .line 87
    if-nez v0, :cond_7

    .line 88
    .line 89
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    move v1, v2

    .line 96
    :cond_7
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$x;->l:Z

    .line 97
    .line 98
    return-void
.end method

.method private g0(FFFF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p2, v0

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    neg-float v4, p2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    int-to-float v5, v5

    .line 20
    div-float/2addr v4, v5

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-float v5, v5

    .line 26
    div-float/2addr p3, v5

    .line 27
    sub-float p3, v2, p3

    .line 28
    .line 29
    invoke-static {v1, v4, p3}, Landroidx/core/widget/d;->c(Landroid/widget/EdgeEffect;FF)V

    .line 30
    .line 31
    .line 32
    :goto_0
    move p3, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    cmpl-float v1, p2, v0

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    div-float v4, p2, v4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    int-to-float v5, v5

    .line 55
    div-float/2addr p3, v5

    .line 56
    invoke-static {v1, v4, p3}, Landroidx/core/widget/d;->c(Landroid/widget/EdgeEffect;FF)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p3, 0x0

    .line 61
    :goto_1
    cmpg-float v1, p4, v0

    .line 62
    .line 63
    if-gez v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 69
    .line 70
    neg-float v1, p4

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    div-float/2addr v1, v2

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-float v2, v2

    .line 82
    div-float/2addr p1, v2

    .line 83
    invoke-static {p3, v1, p1}, Landroidx/core/widget/d;->c(Landroid/widget/EdgeEffect;FF)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    cmpl-float v1, p4, v0

    .line 88
    .line 89
    if-lez v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()V

    .line 92
    .line 93
    .line 94
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    div-float v1, p4, v1

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    div-float/2addr p1, v4

    .line 109
    sub-float/2addr v2, p1

    .line 110
    invoke-static {p3, v1, v2}, Landroidx/core/widget/d;->c(Landroid/widget/EdgeEffect;FF)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move v3, p3

    .line 115
    :goto_2
    if-nez v3, :cond_4

    .line 116
    .line 117
    cmpl-float p1, p2, v0

    .line 118
    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    cmpl-float p1, p4, v0

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    :cond_4
    invoke-static {p0}, Ld0/p0;->O(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    return-void
.end method

.method private getScrollingChildHelper()Ld0/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:Ld0/d0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ld0/d0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ld0/d0;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:Ld0/d0;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:Ld0/d0;

    .line 13
    .line 14
    return-object v0
.end method

.method private h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->n0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    or-int/2addr v0, v1

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    or-int/2addr v0, v1

    .line 44
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    or-int/2addr v0, v1

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-static {p0}, Ld0/p0;->O(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method static i(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 1
    const-string v0, ": Could not instantiate the LayoutManager: "

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-class v2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    const/4 v2, 0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    :try_start_1
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->S0:[Ljava/lang/Class;

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x4

    .line 57
    new-array v5, v5, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p1, v5, v3

    .line 60
    .line 61
    aput-object p3, v5, v2

    .line 62
    .line 63
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p4, 0x2

    .line 68
    aput-object p1, v5, p4

    .line 69
    .line 70
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 p4, 0x3

    .line 75
    aput-object p1, v5, p4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_2
    new-array p4, v3, [Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 82
    .line 83
    .line 84
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    const/4 v5, 0x0

    .line 86
    :goto_1
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :catch_1
    move-exception p4

    .line 101
    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 102
    .line 103
    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    new-instance p5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ": Error creating LayoutManager "

    .line 119
    .line 120
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p5

    .line 130
    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    .line 134
    :catch_2
    move-exception p1

    .line 135
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    new-instance p5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p3, ": Class is not a LayoutManager "

    .line 150
    .line 151
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw p4

    .line 165
    :catch_3
    move-exception p1

    .line 166
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    new-instance p5, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p3, ": Cannot access non-public constructor "

    .line 181
    .line 182
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    throw p4

    .line 196
    :catch_4
    move-exception p1

    .line 197
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    new-instance p5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    throw p4

    .line 225
    :catch_5
    move-exception p1

    .line 226
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    new-instance p5, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw p4

    .line 254
    :catch_6
    move-exception p1

    .line 255
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    new-instance p5, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string p3, ": Unable to find LayoutManager "

    .line 270
    .line 271
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw p4

    .line 285
    :cond_1
    :goto_2
    return-void
.end method

.method private m0(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    move-object v0, p2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 29
    .line 30
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    sub-int/2addr v2, v3

    .line 43
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    add-int/2addr v2, v3

    .line 50
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    sub-int/2addr v2, v3

    .line 57
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 79
    .line 80
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    xor-int/lit8 v9, v0, 0x1

    .line 86
    .line 87
    if-nez p2, :cond_3

    .line 88
    .line 89
    move v10, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v10, v4

    .line 92
    :goto_1
    move-object v6, p0

    .line 93
    move-object v7, p1

    .line 94
    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$n;->z0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->w0(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->h0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->P()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/16 v2, 0x800

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Le0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private p0(Landroidx/recyclerview/widget/RecyclerView$g;ZZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->i0()V

    .line 6
    .line 7
    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/a;->s()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1, p3, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->U(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 22
    .line 23
    invoke-virtual {p1, p3, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->o(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    .line 30
    .line 31
    return-void
.end method

.method private s(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    :cond_1
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 25
    .line 26
    :cond_2
    return v2

    .line 27
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    move v3, v1

    .line 37
    :goto_1
    if-ge v3, v0, :cond_5

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$q;

    .line 46
    .line 47
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 54
    .line 55
    return v2

    .line 56
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    return v1
.end method

.method private t(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 12
    .line 13
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_3

    .line 22
    .line 23
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$q;

    .line 30
    .line 31
    invoke-interface {v5, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return v3
.end method

.method private y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->i()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->D0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method A()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", adapter:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", layout:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", context:"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public B(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object p1, v0

    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    return-object p1
.end method

.method C(IZ)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    if-ge p2, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public D(II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "RecyclerView"

    .line 7
    .line 8
    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    .line 36
    .line 37
    if-ge v3, v4, :cond_3

    .line 38
    .line 39
    :cond_2
    move p1, v1

    .line 40
    :cond_3
    if-eqz v2, :cond_4

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    .line 47
    .line 48
    if-ge v3, v4, :cond_5

    .line 49
    .line 50
    :cond_4
    move p2, v1

    .line 51
    :cond_5
    if-nez p1, :cond_6

    .line 52
    .line 53
    if-nez p2, :cond_6

    .line 54
    .line 55
    return v1

    .line 56
    :cond_6
    int-to-float v3, p1

    .line 57
    int-to-float v4, p2

    .line 58
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_a

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v0, :cond_8

    .line 66
    .line 67
    if-eqz v2, :cond_7

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_7
    move v6, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_8
    :goto_0
    move v6, v5

    .line 73
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 74
    .line 75
    .line 76
    if-eqz v6, :cond_a

    .line 77
    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    or-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    :cond_9
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->u0(II)Z

    .line 83
    .line 84
    .line 85
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 86
    .line 87
    neg-int v1, v0

    .line 88
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 97
    .line 98
    neg-int v1, v0

    .line 99
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 108
    .line 109
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->e(II)V

    .line 110
    .line 111
    .line 112
    return v5

    .line 113
    :cond_a
    return v1
.end method

.method public H(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ld0/d0;->l(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method K()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/a;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 12
    .line 13
    return-void
.end method

.method N(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/recyclerview/widget/d;

    .line 18
    .line 19
    sget v2, Lg1/a;->a:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    sget v2, Lg1/a;->c:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sget v2, Lg1/a;->b:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    move-object v6, p4

    .line 42
    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p3, "Trying to set fast scroller without both required drawables."

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method O()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    return-void
.end method

.method P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

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
    return v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method S()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$o;->b:Z

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->j()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method T()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->k()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method U(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->l(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method V(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->m(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method W(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->n(IIZ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public X(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method Y()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 6
    .line 7
    return-void
.end method

.method Z()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method a0(Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->V(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView$m;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 6
    .line 7
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->d(Landroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->f(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->g(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->h(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->i(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->j(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->k(Landroidx/recyclerview/widget/RecyclerView$x;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$m;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-gez p2, :cond_2

    .line 23
    .line 24
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ld0/d0;->a(FFZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ld0/d0;->b(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Ld0/d0;->c(II[I[I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Ld0/d0;->f(IIII[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 23
    .line 24
    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v3, v1

    .line 55
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    neg-int v4, v4

    .line 65
    add-int/2addr v4, v3

    .line 66
    int-to-float v3, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    move v3, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v3, v1

    .line 84
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move v3, v1

    .line 89
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 104
    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    int-to-float v4, v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    int-to-float v5, v5

    .line 117
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    move v4, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    move v4, v1

    .line 133
    :goto_4
    or-int/2addr v3, v4

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_9

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 156
    .line 157
    if-eqz v5, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    goto :goto_5

    .line 164
    :cond_7
    move v5, v1

    .line 165
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 166
    .line 167
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 168
    .line 169
    .line 170
    neg-int v5, v5

    .line 171
    int-to-float v5, v5

    .line 172
    neg-int v4, v4

    .line 173
    int-to-float v4, v4

    .line 174
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    .line 176
    .line 177
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 178
    .line 179
    if-eqz v4, :cond_8

    .line 180
    .line 181
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_8

    .line 186
    .line 187
    move v4, v2

    .line 188
    goto :goto_6

    .line 189
    :cond_8
    move v4, v1

    .line 190
    :goto_6
    or-int/2addr v3, v4

    .line 191
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 192
    .line 193
    .line 194
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 195
    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_c

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/high16 v4, 0x43340000    # 180.0f

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 211
    .line 212
    .line 213
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 214
    .line 215
    if-eqz v4, :cond_a

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    neg-int v4, v4

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    add-int/2addr v4, v5

    .line 227
    int-to-float v4, v4

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    neg-int v5, v5

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    add-int/2addr v5, v6

    .line 238
    int-to-float v5, v5

    .line 239
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    neg-int v4, v4

    .line 248
    int-to-float v4, v4

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    neg-int v5, v5

    .line 254
    int-to-float v5, v5

    .line 255
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    .line 257
    .line 258
    :goto_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 259
    .line 260
    if-eqz v4, :cond_b

    .line 261
    .line 262
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_b

    .line 267
    .line 268
    move v1, v2

    .line 269
    :cond_b
    or-int/2addr v3, v1

    .line 270
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 271
    .line 272
    .line 273
    :cond_c
    if-nez v3, :cond_d

    .line 274
    .line 275
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 276
    .line 277
    if-eqz p1, :cond_d

    .line 278
    .line 279
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-lez p1, :cond_d

    .line 286
    .line 287
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 288
    .line 289
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$k;->g()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_d

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_d
    move v2, v3

    .line 297
    :goto_8
    if-eqz v2, :cond_e

    .line 298
    .line 299
    invoke-static {p0}, Ld0/p0;->O(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->e0(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 p2, 0x0

    .line 38
    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->m0(Landroid/view/View;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->R(Landroid/view/View;Landroid/view/View;I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:I

    .line 43
    .line 44
    if-lez p1, :cond_2

    .line 45
    .line 46
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "RecyclerView"

    .line 73
    .line 74
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 75
    .line 76
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->n()Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "RecyclerView has no LayoutManager"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->p(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->q()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Landroidx/recyclerview/widget/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    .line 2
    .line 3
    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()Landroidx/recyclerview/widget/RecyclerView$s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 2
    .line 3
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld0/d0;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->v0(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->w0(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->b()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld0/d0;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method j(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-static {p0}, Ld0/p0;->O(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method

.method public j0(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 2
    .line 3
    const-string v1, "RV FullInvalidate"

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->n(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 31
    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->n(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    const-string v0, "RV PartialInvalidate"

    .line 41
    .line 42
    invoke-static {v0}, Lz/n;->a(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->t0()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->q()V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->h()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->v0(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Z()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lz/n;->b()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->o()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-static {v1}, Lz/n;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lz/n;->b()V

    .line 101
    .line 102
    .line 103
    :cond_5
    :goto_1
    return-void

    .line 104
    :cond_6
    :goto_2
    invoke-static {v1}, Lz/n;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lz/n;->b()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public k0(Landroidx/recyclerview/widget/RecyclerView$q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public l0(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method m(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-static {p0}, Ld0/p0;->v(Landroid/view/View;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->e(III)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    invoke-static {p0}, Ld0/p0;->u(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->e(III)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method n(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->X(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method o0(IILandroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v8, 0x0

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v0, p0

    .line 23
    move v3, v8

    .line 24
    move v4, v7

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->r(IIII[II)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 35
    .line 36
    aget v0, p2, v1

    .line 37
    .line 38
    sub-int/2addr p1, v0

    .line 39
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 40
    .line 41
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aget p2, p2, v2

    .line 45
    .line 46
    sub-int/2addr p1, p2

    .line 47
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 48
    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    int-to-float p1, v0

    .line 52
    int-to-float p2, p2

    .line 53
    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 57
    .line 58
    aget p2, p1, v1

    .line 59
    .line 60
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 61
    .line 62
    aget v0, p3, v1

    .line 63
    .line 64
    add-int/2addr p2, v0

    .line 65
    aput p2, p1, v1

    .line 66
    .line 67
    aget p2, p1, v2

    .line 68
    .line 69
    aget p3, p3, v2

    .line 70
    .line 71
    add-int/2addr p2, p3

    .line 72
    aput p2, p1, v2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x2

    .line 80
    if-eq v0, v2, :cond_4

    .line 81
    .line 82
    if-eqz p3, :cond_3

    .line 83
    .line 84
    const/16 v0, 0x2002

    .line 85
    .line 86
    invoke-static {p3, v0}, Ld0/c0;->a(Landroid/view/MotionEvent;I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v2, v8

    .line 97
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    int-to-float v3, v7

    .line 102
    invoke-direct {p0, v0, v2, p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->g0(FFFF)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->j(II)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 115
    .line 116
    .line 117
    :cond_5
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 32
    .line 33
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    sget-object v0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/ThreadLocal;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/recyclerview/widget/e;

    .line 44
    .line 45
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    new-instance v1, Landroidx/recyclerview/widget/e;

    .line 50
    .line 51
    invoke-direct {v1}, Landroidx/recyclerview/widget/e;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 55
    .line 56
    invoke-static {p0}, Ld0/p0;->p(Landroid/view/View;)Landroid/view/Display;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/high16 v2, 0x41f00000    # 30.0f

    .line 73
    .line 74
    cmpl-float v2, v1, v2

    .line 75
    .line 76
    if-ltz v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    .line 80
    .line 81
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 82
    .line 83
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 84
    .line 85
    .line 86
    div-float/2addr v3, v1

    .line 87
    float-to-long v3, v3

    .line 88
    iput-wide v3, v2, Landroidx/recyclerview/widget/e;->c:J

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->x0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->m(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H0:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I0:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/m;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->a()V

    .line 39
    .line 40
    .line 41
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/e;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    if-ne v0, v2, :cond_8

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    and-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x9

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    neg-float v0, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v0, v2

    .line 46
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    const/16 v3, 0xa

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    :goto_1
    move v3, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/high16 v3, 0x400000

    .line 68
    .line 69
    and-int/2addr v0, v3

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    const/16 v0, 0x1a

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    neg-float v0, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    move v3, v0

    .line 97
    move v0, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move v0, v2

    .line 100
    move v3, v0

    .line 101
    :goto_2
    cmpl-float v4, v0, v2

    .line 102
    .line 103
    if-nez v4, :cond_7

    .line 104
    .line 105
    cmpl-float v2, v3, v2

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->V:F

    .line 110
    .line 111
    mul-float/2addr v3, v2

    .line 112
    float-to-int v2, v3

    .line 113
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->W:F

    .line 114
    .line 115
    mul-float/2addr v0, v3

    .line 116
    float-to-int v0, v0

    .line 117
    invoke-virtual {p0, v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->o0(IILandroid/view/MotionEvent;)Z

    .line 118
    .line 119
    .line 120
    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->t(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v6, 0x2

    .line 57
    const/high16 v7, 0x3f000000    # 0.5f

    .line 58
    .line 59
    if-eqz v4, :cond_c

    .line 60
    .line 61
    if-eq v4, v2, :cond_b

    .line 62
    .line 63
    if-eq v4, v6, :cond_7

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    if-eq v4, v0, :cond_6

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    if-eq v4, v0, :cond_5

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    if-eq v4, v0, :cond_4

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/MotionEvent;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 86
    .line 87
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-float/2addr v0, v7

    .line 92
    float-to-int v0, v0

    .line 93
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 94
    .line 95
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 96
    .line 97
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    add-float/2addr p1, v7

    .line 102
    float-to-int p1, p1

    .line 103
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 104
    .line 105
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 115
    .line 116
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-gez v4, :cond_8

    .line 121
    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v0, "Error processing scroll; pointer index for id "

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v0, "RecyclerView"

    .line 147
    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    add-float/2addr v5, v7

    .line 157
    float-to-int v5, v5

    .line 158
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    add-float/2addr p1, v7

    .line 163
    float-to-int p1, p1

    .line 164
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 165
    .line 166
    if-eq v4, v2, :cond_10

    .line 167
    .line 168
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 169
    .line 170
    sub-int v4, v5, v4

    .line 171
    .line 172
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 173
    .line 174
    sub-int v6, p1, v6

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 183
    .line 184
    if-le v0, v4, :cond_9

    .line 185
    .line 186
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 187
    .line 188
    move v0, v2

    .line 189
    goto :goto_0

    .line 190
    :cond_9
    move v0, v1

    .line 191
    :goto_0
    if-eqz v3, :cond_a

    .line 192
    .line 193
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 198
    .line 199
    if-le v3, v4, :cond_a

    .line 200
    .line 201
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 202
    .line 203
    move v0, v2

    .line 204
    :cond_a
    if-eqz v0, :cond_10

    .line 205
    .line 206
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->w0(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 220
    .line 221
    if-eqz v4, :cond_d

    .line 222
    .line 223
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 224
    .line 225
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    add-float/2addr v4, v7

    .line 236
    float-to-int v4, v4

    .line 237
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 238
    .line 239
    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    add-float/2addr p1, v7

    .line 246
    float-to-int p1, p1

    .line 247
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 248
    .line 249
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 250
    .line 251
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 252
    .line 253
    if-ne p1, v6, :cond_e

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 263
    .line 264
    .line 265
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 266
    .line 267
    aput v1, p1, v2

    .line 268
    .line 269
    aput v1, p1, v1

    .line 270
    .line 271
    if-eqz v3, :cond_f

    .line 272
    .line 273
    or-int/lit8 v0, v0, 0x2

    .line 274
    .line 275
    :cond_f
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->u0(II)Z

    .line 276
    .line 277
    .line 278
    :cond_10
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 279
    .line 280
    if-ne p1, v2, :cond_11

    .line 281
    .line 282
    move v1, v2

    .line 283
    :cond_11
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    const-string p1, "RV OnLayout"

    .line 2
    .line 3
    invoke-static {p1}, Lz/n;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lz/n;->b()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 14
    .line 15
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->m(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->Q()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l0(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;II)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l0(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->t0()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->e0()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Z()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 63
    .line 64
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$x;->l:Z

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Z

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->i()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 78
    .line 79
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Z

    .line 80
    .line 81
    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->v0(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 88
    .line 89
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->l:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 106
    .line 107
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->f:I

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->t0()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 113
    .line 114
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 115
    .line 116
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 117
    .line 118
    invoke-virtual {v0, v2, v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->l0(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->v0(Z)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 125
    .line 126
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->h:Z

    .line 127
    .line 128
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

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
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 12
    .line 13
    invoke-virtual {p1}, Lh0/a;->a()Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/os/Parcelable;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->o0(Landroid/os/Parcelable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n;->p0()Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/os/Parcelable;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/os/Parcelable;

    .line 31
    .line 32
    :goto_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p3, :cond_0

    .line 5
    .line 6
    if-eq p2, p4, :cond_1

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 9
    .line 10
    .line 11
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1e

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_8

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->s(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 63
    .line 64
    aput v1, v7, v2

    .line 65
    .line 66
    aput v1, v7, v1

    .line 67
    .line 68
    :cond_4
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 69
    .line 70
    aget v8, v7, v1

    .line 71
    .line 72
    int-to-float v8, v8

    .line 73
    aget v7, v7, v2

    .line 74
    .line 75
    int-to-float v7, v7

    .line 76
    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 77
    .line 78
    .line 79
    const/high16 v7, 0x3f000000    # 0.5f

    .line 80
    .line 81
    if-eqz v5, :cond_1a

    .line 82
    .line 83
    if-eq v5, v2, :cond_14

    .line 84
    .line 85
    const/4 v8, 0x2

    .line 86
    if-eq v5, v8, :cond_8

    .line 87
    .line 88
    const/4 v0, 0x3

    .line 89
    if-eq v5, v0, :cond_7

    .line 90
    .line 91
    const/4 v0, 0x5

    .line 92
    if-eq v5, v0, :cond_6

    .line 93
    .line 94
    const/4 v0, 0x6

    .line 95
    if-eq v5, v0, :cond_5

    .line 96
    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/MotionEvent;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 109
    .line 110
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    add-float/2addr v0, v7

    .line 115
    float-to-int v0, v0

    .line 116
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 117
    .line 118
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 119
    .line 120
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    add-float/2addr p1, v7

    .line 125
    float-to-int p1, p1

    .line 126
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 127
    .line 128
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_8
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 138
    .line 139
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-gez v5, :cond_9

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "Error processing scroll; pointer index for id "

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v0, "RecyclerView"

    .line 170
    .line 171
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    add-float/2addr v6, v7

    .line 180
    float-to-int v6, v6

    .line 181
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    add-float/2addr p1, v7

    .line 186
    float-to-int p1, p1

    .line 187
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 188
    .line 189
    sub-int/2addr v5, v6

    .line 190
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 191
    .line 192
    sub-int v13, v7, p1

    .line 193
    .line 194
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->E0:[I

    .line 195
    .line 196
    iget-object v11, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    move-object v7, p0

    .line 200
    move v8, v5

    .line 201
    move v9, v13

    .line 202
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->q(II[I[II)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_a

    .line 207
    .line 208
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->E0:[I

    .line 209
    .line 210
    aget v8, v7, v1

    .line 211
    .line 212
    sub-int/2addr v5, v8

    .line 213
    aget v7, v7, v2

    .line 214
    .line 215
    sub-int/2addr v13, v7

    .line 216
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 217
    .line 218
    aget v8, v7, v1

    .line 219
    .line 220
    int-to-float v8, v8

    .line 221
    aget v7, v7, v2

    .line 222
    .line 223
    int-to-float v7, v7

    .line 224
    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 225
    .line 226
    .line 227
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:[I

    .line 228
    .line 229
    aget v8, v7, v1

    .line 230
    .line 231
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 232
    .line 233
    aget v10, v9, v1

    .line 234
    .line 235
    add-int/2addr v8, v10

    .line 236
    aput v8, v7, v1

    .line 237
    .line 238
    aget v8, v7, v2

    .line 239
    .line 240
    aget v9, v9, v2

    .line 241
    .line 242
    add-int/2addr v8, v9

    .line 243
    aput v8, v7, v2

    .line 244
    .line 245
    :cond_a
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 246
    .line 247
    if-eq v7, v2, :cond_f

    .line 248
    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 256
    .line 257
    if-le v7, v8, :cond_c

    .line 258
    .line 259
    if-lez v5, :cond_b

    .line 260
    .line 261
    sub-int/2addr v5, v8

    .line 262
    goto :goto_0

    .line 263
    :cond_b
    add-int/2addr v5, v8

    .line 264
    :goto_0
    move v7, v2

    .line 265
    goto :goto_1

    .line 266
    :cond_c
    move v7, v1

    .line 267
    :goto_1
    if-eqz v3, :cond_e

    .line 268
    .line 269
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 274
    .line 275
    if-le v8, v9, :cond_e

    .line 276
    .line 277
    if-lez v13, :cond_d

    .line 278
    .line 279
    sub-int/2addr v13, v9

    .line 280
    goto :goto_2

    .line 281
    :cond_d
    add-int/2addr v13, v9

    .line 282
    :goto_2
    move v7, v2

    .line 283
    :cond_e
    if-eqz v7, :cond_f

    .line 284
    .line 285
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 286
    .line 287
    .line 288
    :cond_f
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 289
    .line 290
    if-ne v7, v2, :cond_1c

    .line 291
    .line 292
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:[I

    .line 293
    .line 294
    aget v8, v7, v1

    .line 295
    .line 296
    sub-int/2addr v6, v8

    .line 297
    iput v6, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 298
    .line 299
    aget v6, v7, v2

    .line 300
    .line 301
    sub-int/2addr p1, v6

    .line 302
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 303
    .line 304
    if-eqz v0, :cond_10

    .line 305
    .line 306
    move p1, v5

    .line 307
    goto :goto_3

    .line 308
    :cond_10
    move p1, v1

    .line 309
    :goto_3
    if-eqz v3, :cond_11

    .line 310
    .line 311
    move v0, v13

    .line 312
    goto :goto_4

    .line 313
    :cond_11
    move v0, v1

    .line 314
    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->o0(IILandroid/view/MotionEvent;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_12

    .line 319
    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    .line 326
    .line 327
    :cond_12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/e;

    .line 328
    .line 329
    if-eqz p1, :cond_1c

    .line 330
    .line 331
    if-nez v5, :cond_13

    .line 332
    .line 333
    if-eqz v13, :cond_1c

    .line 334
    .line 335
    :cond_13
    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/e;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 340
    .line 341
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 345
    .line 346
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->U:I

    .line 347
    .line 348
    int-to-float v5, v5

    .line 349
    const/16 v6, 0x3e8

    .line 350
    .line 351
    invoke-virtual {p1, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 352
    .line 353
    .line 354
    const/4 p1, 0x0

    .line 355
    if-eqz v0, :cond_15

    .line 356
    .line 357
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 358
    .line 359
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 360
    .line 361
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    neg-float v0, v0

    .line 366
    goto :goto_5

    .line 367
    :cond_15
    move v0, p1

    .line 368
    :goto_5
    if-eqz v3, :cond_16

    .line 369
    .line 370
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 371
    .line 372
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 373
    .line 374
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    neg-float v3, v3

    .line 379
    goto :goto_6

    .line 380
    :cond_16
    move v3, p1

    .line 381
    :goto_6
    cmpl-float v5, v0, p1

    .line 382
    .line 383
    if-nez v5, :cond_17

    .line 384
    .line 385
    cmpl-float p1, v3, p1

    .line 386
    .line 387
    if-eqz p1, :cond_18

    .line 388
    .line 389
    :cond_17
    float-to-int p1, v0

    .line 390
    float-to-int v0, v3

    .line 391
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->D(II)Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-nez p1, :cond_19

    .line 396
    .line 397
    :cond_18
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 398
    .line 399
    .line 400
    :cond_19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->n0()V

    .line 401
    .line 402
    .line 403
    move v1, v2

    .line 404
    goto :goto_7

    .line 405
    :cond_1a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->M:I

    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    add-float/2addr v5, v7

    .line 416
    float-to-int v5, v5

    .line 417
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    .line 418
    .line 419
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    add-float/2addr p1, v7

    .line 426
    float-to-int p1, p1

    .line 427
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    .line 428
    .line 429
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    .line 430
    .line 431
    if-eqz v3, :cond_1b

    .line 432
    .line 433
    or-int/lit8 v0, v0, 0x2

    .line 434
    .line 435
    :cond_1b
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->u0(II)Z

    .line 436
    .line 437
    .line 438
    :cond_1c
    :goto_7
    if-nez v1, :cond_1d

    .line 439
    .line 440
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/view/VelocityTracker;

    .line 441
    .line 442
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 443
    .line 444
    .line 445
    :cond_1d
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 446
    .line 447
    .line 448
    return v2

    .line 449
    :cond_1e
    :goto_8
    return v1
.end method

.method p()V
    .locals 2

    .line 1
    const-string v0, "RecyclerView"

    .line 2
    .line 3
    const-string v1, "No adapter attached; skipping layout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q(II[I[II)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Ld0/d0;->d(II[I[II)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method q0(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Le0/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, p1

    .line 20
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:I

    .line 21
    .line 22
    or-int/2addr p1, v1

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    return v1
.end method

.method public r(IIII[II)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move v6, p6

    .line 11
    invoke-virtual/range {v0 .. v6}, Ld0/d0;->g(IIII[II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public r0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->s0(IILandroid/view/animation/Interpolator;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->n0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;Landroid/view/View;Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->m0(Landroid/view/View;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->y0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$q;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->c(Z)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public s0(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "RecyclerView"

    .line 6
    .line 7
    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    move p1, v1

    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    move p2, v1

    .line 35
    :cond_3
    if-nez p1, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->h(IILandroid/view/animation/Interpolator;)V

    .line 42
    .line 43
    .line 44
    :cond_5
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "RecyclerView"

    .line 6
    .line 7
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move p1, v2

    .line 37
    :goto_0
    if-eqz v1, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    move p2, v2

    .line 41
    :goto_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->o0(IILandroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    :cond_5
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1
    const-string p1, "RecyclerView"

    .line 2
    .line 3
    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->q0(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Landroidx/recyclerview/widget/i;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ld0/p0;->U(Landroid/view/View;Ld0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->p0(Landroidx/recyclerview/widget/RecyclerView$g;ZZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->f0(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc0/f;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$k;->j(Landroidx/recyclerview/widget/RecyclerView$k$a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/RecyclerView$k$a;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$k;->j(Landroidx/recyclerview/widget/RecyclerView$k$a;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->u(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->g(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 20
    .line 21
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-wide v1, v3

    .line 33
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 42
    .line 43
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->x0()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->x0()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$k;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$k;->c()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->v0(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->w0(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->b()V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->m(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->C0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->b()V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->i()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$n;->C0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    .line 79
    .line 80
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Z

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$n;->l(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "LayoutManager "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, " is already attached to a RecyclerView:"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->w()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ld0/d0;->n(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 2
    .line 3
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->s(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->y0()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->u(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "; using default value"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "RecyclerView"

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->t(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ld0/d0;->p(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld0/d0;->r()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method t0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->q0(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$r;

    .line 37
    .line 38
    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public u0(II)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ld0/d0;->q(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method v()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H0:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H0:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H0:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    throw v0
.end method

.method v0(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 16
    .line 17
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 32
    .line 33
    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 38
    .line 39
    :cond_3
    sub-int/2addr v2, v1

    .line 40
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->t:I

    .line 41
    .line 42
    return-void
.end method

.method w()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$j;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public w0(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ld0/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ld0/d0;->s(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method x()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$j;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public x0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->y0()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$j;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$j;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method z0(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p3, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->f(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 23
    .line 24
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->x(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
