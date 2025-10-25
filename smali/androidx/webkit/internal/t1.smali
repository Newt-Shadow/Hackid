.class public Landroidx/webkit/internal/t1;
.super Lo1/u;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/WeakHashMap;


# instance fields
.field private a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/webkit/internal/t1;->c:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lo1/u;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/webkit/internal/t1;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo1/u;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/webkit/internal/t1;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    return-void
.end method

.method public static b(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/t1;
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/t1;->c:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/webkit/internal/t1;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v1, Landroidx/webkit/internal/t1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroidx/webkit/internal/t1;-><init>(Landroid/webkit/WebViewRenderProcess;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public static c(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/t1;
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lkf/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 8
    .line 9
    new-instance v0, Landroidx/webkit/internal/t1$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/webkit/internal/t1$a;-><init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/webkit/internal/t1;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->K:Landroidx/webkit/internal/a$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$h;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/webkit/internal/t1;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/webkit/internal/s1;->a(Ljava/lang/Object;)Landroid/webkit/WebViewRenderProcess;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/webkit/internal/k0;->g(Landroid/webkit/WebViewRenderProcess;)Z

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

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/webkit/internal/t1;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 38
    .line 39
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;->terminate()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0

    .line 44
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    throw v0
.end method
