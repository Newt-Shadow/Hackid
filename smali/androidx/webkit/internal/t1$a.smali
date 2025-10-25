.class Landroidx/webkit/internal/t1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/t1;->c(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;


# direct methods
.method constructor <init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/internal/t1$a;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/webkit/internal/t1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/internal/t1$a;->a:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/webkit/internal/t1;-><init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
