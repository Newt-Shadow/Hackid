.class public final Lme/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/e$a;
    }
.end annotation


# static fields
.field public static final m:Lme/e$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Ljava/util/HashMap;

.field private final d:I

.field private final e:Lio/flutter/plugin/common/MethodChannel;

.field private final f:I

.field private final g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lme/a;

.field private l:Lme/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lme/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/e;->m:Lme/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;ILjava/util/HashMap;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "messenger"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "params"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lme/e;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput p3, p0, Lme/e;->b:I

    .line 22
    .line 23
    iput-object p4, p0, Lme/e;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    const p1, 0x1e9aed64

    .line 26
    .line 27
    .line 28
    add-int/2addr p1, p3

    .line 29
    iput p1, p0, Lme/e;->d:I

    .line 30
    .line 31
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 32
    .line 33
    new-instance p4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "net.touchcapture.qr.flutterqr/qrview_"

    .line 39
    .line 40
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lme/e;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    iput p2, p0, Lme/e;->g:I

    .line 57
    .line 58
    sget-object p2, Lme/h;->a:Lme/h;

    .line 59
    .line 60
    invoke-virtual {p2}, Lme/h;->b()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_0

    .line 65
    .line 66
    invoke-interface {p3, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lme/h;->a()Landroid/app/Activity;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    new-instance p2, Lme/c;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lme/c;-><init>(Lme/e;)V

    .line 81
    .line 82
    .line 83
    new-instance p3, Lme/d;

    .line 84
    .line 85
    invoke-direct {p3, p0}, Lme/d;-><init>(Lme/e;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2, p3}, Lme/g;->a(Landroid/app/Activity;Lid/a;Lid/a;)Lme/i;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 p1, 0x0

    .line 94
    :goto_0
    iput-object p1, p0, Lme/e;->l:Lme/i;

    .line 95
    .line 96
    return-void
.end method

.method private final A(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lme/e;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lme/e;->i:Z

    .line 16
    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/a;->setTorch(Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lme/e;->i:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput-boolean v0, p0, Lme/e;->i:Z

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "This device doesn\'t support flash"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v2, "404"

    .line 40
    .line 41
    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public static synthetic a(Lme/e;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lme/e;->d(Lme/e;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lme/e;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lme/e;->c(Lme/e;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lme/e;)Lxc/t;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/e;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lme/e;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lme/e;->k:Lme/a;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final d(Lme/e;)Lxc/t;
    .locals 1

    .line 1
    invoke-direct {p0}, Lme/e;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lme/e;->h:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lme/e;->h()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lme/e;->j:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lme/e;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lme/e;->k:Lme/a;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a;->y()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 33
    .line 34
    return-object p0
.end method

.method public static final synthetic e(Lme/e;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/e;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "No barcode view found"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "404"

    .line 5
    .line 6
    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final g(DDDLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lme/e;->x(DDD)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-interface {p7, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lme/e;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lme/e;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 8
    .line 9
    const-string v1, "onPermissionSet"

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v0, p0, Lme/e;->h:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lme/h;->a:Lme/h;

    .line 22
    .line 23
    invoke-virtual {v0}, Lme/h;->a()Landroid/app/Activity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v1, "android.permission.CAMERA"

    .line 30
    .line 31
    filled-new-array {v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v2, p0, Lme/e;->d:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private final i(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lme/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    float-to-double v0, v0

    .line 14
    mul-double/2addr p1, v0

    .line 15
    double-to-int p1, p1

    .line 16
    return p1
.end method

.method private final j(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->getCameraSettings()Lya/i;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lya/i;->b()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, p0, Lme/e;->g:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    iget v2, p0, Lme/e;->f:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lya/i;->i(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1, v3}, Lya/i;->i(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->y()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lya/i;->b()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final k(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    invoke-static {p1, v2}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {}, Ld9/a;->values()[Ld9/a;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    aget-object v2, v3, v2

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move-object v1, v0

    .line 50
    :cond_1
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    const-string v1, ""

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_2
    move-object p1, v1

    .line 72
    :goto_3
    return-object p1
.end method

.method private final l(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->getCameraSettings()Lya/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lya/i;->b()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final m(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lme/e;->i:Z

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lme/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CAMERA"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final o(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-array v0, v0, [Lxc/k;

    .line 4
    .line 5
    const-string v2, "hasFrontCamera"

    .line 6
    .line 7
    invoke-direct {p0}, Lme/e;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v0, v3

    .line 21
    .line 22
    const-string v2, "hasBackCamera"

    .line 23
    .line 24
    invoke-direct {p0}, Lme/e;->p()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    aput-object v2, v0, v3

    .line 38
    .line 39
    const-string v2, "hasFlash"

    .line 40
    .line 41
    invoke-direct {p0}, Lme/e;->q()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x2

    .line 54
    aput-object v2, v0, v3

    .line 55
    .line 56
    const-string v2, "activeCamera"

    .line 57
    .line 58
    iget-object v3, p0, Lme/e;->k:Lme/a;

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/journeyapps/barcodescanner/a;->getCameraSettings()Lya/i;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    invoke-virtual {v3}, Lya/i;->b()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object v3, v1

    .line 78
    :goto_0
    invoke-static {v2, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x3

    .line 83
    aput-object v2, v0, v3

    .line 84
    .line 85
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, ""

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method private final p()Z
    .locals 1

    .line 1
    const-string v0, "android.hardware.camera"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lme/e;->s(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final q()Z
    .locals 1

    .line 1
    const-string v0, "android.hardware.camera.flash"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lme/e;->s(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final r()Z
    .locals 1

    .line 1
    const-string v0, "android.hardware.camera.front"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lme/e;->s(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final s(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private final t()Lme/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lme/a;

    .line 6
    .line 7
    sget-object v1, Lme/h;->a:Lme/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Lme/h;->a()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lme/a;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lme/e;->k:Lme/a;

    .line 17
    .line 18
    new-instance v1, Lxa/j;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, v3, v3, v3, v2}, Lxa/j;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lxa/g;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lme/e;->c:Ljava/util/HashMap;

    .line 29
    .line 30
    const-string v2, "cameraFacing"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v1, v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->getCameraSettings()Lya/i;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget v2, p0, Lme/e;->g:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lya/i;->i(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-boolean v1, p0, Lme/e;->j:Z

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->y()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-object v0
.end method

.method private final u(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->t()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lme/e;->j:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final v(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lme/e;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->t()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lme/e;->j:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->y()V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->getCameraSettings()Lya/i;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lya/i;->j(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/a;->y()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final x(DDD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lme/e;->i(D)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p3, p4}, Lme/e;->i(D)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-direct {p0, p5, p6}, Lme/e;->i(D)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lme/a;->O(III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final y(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lme/e;->h()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lme/e;->k(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lme/e;->k:Lme/a;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    new-instance v2, Lxa/j;

    .line 17
    .line 18
    invoke-direct {v2, v1, v1, v1, v0}, Lxa/j;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lxa/g;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lme/e;->k:Lme/a;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance v2, Lxa/j;

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-direct {v2, v3, v1, v1, v0}, Lxa/j;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lxa/g;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lme/e;->k:Lme/a;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    new-instance v0, Lme/e$b;

    .line 45
    .line 46
    invoke-direct {v0, p2, p0}, Lme/e$b;-><init>(Ljava/util/List;Lme/e;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->I(Lxa/a;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->N()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/e;->l:Lme/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lme/i;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lme/h;->a:Lme/h;

    .line 9
    .line 10
    invoke-virtual {v0}, Lme/h;->b()Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lme/e;->k:Lme/a;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->u()V

    .line 24
    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lme/e;->k:Lme/a;

    .line 28
    .line 29
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lme/e;->t()Lme/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 10

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_12

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sparse-switch v1, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :sswitch_0
    const-string p1, "pauseCamera"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    invoke-direct {p0, p2}, Lme/e;->u(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :sswitch_1
    const-string p1, "getCameraInfo"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, p2}, Lme/e;->l(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :sswitch_2
    const-string v1, "invertScan"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_2
    const-string p2, "isInvertScan"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-direct {p0, p1}, Lme/e;->w(Z)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :sswitch_3
    const-string p1, "stopScan"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lme/e;->z()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :sswitch_4
    const-string p1, "requestPermissions"

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_5
    invoke-direct {p0}, Lme/e;->h()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :sswitch_5
    const-string p1, "resumeCamera"

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_6
    invoke-direct {p0, p2}, Lme/e;->v(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :sswitch_6
    const-string p1, "flipCamera"

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_7
    invoke-direct {p0, p2}, Lme/e;->j(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :sswitch_7
    const-string p1, "toggleFlash"

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_8

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_8
    invoke-direct {p0, p2}, Lme/e;->A(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :sswitch_8
    const-string p1, "getFlashInfo"

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_9

    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_9
    invoke-direct {p0, p2}, Lme/e;->m(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :sswitch_9
    const-string v1, "changeScanArea"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_a

    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :cond_a
    const-string v0, "scanAreaWidth"

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "Required value was null."

    .line 192
    .line 193
    if-eqz v0, :cond_d

    .line 194
    .line 195
    check-cast v0, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    const-string v0, "scanAreaHeight"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    check-cast v0, Ljava/lang/Number;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    const-string v0, "cutOutBottomOffset"

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    check-cast p1, Ljava/lang/Number;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 226
    .line 227
    .line 228
    move-result-wide v7

    .line 229
    move-object v2, p0

    .line 230
    move-object v9, p2

    .line 231
    invoke-direct/range {v2 .. v9}, Lme/e;->g(DDDLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :sswitch_a
    const-string p1, "stopCamera"

    .line 266
    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_e

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_e
    invoke-direct {p0, p2}, Lme/e;->u(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :sswitch_b
    const-string p1, "getSystemFeatures"

    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_f

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_f
    invoke-direct {p0, p2}, Lme/e;->o(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :sswitch_c
    const-string v1, "startScan"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_10

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_10
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 301
    .line 302
    instance-of v0, p1, Ljava/util/List;

    .line 303
    .line 304
    if-eqz v0, :cond_11

    .line 305
    .line 306
    check-cast p1, Ljava/util/List;

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_11
    const/4 p1, 0x0

    .line 310
    :goto_1
    invoke-direct {p0, p1, p2}, Lme/e;->y(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_12
    :goto_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 315
    .line 316
    .line 317
    :goto_3
    return-void

    .line 318
    nop

    .line 319
    :sswitch_data_0
    .sparse-switch
        -0x7eeb0201 -> :sswitch_c
        -0x7dc6177e -> :sswitch_b
        -0x6cc4d239 -> :sswitch_a
        -0x4621b386 -> :sswitch_9
        -0x44f93df8 -> :sswitch_8
        -0x27ddc704 -> :sswitch_7
        0x1a15e9f2 -> :sswitch_6
        0x3d2ee1b2 -> :sswitch_5
        0x637dca75 -> :sswitch_4
        0x6635719f -> :sswitch_3
        0x71397f73 -> :sswitch_2
        0x764d3969 -> :sswitch_1
        0x780404bb -> :sswitch_0
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lme/e;->d:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iput-boolean v0, p0, Lme/e;->h:Z

    .line 18
    .line 19
    invoke-static {p3}, Lyc/g;->w([I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/e;->e:Lio/flutter/plugin/common/MethodChannel;

    .line 34
    .line 35
    const-string p2, "onPermissionSet"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return v0
.end method
