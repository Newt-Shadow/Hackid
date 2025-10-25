.class public Landroidx/webkit/internal/c1;
.super Lo1/l;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/TracingController;

.field private b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lo1/l;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/webkit/internal/l1;->L:Landroidx/webkit/internal/a$g;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/webkit/internal/a$g;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/webkit/internal/c0;->a()Landroid/webkit/TracingController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/webkit/internal/c1;->a:Landroid/webkit/TracingController;

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/webkit/internal/c1;->b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iput-object v2, p0, Landroidx/webkit/internal/c1;->a:Landroid/webkit/TracingController;

    .line 29
    .line 30
    invoke-static {}, Landroidx/webkit/internal/m1;->d()Landroidx/webkit/internal/o1;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroidx/webkit/internal/o1;->getTracingController()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Landroidx/webkit/internal/c1;->b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0
.end method

.method private e()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/c1;->b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/webkit/internal/m1;->d()Landroidx/webkit/internal/o1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroidx/webkit/internal/o1;->getTracingController()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/webkit/internal/c1;->b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/c1;->b:Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 16
    .line 17
    return-object v0
.end method

.method private f()Landroid/webkit/TracingController;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/c1;->a:Landroid/webkit/TracingController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/webkit/internal/c0;->a()Landroid/webkit/TracingController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/webkit/internal/c1;->a:Landroid/webkit/TracingController;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/c1;->a:Landroid/webkit/TracingController;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->L:Landroidx/webkit/internal/a$g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$g;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->f()Landroid/webkit/TracingController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/webkit/internal/c0;->d(Landroid/webkit/TracingController;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->e()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;->isTracing()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    throw v0
.end method

.method public c(Lo1/k;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Landroidx/webkit/internal/l1;->L:Landroidx/webkit/internal/a$g;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/webkit/internal/a$g;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->f()Landroid/webkit/TracingController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Landroidx/webkit/internal/c0;->f(Landroid/webkit/TracingController;Lo1/k;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->e()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lo1/k;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1}, Lo1/k;->a()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lo1/k;->c()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;->start(ILjava/util/Collection;I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "Tracing config must be non null"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public d(Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->L:Landroidx/webkit/internal/a$g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$g;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->f()Landroid/webkit/TracingController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1, p2}, Landroidx/webkit/internal/c0;->g(Landroid/webkit/TracingController;Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/webkit/internal/c1;->e()Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/TracingControllerBoundaryInterface;->stop(Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    throw p1
.end method
