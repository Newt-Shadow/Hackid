.class public abstract Lb3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/m3;


# instance fields
.field protected final a:Lb3/g4$d;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb3/g4$d;

    .line 5
    .line 6
    invoke-direct {v0}, Lb3/g4$d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb3/n;->a:Lb3/g4$d;

    .line 10
    .line 11
    return-void
.end method

.method private L()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lb3/m3;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_0
    return v0
.end method

.method private N(JI)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lb3/n;->M(IJIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private O(II)V
    .locals 6

    .line 1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v4, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lb3/n;->M(IJIZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lb3/g4$d;->i:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final H()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lb3/g4$d;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public final I()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lb3/g4$d;->f()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :goto_0
    return-wide v0
.end method

.method public final J()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0}, Lb3/n;->L()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p0}, Lb3/m3;->G()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lb3/g4;->i(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public final K()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0}, Lb3/n;->L()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p0}, Lb3/m3;->G()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lb3/g4;->p(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public abstract M(IJIZ)V
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {p0, v0, v1}, Lb3/n;->O(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb3/n;->K()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final o(J)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lb3/n;->N(JI)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final t()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lb3/m3;->F()Lb3/g4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lb3/m3;->z()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lb3/n;->a:Lb3/g4$d;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lb3/g4$d;->h:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final w()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb3/n;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method
