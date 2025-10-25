.class public Landroidx/recyclerview/widget/i$a;
.super Ld0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final d:Landroidx/recyclerview/widget/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Le0/t;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ld0/a;->g(Landroid/view/View;Le0/t;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->d0(Landroid/view/View;Le0/t;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld0/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->d:Landroidx/recyclerview/widget/i;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/recyclerview/widget/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->t0(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method
