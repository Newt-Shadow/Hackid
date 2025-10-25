.class public Landroidx/webkit/internal/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewRendererClientBoundaryInterface;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lo1/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/webkit/internal/q1;->c:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lo1/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/q1;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/webkit/internal/q1;->b:Lo1/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/webkit/internal/q1;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroidx/webkit/internal/t1;->c(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/t1;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/webkit/internal/q1;->b:Lo1/v;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/webkit/internal/q1;->a:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lo1/v;->onRenderProcessResponsive(Landroid/webkit/WebView;Lo1/u;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Landroidx/webkit/internal/q1$b;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/webkit/internal/q1$b;-><init>(Landroidx/webkit/internal/q1;Lo1/v;Landroid/webkit/WebView;Lo1/u;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onRendererUnresponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroidx/webkit/internal/t1;->c(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/t1;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/webkit/internal/q1;->b:Lo1/v;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/webkit/internal/q1;->a:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lo1/v;->onRenderProcessUnresponsive(Landroid/webkit/WebView;Lo1/u;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Landroidx/webkit/internal/q1$a;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/webkit/internal/q1$a;-><init>(Landroidx/webkit/internal/q1;Lo1/v;Landroid/webkit/WebView;Lo1/u;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
