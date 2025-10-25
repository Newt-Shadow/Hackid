.class Lva/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lva/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lva/e$a;->b:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lva/e$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lva/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lva/e$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lva/e$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lva/e$a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lva/e$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lva/e$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e$a;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lva/c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lva/c;-><init>(Lva/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public notImplemented()V
    .locals 3

    .line 1
    iget-object v0, p0, Lva/e$a;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lva/e$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lva/b;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lva/b;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e$a;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lva/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lva/d;-><init>(Lva/e$a;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
