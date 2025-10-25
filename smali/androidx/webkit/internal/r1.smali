.class public Landroidx/webkit/internal/r1;
.super Landroid/webkit/WebViewRenderProcessClient;
.source "SourceFile"


# instance fields
.field private a:Lo1/v;


# direct methods
.method public constructor <init>(Lo1/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/r1;->a:Lo1/v;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/r1;->a:Lo1/v;

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/webkit/internal/t1;->b(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/t1;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lo1/v;->onRenderProcessResponsive(Landroid/webkit/WebView;Lo1/u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/r1;->a:Lo1/v;

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/webkit/internal/t1;->b(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/t1;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lo1/v;->onRenderProcessUnresponsive(Landroid/webkit/WebView;Lo1/u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
