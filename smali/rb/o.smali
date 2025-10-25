.class public final Lrb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb/o$a;
    }
.end annotation


# static fields
.field public static final j:Lrb/o$a;

.field private static final k:Ljava/lang/String;


# instance fields
.field private final a:Lqb/a;

.field private final b:Lqb/b;

.field private c:Lqb/c;

.field private final d:Lob/a;

.field private final e:Lio/flutter/embedding/engine/FlutterEngine;

.field private final f:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field private final g:Lio/flutter/plugin/common/MethodChannel;

.field private h:Ltd/t1;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrb/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrb/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrb/o;->j:Lrb/o$a;

    .line 8
    .line 9
    const-class v0, Lrb/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lrb/o;->k:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqb/a;Lqb/b;Lqb/c;Lob/a;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serviceStatus"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "taskData"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "taskEventAction"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "taskLifecycleListener"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lrb/o;->a:Lqb/a;

    .line 30
    .line 31
    iput-object p3, p0, Lrb/o;->b:Lqb/b;

    .line 32
    .line 33
    iput-object p4, p0, Lrb/o;->c:Lqb/c;

    .line 34
    .line 35
    iput-object p5, p0, Lrb/o;->d:Lob/a;

    .line 36
    .line 37
    new-instance p2, Lio/flutter/embedding/engine/FlutterEngine;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lrb/o;->e:Lio/flutter/embedding/engine/FlutterEngine;

    .line 43
    .line 44
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    invoke-virtual {p4}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    iput-object p4, p0, Lrb/o;->f:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 53
    .line 54
    invoke-virtual {p4}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p4, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p4, p1, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p5, p2}, Lob/a;->c(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 71
    .line 72
    .line 73
    move-result-object p5

    .line 74
    invoke-virtual {p5}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 75
    .line 76
    .line 77
    move-result-object p5

    .line 78
    const-string v0, "getBinaryMessenger(...)"

    .line 79
    .line 80
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 84
    .line 85
    const-string v1, "flutter_foreground_task/background"

    .line 86
    .line 87
    invoke-direct {v0, p5, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lqb/b;->a()Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    if-eqz p3, :cond_1

    .line 100
    .line 101
    invoke-virtual {p4}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    const-string p5, "findAppBundlePath(...)"

    .line 106
    .line 107
    invoke-static {p4, p5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    invoke-static {v0, v1}, Lio/flutter/view/FlutterCallbackInformation;->lookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    new-instance p5, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p5, p1, p4, p3}, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lio/flutter/view/FlutterCallbackInformation;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, p5}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void
.end method

.method private final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrb/o;->h:Ltd/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Ltd/t1$a;->a(Ltd/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lrb/o;->h:Ltd/t1;

    .line 11
    .line 12
    return-void
.end method

.method private static final C(Lrb/o;Lqb/c;)Lxc/t;
    .locals 1

    .line 1
    new-instance v0, Lrb/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lrb/l;-><init>(Lrb/o;Lqb/c;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lrb/o;->s(Lid/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final D(Lrb/o;Lqb/c;)Lxc/t;
    .locals 0

    .line 1
    iput-object p1, p0, Lrb/o;->c:Lqb/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lrb/o;->z()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic a(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->v(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->x(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lrb/o;->q(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->w(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->m(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->n(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lrb/o;->y(Lrb/o;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lrb/o;Lqb/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrb/o;->C(Lrb/o;Lqb/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lrb/o;Lqb/c;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lrb/o;->D(Lrb/o;Lqb/c;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrb/o;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic k(Lrb/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrb/o;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lrb/o;)Lxc/t;
    .locals 4

    .line 1
    invoke-direct {p0}, Lrb/o;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lrb/o;->b:Lqb/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lqb/b;->a()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lrb/o;->d:Lob/a;

    .line 19
    .line 20
    invoke-interface {v0}, Lob/a;->onEngineWillDestroy()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lrb/o;->e:Lio/flutter/embedding/engine/FlutterEngine;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->destroy()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 30
    .line 31
    new-instance v2, Lrb/j;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lrb/j;-><init>(Lrb/o;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "onDestroy"

    .line 37
    .line 38
    invoke-direct {p0, v0, v3, v1, v2}, Lrb/o;->o(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lid/a;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lrb/o;->d:Lob/a;

    .line 42
    .line 43
    invoke-interface {v0}, Lob/a;->d()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lrb/o;->d:Lob/a;

    .line 47
    .line 48
    invoke-interface {v0}, Lob/a;->onEngineWillDestroy()V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lrb/o;->i:Z

    .line 53
    .line 54
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final n(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lrb/o;->e:Lio/flutter/embedding/engine/FlutterEngine;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->destroy()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p0
.end method

.method private final o(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lid/a;)V
    .locals 1

    .line 1
    new-instance v0, Lrb/o$b;

    .line 2
    .line 3
    invoke-direct {v0, p4}, Lrb/o$b;-><init>(Lid/a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final q(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)Lxc/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p0
.end method

.method private final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "onRepeatEvent"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lrb/o;->d:Lob/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lob/a;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final s(Lid/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrb/o;->b:Lqb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqb/b;->a()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final t(Lid/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrb/o;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final u()V
    .locals 1

    .line 1
    new-instance v0, Lrb/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrb/g;-><init>(Lrb/o;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lrb/o;->t(Lid/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final v(Lrb/o;)Lxc/t;
    .locals 1

    .line 1
    new-instance v0, Lrb/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrb/k;-><init>(Lrb/o;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lrb/o;->s(Lid/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final w(Lrb/o;)Lxc/t;
    .locals 5

    .line 1
    iget-object v0, p0, Lrb/o;->a:Lqb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqb/a;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0xcad194d

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const v2, 0x1cb37020

    .line 17
    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const v2, 0x7a3c6098

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "com.pravera.flutter_foreground_task.action.api_update"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v1, "com.pravera.flutter_foreground_task.action.api_restart"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "com.pravera.flutter_foreground_task.action.api_start"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    :cond_3
    :goto_0
    sget-object v0, Lob/c;->b:Lob/c;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_1
    sget-object v0, Lob/c;->a:Lob/c;

    .line 57
    .line 58
    :goto_2
    iget-object v1, p0, Lrb/o;->g:Lio/flutter/plugin/common/MethodChannel;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lrb/m;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lrb/m;-><init>(Lrb/o;)V

    .line 71
    .line 72
    .line 73
    const-string v4, "onStart"

    .line 74
    .line 75
    invoke-direct {p0, v1, v4, v2, v3}, Lrb/o;->o(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Lid/a;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lrb/o;->d:Lob/a;

    .line 79
    .line 80
    invoke-interface {p0, v0}, Lob/a;->a(Lob/c;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 84
    .line 85
    return-object p0
.end method

.method private static final x(Lrb/o;)Lxc/t;
    .locals 1

    .line 1
    new-instance v0, Lrb/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrb/n;-><init>(Lrb/o;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lrb/o;->t(Lid/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final y(Lrb/o;)Lxc/t;
    .locals 0

    .line 1
    invoke-direct {p0}, Lrb/o;->z()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p0
.end method

.method private final z()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lrb/o;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrb/o;->c:Lqb/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lqb/c;->b()Lqb/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lrb/o;->c:Lqb/c;

    .line 11
    .line 12
    invoke-virtual {v1}, Lqb/c;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    sget-object v3, Lqb/d;->c:Lqb/d;

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v3, Lqb/d;->d:Lqb/d;

    .line 22
    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lrb/o;->r()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {}, Ltd/z0;->a()Ltd/i0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    new-instance v6, Lrb/o$c;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {v6, v1, v2, p0, v0}, Lrb/o$c;-><init>(JLrb/o;Lad/e;)V

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x3

    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-static/range {v3 .. v8}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lrb/o;->h:Ltd/t1;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final B(Lqb/c;)V
    .locals 1

    .line 1
    const-string v0, "taskEventAction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrb/f;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lrb/f;-><init>(Lrb/o;Lqb/c;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lrb/o;->t(Lid/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    new-instance v0, Lrb/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrb/i;-><init>(Lrb/o;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lrb/o;->t(Lid/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

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
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "start"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lrb/o;->u()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrb/h;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lrb/h;-><init>(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lrb/o;->t(Lid/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
