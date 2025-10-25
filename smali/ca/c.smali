.class public final Lca/c;
.super Lb;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/c$a;
    }
.end annotation


# static fields
.field public static final h:Lca/c$a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private c:Lio/flutter/plugin/common/MethodChannel;

.field private d:Lio/flutter/plugin/common/EventChannel;

.field private e:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private f:Lorg/opencv/core/Mat;

.field private g:Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lca/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lca/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lca/c;->h:Lca/c$a;

    .line 8
    .line 9
    const-string v0, "opencv_java4"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lca/c;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lca/c;->g(Lca/c;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic d(Lca/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lca/c;->h(Lca/c;)V

    return-void
.end method

.method public static final synthetic e(Lca/c;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/c;->e:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    return-void
.end method

.method private final f(Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lca/c;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance p1, Lio/flutter/plugin/common/EventChannel;

    .line 4
    .line 5
    iget-object p2, p0, Lca/c;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 6
    .line 7
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "com.idsport.recognition.core.imagestream/events"

    .line 15
    .line 16
    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lca/c;->d:Lio/flutter/plugin/common/EventChannel;

    .line 20
    .line 21
    new-instance p2, Lca/c$b;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lca/c$b;-><init>(Lca/c;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    .line 30
    .line 31
    iget-object p2, p0, Lca/c;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "com.idsport.recognition.core.imagestream/actions"

    .line 41
    .line 42
    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lca/c;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 46
    .line 47
    new-instance p2, Lca/a;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lca/a;-><init>(Lca/c;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private static final g(Lca/c;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

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
    if-eqz v0, :cond_a

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, -0x5a6dcc27

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq v1, v2, :cond_7

    .line 24
    .line 25
    const v2, 0x2612291b

    .line 26
    .line 27
    .line 28
    if-eq v1, v2, :cond_4

    .line 29
    .line 30
    const v2, 0x5fd22c56

    .line 31
    .line 32
    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    const-string v1, "convertFileToMat"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    iget-object v0, p0, Lca/c;->g:Lorg/opencv/core/Mat;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_2
    :try_start_1
    const-string v0, "file"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lorg/opencv/core/Mat;

    .line 68
    .line 69
    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lca/c;->g:Lorg/opencv/core/Mat;

    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Lorg/opencv/android/Utils;->a(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lca/c;->g:Lorg/opencv/core/Mat;

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->d()J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    const-string p0, "convertFileToMat invalid args"

    .line 98
    .line 99
    invoke-interface {p2, p0, v3, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_1
    const-string p0, "convertFileToMat exception"

    .line 104
    .line 105
    const-string p1, "unknown"

    .line 106
    .line 107
    invoke-interface {p2, p0, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const-string p1, "releaseCurrentFrame"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    :try_start_2
    iget-object p1, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .line 126
    .line 127
    :catch_2
    :cond_6
    iput-object v3, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 128
    .line 129
    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    const-string p1, "releaseMat"

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_8

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    :try_start_3
    iget-object p0, p0, Lca/c;->g:Lorg/opencv/core/Mat;

    .line 143
    .line 144
    if-eqz p0, :cond_9

    .line 145
    .line 146
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->h()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 147
    .line 148
    .line 149
    :catch_3
    :cond_9
    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    :goto_0
    return-void
.end method

.method private static final h(Lca/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object p0, p0, Lca/c;->e:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/Image;)V
    .locals 1

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lca/c;->e:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p1}, Lda/a;->a(Landroid/media/Image;)Lorg/opencv/core/Mat;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 20
    .line 21
    iget-object p1, p0, Lca/c;->a:Landroid/app/Activity;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance v0, Lca/b;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lca/b;-><init>(Lca/c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lca/c;->f:Lorg/opencv/core/Mat;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
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
    move-result-object v0

    .line 10
    invoke-direct {p0, v0, p1}, Lca/c;->f(Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lca/c;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "getPlugins(...)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "MobileCorePlugin"

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, p0}, Lb;->b(Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;Lb;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lca/c;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lca/c;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 10
    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lca/c;->d:Lio/flutter/plugin/common/EventChannel;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lca/c;->onDetachedFromActivity()V

    .line 2
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
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lca/c;->b:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    return-void
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
    invoke-virtual {p0, p1}, Lca/c;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
