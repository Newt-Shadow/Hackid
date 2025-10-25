.class public abstract Ld4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/HashSet;

.field private final c:Ld4/a0$a;

.field private final d:Lf3/u$a;

.field private e:Landroid/os/Looper;

.field private f:Lb3/g4;

.field private g:Lc3/t3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld4/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 18
    .line 19
    new-instance v0, Ld4/a0$a;

    .line 20
    .line 21
    invoke-direct {v0}, Ld4/a0$a;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 25
    .line 26
    new-instance v0, Lf3/u$a;

    .line 27
    .line 28
    invoke-direct {v0}, Lf3/u$a;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ld4/a;->d:Lf3/u$a;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method protected final A()Lc3/t3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->g:Lc3/t3;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lc3/t3;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method protected abstract C(Lx4/m0;)V
.end method

.method protected final D(Lb3/g4;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld4/a;->f:Lb3/g4;

    .line 2
    .line 3
    iget-object v0, p0, Ld4/a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ld4/t$c;

    .line 20
    .line 21
    invoke-interface {v1, p0, p1}, Ld4/t$c;->a(Ld4/t;Lb3/g4;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method protected abstract E()V
.end method

.method public final a(Landroid/os/Handler;Lf3/u;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ld4/a;->d:Lf3/u$a;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lf3/u$a;->g(Landroid/os/Handler;Lf3/u;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Lf3/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->d:Lf3/u$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf3/u$a;->t(Lf3/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ld4/t$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld4/a;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Ld4/a;->e:Landroid/os/Looper;

    .line 16
    .line 17
    iput-object p1, p0, Ld4/a;->f:Lb3/g4;

    .line 18
    .line 19
    iput-object p1, p0, Ld4/a;->g:Lc3/t3;

    .line 20
    .line 21
    iget-object p1, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ld4/a;->E()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Ld4/a;->p(Ld4/t$c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final e(Ld4/a0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld4/a0$a;->C(Ld4/a0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroid/os/Handler;Ld4/a0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ld4/a0$a;->g(Landroid/os/Handler;Ld4/a0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p(Ld4/t$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Ld4/a;->y()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final q(Ld4/t$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/a;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ld4/a;->z()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final r(Ld4/t$c;Lx4/m0;Lc3/t3;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ld4/a;->e:Landroid/os/Looper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    invoke-static {v1}, Ly4/a;->a(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Ld4/a;->g:Lc3/t3;

    .line 19
    .line 20
    iget-object p3, p0, Ld4/a;->f:Lb3/g4;

    .line 21
    .line 22
    iget-object v1, p0, Ld4/a;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Ld4/a;->e:Landroid/os/Looper;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iput-object v0, p0, Ld4/a;->e:Landroid/os/Looper;

    .line 32
    .line 33
    iget-object p3, p0, Ld4/a;->b:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Ld4/a;->C(Lx4/m0;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ld4/a;->q(Ld4/t$c;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p0, p3}, Ld4/t$c;->a(Ld4/t;Lb3/g4;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method protected final t(ILd4/t$b;)Lf3/u$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->d:Lf3/u$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lf3/u$a;->u(ILd4/t$b;)Lf3/u$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final u(Ld4/t$b;)Lf3/u$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/a;->d:Lf3/u$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lf3/u$a;->u(ILd4/t$b;)Lf3/u$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected final v(ILd4/t$b;J)Ld4/a0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Ld4/a0$a;->F(ILd4/t$b;J)Ld4/a0$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected final w(Ld4/t$b;)Ld4/a0$a;
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Ld4/a0$a;->F(ILd4/t$b;J)Ld4/a0$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method protected final x(Ld4/t$b;J)Ld4/a0$a;
    .locals 2

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/a;->c:Ld4/a0$a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Ld4/a0$a;->F(ILd4/t$b;J)Ld4/a0$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected y()V
    .locals 0

    .line 1
    return-void
.end method

.method protected z()V
    .locals 0

    .line 1
    return-void
.end method
