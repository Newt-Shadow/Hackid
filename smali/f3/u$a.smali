.class public Lf3/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/u$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ld4/t$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lf3/u$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lf3/u$a;->a:I

    .line 5
    iput-object p3, p0, Lf3/u$a;->b:Ld4/t$b;

    return-void
.end method

.method public static synthetic a(Lf3/u$a;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf3/u$a;->s(Lf3/u;)V

    return-void
.end method

.method public static synthetic b(Lf3/u$a;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf3/u$a;->o(Lf3/u;)V

    return-void
.end method

.method public static synthetic c(Lf3/u$a;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf3/u$a;->n(Lf3/u;)V

    return-void
.end method

.method public static synthetic d(Lf3/u$a;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf3/u$a;->p(Lf3/u;)V

    return-void
.end method

.method public static synthetic e(Lf3/u$a;Lf3/u;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf3/u$a;->r(Lf3/u;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lf3/u$a;Lf3/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf3/u$a;->q(Lf3/u;I)V

    return-void
.end method

.method private synthetic n(Lf3/u;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lf3/u;->x(ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Lf3/u;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lf3/u;->F(ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Lf3/u;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lf3/u;->A(ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic q(Lf3/u;I)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lf3/u;->G(ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lf3/u$a;->a:I

    .line 9
    .line 10
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1, p2}, Lf3/u;->z(ILd4/t$b;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic r(Lf3/u;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Lf3/u;->B(ILd4/t$b;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic s(Lf3/u;)V
    .locals 2

    .line 1
    iget v0, p0, Lf3/u$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->b:Ld4/t$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lf3/u;->D(ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lf3/u;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Lf3/u$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lf3/u$a$a;-><init>(Landroid/os/Handler;Lf3/u;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/s;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lf3/s;-><init>(Lf3/u$a;Lf3/u;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/r;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lf3/r;-><init>(Lf3/u$a;Lf3/u;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/t;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lf3/t;-><init>(Lf3/u$a;Lf3/u;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/q;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lf3/q;-><init>(Lf3/u$a;Lf3/u;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/p;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Lf3/p;-><init>(Lf3/u$a;Lf3/u;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    iget-object v1, v1, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf3/o;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2}, Lf3/o;-><init>(Lf3/u$a;Lf3/u;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Ly4/q0;->J0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public t(Lf3/u;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lf3/u$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lf3/u$a$a;->b:Lf3/u;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public u(ILd4/t$b;)Lf3/u$a;
    .locals 2

    .line 1
    new-instance v0, Lf3/u$a;

    .line 2
    .line 3
    iget-object v1, p0, Lf3/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lf3/u$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILd4/t$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
