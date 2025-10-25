.class public final Ld4/h0;
.super Ld4/a;
.source "SourceFile"

# interfaces
.implements Ld4/g0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/h0$b;
    }
.end annotation


# instance fields
.field private final h:Lb3/f2;

.field private final i:Lb3/f2$h;

.field private final j:Lx4/j$a;

.field private final k:Ld4/b0$a;

.field private final l:Lf3/v;

.field private final m:Lx4/d0;

.field private final n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lx4/m0;


# direct methods
.method private constructor <init>(Lb3/f2;Lx4/j$a;Ld4/b0$a;Lf3/v;Lx4/d0;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ld4/a;-><init>()V

    .line 3
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f2$h;

    iput-object v0, p0, Ld4/h0;->i:Lb3/f2$h;

    .line 4
    iput-object p1, p0, Ld4/h0;->h:Lb3/f2;

    .line 5
    iput-object p2, p0, Ld4/h0;->j:Lx4/j$a;

    .line 6
    iput-object p3, p0, Ld4/h0;->k:Ld4/b0$a;

    .line 7
    iput-object p4, p0, Ld4/h0;->l:Lf3/v;

    .line 8
    iput-object p5, p0, Ld4/h0;->m:Lx4/d0;

    .line 9
    iput p6, p0, Ld4/h0;->n:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Ld4/h0;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Ld4/h0;->p:J

    return-void
.end method

.method synthetic constructor <init>(Lb3/f2;Lx4/j$a;Ld4/b0$a;Lf3/v;Lx4/d0;ILd4/h0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ld4/h0;-><init>(Lb3/f2;Lx4/j$a;Ld4/b0$a;Lf3/v;Lx4/d0;I)V

    return-void
.end method

.method private F()V
    .locals 9

    .line 1
    new-instance v8, Ld4/p0;

    .line 2
    .line 3
    iget-wide v1, p0, Ld4/h0;->p:J

    .line 4
    .line 5
    iget-boolean v3, p0, Ld4/h0;->q:Z

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-boolean v5, p0, Ld4/h0;->r:Z

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, p0, Ld4/h0;->h:Lb3/f2;

    .line 12
    .line 13
    move-object v0, v8

    .line 14
    invoke-direct/range {v0 .. v7}, Ld4/p0;-><init>(JZZZLjava/lang/Object;Lb3/f2;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Ld4/h0;->o:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ld4/h0$a;

    .line 22
    .line 23
    invoke-direct {v0, p0, v8}, Ld4/h0$a;-><init>(Ld4/h0;Lb3/g4;)V

    .line 24
    .line 25
    .line 26
    move-object v8, v0

    .line 27
    :cond_0
    invoke-virtual {p0, v8}, Ld4/a;->D(Lb3/g4;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method protected C(Lx4/m0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld4/h0;->s:Lx4/m0;

    .line 2
    .line 3
    iget-object p1, p0, Ld4/h0;->l:Lf3/v;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Looper;

    .line 14
    .line 15
    invoke-virtual {p0}, Ld4/a;->A()Lc3/t3;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v0, v1}, Lf3/v;->d(Landroid/os/Looper;Lc3/t3;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Ld4/h0;->l:Lf3/v;

    .line 23
    .line 24
    invoke-interface {p1}, Lf3/v;->b()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Ld4/h0;->F()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected E()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/h0;->l:Lf3/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lf3/v;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ld4/t$b;Lx4/b;J)Ld4/r;
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    iget-object v0, v12, Ld4/h0;->j:Lx4/j$a;

    .line 3
    .line 4
    invoke-interface {v0}, Lx4/j$a;->a()Lx4/j;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v0, v12, Ld4/h0;->s:Lx4/m0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v2, v0}, Lx4/j;->d(Lx4/m0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v13, Ld4/g0;

    .line 16
    .line 17
    iget-object v0, v12, Ld4/h0;->i:Lb3/f2$h;

    .line 18
    .line 19
    iget-object v1, v0, Lb3/f2$h;->a:Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v0, v12, Ld4/h0;->k:Ld4/b0$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Ld4/a;->A()Lc3/t3;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Ld4/b0$a;->a(Lc3/t3;)Ld4/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v12, Ld4/h0;->l:Lf3/v;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ld4/a;->u(Ld4/t$b;)Lf3/u$a;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, v12, Ld4/h0;->m:Lx4/d0;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ld4/a;->w(Ld4/t$b;)Ld4/a0$a;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v0, v12, Ld4/h0;->i:Lb3/f2$h;

    .line 44
    .line 45
    iget-object v10, v0, Lb3/f2$h;->e:Ljava/lang/String;

    .line 46
    .line 47
    iget v11, v12, Ld4/h0;->n:I

    .line 48
    .line 49
    move-object v0, v13

    .line 50
    move-object v8, p0

    .line 51
    move-object/from16 v9, p2

    .line 52
    .line 53
    invoke-direct/range {v0 .. v11}, Ld4/g0;-><init>(Landroid/net/Uri;Lx4/j;Ld4/b0;Lf3/v;Lf3/u$a;Lx4/d0;Ld4/a0$a;Ld4/g0$b;Lx4/b;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object v13
.end method

.method public f(JZZ)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Ld4/h0;->p:J

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Ld4/h0;->o:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Ld4/h0;->p:J

    .line 17
    .line 18
    cmp-long v0, v0, p1

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Ld4/h0;->q:Z

    .line 23
    .line 24
    if-ne v0, p3, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Ld4/h0;->r:Z

    .line 27
    .line 28
    if-ne v0, p4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-wide p1, p0, Ld4/h0;->p:J

    .line 32
    .line 33
    iput-boolean p3, p0, Ld4/h0;->q:Z

    .line 34
    .line 35
    iput-boolean p4, p0, Ld4/h0;->r:Z

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Ld4/h0;->o:Z

    .line 39
    .line 40
    invoke-direct {p0}, Ld4/h0;->F()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public g(Ld4/r;)V
    .locals 0

    .line 1
    check-cast p1, Ld4/g0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ld4/g0;->e0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lb3/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/h0;->h:Lb3/f2;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method
