.class public final Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field static final synthetic h:[Lpd/k;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Lio/flutter/plugin/common/EventChannel;

.field private c:La2/b;

.field private d:Landroid/app/Activity;

.field private final e:Lld/d;

.field private final f:Lld/d;

.field private g:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lpd/k;

    .line 3
    .line 4
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 5
    .line 6
    const-string v2, "systemBrightness"

    .line 7
    .line 8
    const-string v3, "getSystemBrightness()F"

    .line 9
    .line 10
    const-class v4, Lz1/b;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    aput-object v1, v0, v5

    .line 21
    .line 22
    new-instance v1, Lkotlin/jvm/internal/p;

    .line 23
    .line 24
    const-string v2, "maximumBrightness"

    .line 25
    .line 26
    const-string v3, "getMaximumBrightness()F"

    .line 27
    .line 28
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/o;)Lpd/g;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    sput-object v0, Lz1/b;->h:[Lpd/k;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lld/a;->a:Lld/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lld/a;->a()Lld/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lz1/b;->e:Lld/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lld/a;->a()Lld/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lz1/b;->f:Lld/d;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/EventChannel$EventSink;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lz1/b;->l(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/EventChannel$EventSink;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private final b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->f:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lz1/b;->h:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private final c(Landroid/content/Context;)F
    .locals 7

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    :try_start_0
    const-string v1, "power"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/os/PowerManager;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getDeclaredFields(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "BRIGHTNESS_ON"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast p1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    return p1

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return v0

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/ClassNotFoundException;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    return v0
.end method

.method private final d()F
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->e:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lz1/b;->h:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p0, v1}, Lld/d;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private final e(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "screen_brightness"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    invoke-direct {p0}, Lz1/b;->b()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-float/2addr p1, v0

    .line 17
    return p1
.end method

.method private final f(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->c:La2/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    float-to-double v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, La2/b;->b(D)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private final g(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "-10"

    .line 7
    .line 8
    const-string v2, "Unexpected error on activity binding"

    .line 9
    .line 10
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "getAttributes(...)"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/high16 v4, -0x40800000    # -1.0f

    .line 42
    .line 43
    cmpg-float v3, v3, v4

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_0
    if-nez v3, :cond_2

    .line 51
    .line 52
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lz1/b;->e(Landroid/content/Context;)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    const-string v0, "-11"

    .line 73
    .line 74
    const-string v2, "Could not found system setting screen brightness value"

    .line 75
    .line 76
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final h(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz1/b;->d()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final i(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/b;->g:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final j(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "-10"

    .line 7
    .line 8
    const-string v2, "Unexpected error on activity binding"

    .line 9
    .line 10
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lz1/b;->o(F)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "-1"

    .line 23
    .line 24
    const-string v2, "Unable to change screen brightness"

    .line 25
    .line 26
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iput-object v1, p0, Lz1/b;->g:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-direct {p0}, Lz1/b;->d()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-direct {p0, v0}, Lz1/b;->f(F)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final k(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "-10"

    .line 7
    .line 8
    const-string v0, "Unexpected error on activity binding"

    .line 9
    .line 10
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "brightness"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v0, p1, Ljava/lang/Double;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/Double;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object p1, v1

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    double-to-float p1, v2

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object p1, v1

    .line 41
    :goto_1
    if-nez p1, :cond_3

    .line 42
    .line 43
    const-string p1, "-2"

    .line 44
    .line 45
    const-string v0, "Unexpected error on null brightness"

    .line 46
    .line 47
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-direct {p0, v0}, Lz1/b;->o(F)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const-string p1, "-1"

    .line 62
    .line 63
    const-string v0, "Unable to change screen brightness"

    .line 64
    .line 65
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    iput-object p1, p0, Lz1/b;->g:Ljava/lang/Float;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-direct {p0, p1}, Lz1/b;->f(F)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private static final l(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/EventChannel$EventSink;)Lxc/t;
    .locals 1

    .line 1
    const-string v0, "eventSink"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getActivity(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lz1/b;->e(Landroid/content/Context;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, p1}, Lz1/b;->n(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lz1/b;->g:Ljava/lang/Float;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lz1/b;->d()F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 38
    .line 39
    return-object p0
.end method

.method private final m(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->f:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lz1/b;->h:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final n(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/b;->e:Lld/d;

    .line 2
    .line 3
    sget-object v1, Lz1/b;->h:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p0, v1, p1}, Lld/d;->b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final o(F)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getAttributes(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 20
    .line 21
    iget-object p1, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 11
    .line 12
    new-instance v0, La2/b;

    .line 13
    .line 14
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getActivity(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lz1/a;

    .line 24
    .line 25
    invoke-direct {v2, p0, p1}, Lz1/a;-><init>(Lz1/b;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {v0, v1, p1, v2}, La2/b;-><init>(Landroid/content/Context;Lid/l;Lid/l;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lz1/b;->c:La2/b;

    .line 33
    .line 34
    iget-object v0, p0, Lz1/b;->b:Lio/flutter/plugin/common/EventChannel;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "currentBrightnessChangeEventChannel"

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, v0

    .line 45
    :goto_0
    iget-object v0, p0, Lz1/b;->c:La2/b;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    .line 1
    const-string v0, "getApplicationContext(...)"

    .line 2
    .line 3
    const-string v1, "flutterPluginBinding"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "github.com/aaassseee/screen_brightness"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lz1/b;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "github.com/aaassseee/screen_brightness/change"

    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lz1/b;->b:Lio/flutter/plugin/common/EventChannel;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v1}, Lz1/b;->c(Landroid/content/Context;)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-direct {p0, v1}, Lz1/b;->m(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lz1/b;->e(Landroid/content/Context;)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lz1/b;->n(F)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object v1, p0, Lz1/b;->b:Lio/flutter/plugin/common/EventChannel;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "currentBrightnessChangeEventChannel"

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_0
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lz1/b;->c:La2/b;

    .line 18
    .line 19
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lz1/b;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "methodChannel"

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v0

    .line 17
    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lz1/b;->b:Lio/flutter/plugin/common/EventChannel;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const-string p1, "currentBrightnessChangeEventChannel"

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v0

    .line 30
    :cond_1
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lz1/b;->c:La2/b;

    .line 34
    .line 35
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

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
    if-eqz v0, :cond_5

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
    goto :goto_0

    .line 23
    :sswitch_0
    const-string p1, "getSystemScreenBrightness"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p2}, Lz1/b;->h(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :sswitch_1
    const-string p1, "getScreenBrightness"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, p2}, Lz1/b;->g(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v1, "setScreenBrightness"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0, p1, p2}, Lz1/b;->k(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string p1, "resetScreenBrightness"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-direct {p0, p2}, Lz1/b;->j(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :sswitch_4
    const-string p1, "hasChanged"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-direct {p0, p2}, Lz1/b;->i(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x5ad0d946 -> :sswitch_4
        -0x518eeab4 -> :sswitch_3
        -0x5085d1a1 -> :sswitch_2
        0xb7d9953 -> :sswitch_1
        0x22602122 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lz1/b;->d:Landroid/app/Activity;

    .line 11
    .line 12
    return-void
.end method
