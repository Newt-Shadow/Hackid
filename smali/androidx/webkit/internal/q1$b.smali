.class Landroidx/webkit/internal/q1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/q1;->onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo1/v;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lo1/u;

.field final synthetic d:Landroidx/webkit/internal/q1;


# direct methods
.method constructor <init>(Landroidx/webkit/internal/q1;Lo1/v;Landroid/webkit/WebView;Lo1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/internal/q1$b;->d:Landroidx/webkit/internal/q1;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/webkit/internal/q1$b;->a:Lo1/v;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/webkit/internal/q1$b;->b:Landroid/webkit/WebView;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/webkit/internal/q1$b;->c:Lo1/u;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/q1$b;->a:Lo1/v;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/internal/q1$b;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/internal/q1$b;->c:Lo1/u;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lo1/v;->onRenderProcessResponsive(Landroid/webkit/WebView;Lo1/u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
