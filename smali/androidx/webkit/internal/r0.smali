.class public Landroidx/webkit/internal/r0;
.super Landroid/webkit/ServiceWorkerClient;
.source "SourceFile"


# instance fields
.field private final a:Lo1/h;


# direct methods
.method public constructor <init>(Lo1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/ServiceWorkerClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/r0;->a:Lo1/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/r0;->a:Lo1/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo1/h;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
