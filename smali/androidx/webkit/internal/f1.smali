.class public Landroidx/webkit/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;


# instance fields
.field private a:Lo1/s$b;


# direct methods
.method public constructor <init>(Lo1/s$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/f1;->a:Lo1/s$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .locals 6

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lkf/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 8
    .line 9
    invoke-static {p2}, Landroidx/webkit/internal/d1;->c(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Lo1/m;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {p5}, Landroidx/webkit/internal/t0;->c(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/t0;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget-object v0, p0, Landroidx/webkit/internal/f1;->a:Lo1/s$b;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    move-object v3, p3

    .line 23
    move v4, p4

    .line 24
    invoke-interface/range {v0 .. v5}, Lo1/s$b;->onPostMessage(Landroid/webkit/WebView;Lo1/m;Landroid/net/Uri;ZLo1/b;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
