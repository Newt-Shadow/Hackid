.class Ld0/c1$i;
.super Ld0/c1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private n:Lv/b;

.field private o:Lv/b;

.field private p:Lv/b;


# direct methods
.method constructor <init>(Ld0/c1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld0/c1$h;-><init>(Ld0/c1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ld0/c1$i;->n:Lv/b;

    .line 3
    iput-object p1, p0, Ld0/c1$i;->o:Lv/b;

    .line 4
    iput-object p1, p0, Ld0/c1$i;->p:Lv/b;

    return-void
.end method

.method constructor <init>(Ld0/c1;Ld0/c1$i;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ld0/c1$h;-><init>(Ld0/c1;Ld0/c1$h;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ld0/c1$i;->n:Lv/b;

    .line 7
    iput-object p1, p0, Ld0/c1$i;->o:Lv/b;

    .line 8
    iput-object p1, p0, Ld0/c1$i;->p:Lv/b;

    return-void
.end method


# virtual methods
.method h()Lv/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$i;->o:Lv/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ld0/p1;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ld0/c1$i;->o:Lv/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ld0/c1$i;->o:Lv/b;

    .line 18
    .line 19
    return-object v0
.end method

.method j()Lv/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$i;->n:Lv/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ld0/n1;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ld0/c1$i;->n:Lv/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ld0/c1$i;->n:Lv/b;

    .line 18
    .line 19
    return-object v0
.end method

.method l()Lv/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$i;->p:Lv/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ld0/o1;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ld0/c1$i;->p:Lv/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ld0/c1$i;->p:Lv/b;

    .line 18
    .line 19
    return-object v0
.end method

.method m(IIII)Ld0/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Ld0/q1;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ld0/c1;->v(Landroid/view/WindowInsets;)Ld0/c1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public t(Lv/b;)V
    .locals 0

    .line 1
    return-void
.end method
