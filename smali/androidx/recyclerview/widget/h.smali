.class public abstract Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView$n;

.field private b:I

.field final c:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/h;->b:I

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$n;Landroidx/recyclerview/widget/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/h;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/h$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/h$a;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$n;I)Landroidx/recyclerview/widget/h;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Landroidx/recyclerview/widget/h;->c(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "invalid orientation"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    invoke-static {p0}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/h;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView$n;)Landroidx/recyclerview/widget/h;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/h$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/h$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method
