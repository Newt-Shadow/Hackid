.class public final Lcb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# instance fields
.field private final a:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, "methodResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcb/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcb/j;->b:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcb/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcb/j;->e(Lcb/j;)V

    return-void
.end method

.method public static synthetic b(Lcb/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcb/j;->d(Lcb/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcb/j;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcb/j;->f(Lcb/j;Ljava/lang/Object;)V

    return-void
.end method

.method private static final d(Lcb/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final e(Lcb/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final f(Lcb/j;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/j;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcb/j;->b:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcb/g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Lcb/g;-><init>(Lcb/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public notImplemented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/j;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcb/i;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcb/i;-><init>(Lcb/j;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/j;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcb/h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcb/h;-><init>(Lcb/j;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
