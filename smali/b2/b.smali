.class public final Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/b$a;
    }
.end annotation


# static fields
.field public static final d:Lb2/b$a;

.field private static e:Lio/flutter/plugin/common/MethodChannel$Result;

.field private static f:Lid/a;


# instance fields
.field private final a:I

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb2/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb2/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lb2/b;->d:Lb2/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    iput v0, p0, Lb2/b;->a:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lb2/b;->b(Landroid/app/Activity;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroid/app/Activity;)Lxc/t;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/high16 v1, 0x4000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget p2, p0, Lb2/b;->a:I

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lb2/b;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p2, "authorization-error/canceled"

    .line 10
    .line 11
    const-string p3, "The user closed the Custom Tab"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lb2/b;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 18
    .line 19
    sput-object v0, Lb2/b;->f:Lid/a;

    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
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
    iput-object p1, p0, Lb2/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "flutterPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "com.aboutyou.dart_packages.sign_in_with_apple"

    .line 13
    .line 14
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lb2/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lb2/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 10
    .line 11
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb2/b;->onDetachedFromActivity()V

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
    iget-object p1, p0, Lb2/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object v0, p0, Lb2/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 15
    .line 16
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

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
    const-string v1, "isAvailable"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    const-string v1, "performAuthorizationRequest"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget-object v0, p0, Lb2/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :goto_0
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "Plugin is not attached to an activity"

    .line 50
    .line 51
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 52
    .line 53
    const-string v1, "MISSING_ACTIVITY"

    .line 54
    .line 55
    invoke-interface {p2, v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string v2, "url"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    const-string v0, "Missing \'url\' argument"

    .line 70
    .line 71
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 72
    .line 73
    const-string v1, "MISSING_ARG"

    .line 74
    .line 75
    invoke-interface {p2, v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    sget-object p1, Lb2/b;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    const-string v3, "NEW_REQUEST"

    .line 84
    .line 85
    const-string v4, "A new request came in while this was still pending. The previous request (this one) was then cancelled."

    .line 86
    .line 87
    invoke-interface {p1, v3, v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    sget-object p1, Lb2/b;->f:Lid/a;

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_5
    sput-object p2, Lb2/b;->e:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 101
    .line 102
    new-instance p1, Lb2/a;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Lb2/a;-><init>(Landroid/app/Activity;)V

    .line 105
    .line 106
    .line 107
    sput-object p1, Lb2/b;->f:Lid/a;

    .line 108
    .line 109
    new-instance p1, Landroidx/browser/customtabs/d$d;

    .line 110
    .line 111
    invoke-direct {p1}, Landroidx/browser/customtabs/d$d;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/browser/customtabs/d$d;->b()Landroidx/browser/customtabs/d;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, "build(...)"

    .line 119
    .line 120
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 124
    .line 125
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    iget-object p2, p1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 133
    .line 134
    iget v1, p0, Lb2/b;->a:I

    .line 135
    .line 136
    iget-object p1, p1, Landroidx/browser/customtabs/d;->b:Landroid/os/Bundle;

    .line 137
    .line 138
    invoke-virtual {v0, p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 143
    .line 144
    .line 145
    :goto_1
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
    invoke-virtual {p0, p1}, Lb2/b;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
