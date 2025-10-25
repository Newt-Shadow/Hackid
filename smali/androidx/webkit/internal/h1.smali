.class public Landroidx/webkit/internal/h1;
.super Lo1/n;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebMessagePort;

.field private b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;


# direct methods
.method public constructor <init>(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo1/n;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/internal/h1;->a:Landroid/webkit/WebMessagePort;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lo1/n;-><init>()V

    .line 4
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    invoke-static {v0, p1}, Lkf/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    iput-object p1, p0, Landroidx/webkit/internal/h1;->b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    return-void
.end method

.method public static f(Lo1/m;)Landroid/webkit/WebMessage;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/webkit/internal/b;->b(Lo1/m;)Landroid/webkit/WebMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g([Lo1/n;)[Landroid/webkit/WebMessagePort;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v1, v0, [Landroid/webkit/WebMessagePort;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lo1/n;->b()Landroid/webkit/WebMessagePort;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-object v1
.end method

.method public static h(Landroid/webkit/WebMessage;)Lo1/m;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/webkit/internal/b;->d(Landroid/webkit/WebMessage;)Lo1/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private i()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/h1;->b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/webkit/internal/m1;->c()Landroidx/webkit/internal/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/webkit/internal/h1;->a:Landroid/webkit/WebMessagePort;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/v1;->h(Landroid/webkit/WebMessagePort;)Ljava/lang/reflect/InvocationHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkf/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/webkit/internal/h1;->b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/h1;->b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 26
    .line 27
    return-object v0
.end method

.method private j()Landroid/webkit/WebMessagePort;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/h1;->a:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/webkit/internal/m1;->c()Landroidx/webkit/internal/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/webkit/internal/h1;->b:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/v1;->g(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/WebMessagePort;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/webkit/internal/h1;->a:Landroid/webkit/WebMessagePort;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/h1;->a:Landroid/webkit/WebMessagePort;

    .line 22
    .line 23
    return-object v0
.end method

.method public static k([Landroid/webkit/WebMessagePort;)[Lo1/n;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v0, v0, [Lo1/n;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    new-instance v2, Landroidx/webkit/internal/h1;

    .line 13
    .line 14
    aget-object v3, p0, v1

    .line 15
    .line 16
    invoke-direct {v2, v3}, Landroidx/webkit/internal/h1;-><init>(Landroid/webkit/WebMessagePort;)V

    .line 17
    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->B:Landroidx/webkit/internal/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$b;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->j()Landroid/webkit/WebMessagePort;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/webkit/internal/b;->a(Landroid/webkit/WebMessagePort;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->i()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->close()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    throw v0
.end method

.method public b()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->j()Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->i()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Lo1/m;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->A:Landroidx/webkit/internal/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$b;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lo1/m;->e()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->j()Landroid/webkit/WebMessagePort;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1}, Landroidx/webkit/internal/h1;->f(Lo1/m;)Landroid/webkit/WebMessage;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Landroidx/webkit/internal/b;->h(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lo1/m;->e()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Landroidx/webkit/internal/d1;->a(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->i()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Landroidx/webkit/internal/d1;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Landroidx/webkit/internal/d1;-><init>(Lo1/m;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lkf/a;->c(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->postMessage(Ljava/lang/reflect/InvocationHandler;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    throw p1
.end method

.method public e(Lo1/n$a;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->D:Landroidx/webkit/internal/a$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->i()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroidx/webkit/internal/e1;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroidx/webkit/internal/e1;-><init>(Lo1/n$a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkf/a;->c(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->setWebMessageCallback(Ljava/lang/reflect/InvocationHandler;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a$b;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/webkit/internal/h1;->j()Landroid/webkit/WebMessagePort;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0, p1}, Landroidx/webkit/internal/b;->l(Landroid/webkit/WebMessagePort;Lo1/n$a;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    throw p1
.end method
