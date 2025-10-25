.class public Landroidx/webkit/internal/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Landroidx/webkit/internal/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addDocumentStartJavaScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/InvocationHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/webkit/internal/x0;->a(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/x0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;Lo1/s$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 2
    .line 3
    new-instance v1, Landroidx/webkit/internal/f1;

    .line 4
    .line 5
    invoke-direct {v1, p3}, Landroidx/webkit/internal/f1;-><init>(Lo1/s$b;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lkf/a;->c(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c()[Lo1/n;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->createWebMessageChannel()[Ljava/lang/reflect/InvocationHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    new-array v1, v1, [Lo1/n;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, v0

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Landroidx/webkit/internal/h1;

    .line 15
    .line 16
    aget-object v4, v0, v2

    .line 17
    .line 18
    invoke-direct {v3, v4}, Landroidx/webkit/internal/h1;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    .line 19
    .line 20
    .line 21
    aput-object v3, v1, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v1
.end method

.method public d(Lo1/m;Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 2
    .line 3
    new-instance v1, Landroidx/webkit/internal/d1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/webkit/internal/d1;-><init>(Lo1/m;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lkf/a;->c(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->postMessageToMainFrame(Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e(Ljava/util/concurrent/Executor;Lo1/v;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/webkit/internal/q1;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/webkit/internal/q1;-><init>(Ljava/util/concurrent/Executor;Lo1/v;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkf/a;->c(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p2, p0, Landroidx/webkit/internal/n1;->a:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setWebViewRendererClient(Ljava/lang/reflect/InvocationHandler;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
