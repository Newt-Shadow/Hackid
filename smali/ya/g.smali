.class public Lya/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "g"


# instance fields
.field private a:Lya/k;

.field private b:Lya/j;

.field private c:Lya/h;

.field private d:Landroid/os/Handler;

.field private e:Lya/m;

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lya/i;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lya/g;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lya/g;->g:Z

    .line 9
    .line 10
    new-instance v0, Lya/i;

    .line 11
    .line 12
    invoke-direct {v0}, Lya/i;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lya/g;->i:Lya/i;

    .line 16
    .line 17
    new-instance v0, Lya/g$a;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lya/g$a;-><init>(Lya/g;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lya/g;->j:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v0, Lya/g$b;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lya/g$b;-><init>(Lya/g;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lya/g;->k:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance v0, Lya/g$c;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lya/g$c;-><init>(Lya/g;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lya/g;->l:Ljava/lang/Runnable;

    .line 37
    .line 38
    new-instance v0, Lya/g$d;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lya/g$d;-><init>(Lya/g;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lya/g;->m:Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-static {}, Lxa/r;->a()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lya/k;->d()Lya/k;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lya/g;->a:Lya/k;

    .line 53
    .line 54
    new-instance v0, Lya/h;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lya/h;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lya/g;->c:Lya/h;

    .line 60
    .line 61
    iget-object p1, p0, Lya/g;->i:Lya/i;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lya/h;->o(Lya/i;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/os/Handler;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lya/g;->h:Landroid/os/Handler;

    .line 72
    .line 73
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lya/g;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "CameraInstance is not open"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static synthetic a(Lya/g;Lya/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lya/g;->q(Lya/p;)V

    return-void
.end method

.method public static synthetic b(Lya/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lya/g;->s(Z)V

    return-void
.end method

.method public static synthetic c(Lya/g;Lya/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lya/g;->r(Lya/p;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lya/g;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Lya/g;)Lya/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lya/g;->c:Lya/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lya/g;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lya/g;->t(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lya/g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lya/g;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lya/g;)Lxa/p;
    .locals 0

    .line 1
    invoke-direct {p0}, Lya/g;->o()Lxa/p;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lya/g;)Lya/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lya/g;->b:Lya/j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lya/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lya/g;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lya/g;)Lya/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lya/g;->a:Lya/k;

    .line 2
    .line 3
    return-object p0
.end method

.method private o()Lxa/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lya/g;->c:Lya/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lya/h;->h()Lxa/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private synthetic q(Lya/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lya/g;->c:Lya/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lya/h;->m(Lya/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic r(Lya/p;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lya/g;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lya/g;->n:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Camera is closed, not requesting preview"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 14
    .line 15
    new-instance v1, Lya/f;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lya/f;-><init>(Lya/g;Lya/p;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lya/k;->c(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lya/g;->c:Lya/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lya/h;->t(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private t(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/g;->d:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lh9/k;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lya/g;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 9
    .line 10
    new-instance v1, Lya/d;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lya/d;-><init>(Lya/g;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lya/k;->c(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lya/g;->C()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 8
    .line 9
    iget-object v1, p0, Lya/g;->l:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lya/k;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lya/g;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 9
    .line 10
    iget-object v1, p0, Lya/g;->m:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lya/k;->c(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lya/g;->g:Z

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lya/g;->f:Z

    .line 21
    .line 22
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lya/g;->C()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 8
    .line 9
    iget-object v1, p0, Lya/g;->k:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lya/k;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n()Lya/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lya/g;->e:Lya/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lya/g;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()V
    .locals 2

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lya/g;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lya/g;->g:Z

    .line 9
    .line 10
    iget-object v0, p0, Lya/g;->a:Lya/k;

    .line 11
    .line 12
    iget-object v1, p0, Lya/g;->j:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lya/k;->e(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public v(Lya/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/g;->h:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lya/e;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lya/e;-><init>(Lya/g;Lya/p;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public w(Lya/i;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lya/g;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lya/g;->i:Lya/i;

    .line 6
    .line 7
    iget-object v0, p0, Lya/g;->c:Lya/h;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lya/h;->o(Lya/i;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public x(Lya/m;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lya/g;->e:Lya/m;

    .line 2
    .line 3
    iget-object v0, p0, Lya/g;->c:Lya/h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lya/h;->q(Lya/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lya/g;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public z(Lya/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lya/g;->b:Lya/j;

    .line 2
    .line 3
    return-void
.end method
