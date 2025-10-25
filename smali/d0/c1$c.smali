.class Ld0/c1$c;
.super Ld0/c1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld0/c1$e;-><init>()V

    .line 2
    invoke-static {}, Ld0/j1;->a()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Ld0/c1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ld0/c1$e;-><init>(Ld0/c1;)V

    .line 4
    invoke-virtual {p1}, Ld0/c1;->u()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ld0/k1;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ld0/j1;->a()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Ld0/c1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld0/c1$e;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, Ld0/i1;->a(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ld0/c1;->v(Landroid/view/WindowInsets;)Ld0/c1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Ld0/c1$e;->b:[Lv/b;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ld0/c1;->q([Lv/b;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method c(Lv/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv/b;->e()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ld0/g1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method d(Lv/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv/b;->e()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ld0/f1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method e(Lv/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv/b;->e()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ld0/h1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method f(Lv/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv/b;->e()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ld0/e1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method g(Lv/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lv/b;->e()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ld0/d1;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method
