.class public Landroidx/webkit/internal/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/g;


# instance fields
.field private final a:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;


# direct methods
.method private constructor <init>(Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/x0;->a:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/x0;
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lkf/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 8
    .line 9
    new-instance v0, Landroidx/webkit/internal/x0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/webkit/internal/x0;-><init>(Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/x0;->a:Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/ScriptHandlerBoundaryInterface;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
