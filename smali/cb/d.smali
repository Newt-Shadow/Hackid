.class public final Lcb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/d$a;,
        Lcb/d$b;
    }
.end annotation


# static fields
.field public static final i:Lcb/d$a;


# instance fields
.field private a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private b:Lcb/c;

.field private c:Landroid/app/Application;

.field private d:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private e:Landroidx/lifecycle/i;

.field private f:Lcb/d$b;

.field private g:Landroid/app/Activity;

.field private h:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcb/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcb/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcb/d;->i:Lcb/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcb/d;->g:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcb/d;->c:Landroid/app/Application;

    .line 4
    .line 5
    new-instance p2, Lcb/c;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {p2, p3, v0, v1, v0}, Lcb/c;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcb/d;->b:Lcb/c;

    .line 13
    .line 14
    new-instance p2, Lio/flutter/plugin/common/MethodChannel;

    .line 15
    .line 16
    const-string v0, "miguelruivo.flutter.plugins.filepicker"

    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcb/d;->h:Lio/flutter/plugin/common/MethodChannel;

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcb/d;->b:Lcb/c;

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    .line 31
    .line 32
    const-string v1, "miguelruivo.flutter.plugins.filepickerevent"

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcb/d$c;

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcb/d$c;-><init>(Lcb/c;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcb/d$b;

    .line 46
    .line 47
    invoke-direct {p1, p0, p3}, Lcb/d$b;-><init>(Lcb/d;Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcb/d;->f:Lcb/d$b;

    .line 51
    .line 52
    invoke-interface {p4, p2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p4}, Lio/flutter/embedding/engine/plugins/lifecycle/FlutterLifecycleAdapter;->getActivityLifecycle(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)Landroidx/lifecycle/i;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcb/d;->e:Landroidx/lifecycle/i;

    .line 60
    .line 61
    iget-object p2, p0, Lcb/d;->f:Lcb/d$b;

    .line 62
    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcb/d;->b:Lcb/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcb/d;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcb/d;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 14
    .line 15
    iget-object v1, p0, Lcb/d;->f:Lcb/d$b;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcb/d;->e:Landroidx/lifecycle/i;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lcb/d;->c:Landroid/app/Application;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput-object v0, p0, Lcb/d;->e:Landroidx/lifecycle/i;

    .line 34
    .line 35
    iget-object v1, p0, Lcb/d;->b:Lcb/c;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcb/c;->s(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iput-object v0, p0, Lcb/d;->b:Lcb/c;

    .line 43
    .line 44
    iget-object v1, p0, Lcb/d;->h:Lio/flutter/plugin/common/MethodChannel;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iput-object v0, p0, Lcb/d;->h:Lio/flutter/plugin/common/MethodChannel;

    .line 52
    .line 53
    iput-object v0, p0, Lcb/d;->c:Landroid/app/Application;

    .line 54
    .line 55
    return-void
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
    iput-object p1, p0, Lcb/d;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 7
    .line 8
    iget-object p1, p0, Lcb/d;->d:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getBinaryMessenger(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "null cannot be cast to non-null type android.app.Application"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroid/app/Application;

    .line 31
    .line 32
    iget-object v1, p0, Lcb/d;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "getActivity(...)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcb/d;->a:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0, p1, v1, v2}, Lcb/d;->a(Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Application;Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 52
    .line 53
    .line 54
    :cond_0
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
    iput-object p1, p0, Lcb/d;->d:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcb/d;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcb/d;->onDetachedFromActivity()V

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
    iput-object p1, p0, Lcb/d;->d:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 11

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rawResult"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcb/d;->g:Landroid/app/Activity;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p1, "no_activity"

    .line 17
    .line 18
    const-string v0, "file picker plugin requires a foreground activity"

    .line 19
    .line 20
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v9, Lcb/j;

    .line 25
    .line 26
    invoke-direct {v9, p2}, Lcb/j;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 30
    .line 31
    instance-of v0, p2, Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p2, Ljava/util/HashMap;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p2, v1

    .line 39
    :goto_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "compressionQuality"

    .line 42
    .line 43
    const-string v2, "withData"

    .line 44
    .line 45
    const-string v3, "allowedExtensions"

    .line 46
    .line 47
    const-string v4, "allowMultipleSelection"

    .line 48
    .line 49
    if-eqz p1, :cond_16

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const v6, -0x5069748f

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    const/4 v8, 0x0

    .line 60
    if-eq v5, v6, :cond_d

    .line 61
    .line 62
    const v6, 0x35c17d

    .line 63
    .line 64
    .line 65
    if-eq v5, v6, :cond_5

    .line 66
    .line 67
    const v6, 0x5a5b64d

    .line 68
    .line 69
    .line 70
    if-eq v5, v6, :cond_2

    .line 71
    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :cond_2
    const-string v5, "clear"

    .line 75
    .line 76
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcb/d;->g:Landroid/app/Activity;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-static {p1}, Lcb/f;->f(Landroid/content/Context;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_4
    invoke-interface {v9, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_e

    .line 106
    .line 107
    :cond_5
    const-string v5, "save"

    .line 108
    .line 109
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_6

    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_6
    sget-object p1, Lcb/d;->i:Lcb/d$a;

    .line 118
    .line 119
    if-eqz p2, :cond_7

    .line 120
    .line 121
    const-string v0, "fileType"

    .line 122
    .line 123
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto :goto_1

    .line 128
    :cond_7
    move-object v0, v1

    .line 129
    :goto_1
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    .line 130
    .line 131
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p1, v0}, Lcb/d$a;->a(Lcb/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    const-string p1, "initialDirectory"

    .line 143
    .line 144
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_2

    .line 149
    :cond_8
    move-object p1, v1

    .line 150
    :goto_2
    move-object v6, p1

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    if-eqz p2, :cond_9

    .line 154
    .line 155
    const-string p1, "bytes"

    .line 156
    .line 157
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    goto :goto_3

    .line 162
    :cond_9
    move-object p1, v1

    .line 163
    :goto_3
    check-cast p1, [B

    .line 164
    .line 165
    if-eqz p2, :cond_a

    .line 166
    .line 167
    const-string v0, "fileName"

    .line 168
    .line 169
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    goto :goto_4

    .line 174
    :cond_a
    move-object p2, v1

    .line 175
    :goto_4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-lez v0, :cond_b

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_b
    move v7, v8

    .line 187
    :goto_5
    if-eqz v7, :cond_c

    .line 188
    .line 189
    const-string v0, "."

    .line 190
    .line 191
    const/4 v2, 0x2

    .line 192
    invoke-static {p2, v0, v8, v2, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_c

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const/16 p2, 0x2e

    .line 207
    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    sget-object p2, Lcb/f;->a:Lcb/f;

    .line 212
    .line 213
    invoke-virtual {p2, p1}, Lcb/f;->l([B)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    :cond_c
    move-object v4, p2

    .line 225
    iget-object v3, p0, Lcb/d;->b:Lcb/c;

    .line 226
    .line 227
    if-eqz v3, :cond_1c

    .line 228
    .line 229
    sget-object v2, Lcb/f;->a:Lcb/f;

    .line 230
    .line 231
    move-object v7, p1

    .line 232
    move-object v8, v9

    .line 233
    invoke-virtual/range {v2 .. v8}, Lcb/f;->A(Lcb/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_e

    .line 237
    .line 238
    :cond_d
    const-string v5, "custom"

    .line 239
    .line 240
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-nez v5, :cond_e

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_e
    sget-object v5, Lcb/f;->a:Lcb/f;

    .line 248
    .line 249
    if-eqz p2, :cond_f

    .line 250
    .line 251
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_6

    .line 256
    :cond_f
    move-object v3, v1

    .line 257
    :goto_6
    check-cast v3, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v5, v3}, Lcb/f;->p(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    if-eqz v10, :cond_11

    .line 264
    .line 265
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_10

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_10
    move v7, v8

    .line 273
    :cond_11
    :goto_7
    if-eqz v7, :cond_12

    .line 274
    .line 275
    const-string p1, "FilePicker"

    .line 276
    .line 277
    const-string p2, "Unsupported filter. Ensure using extension without dot (e.g., jpg, not .jpg)."

    .line 278
    .line 279
    invoke-interface {v9, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_e

    .line 283
    .line 284
    :cond_12
    iget-object v3, p0, Lcb/d;->b:Lcb/c;

    .line 285
    .line 286
    if-eqz v3, :cond_1c

    .line 287
    .line 288
    sget-object v6, Lcb/d;->i:Lcb/d$a;

    .line 289
    .line 290
    invoke-static {v6, p1}, Lcb/d$a;->a(Lcb/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    if-eqz p2, :cond_13

    .line 295
    .line 296
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    goto :goto_8

    .line 301
    :cond_13
    move-object v4, v1

    .line 302
    :goto_8
    move-object v6, v4

    .line 303
    check-cast v6, Ljava/lang/Boolean;

    .line 304
    .line 305
    if-eqz p2, :cond_14

    .line 306
    .line 307
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    goto :goto_9

    .line 312
    :cond_14
    move-object v2, v1

    .line 313
    :goto_9
    move-object v7, v2

    .line 314
    check-cast v7, Ljava/lang/Boolean;

    .line 315
    .line 316
    if-eqz p2, :cond_15

    .line 317
    .line 318
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    :cond_15
    move-object v8, v1

    .line 323
    check-cast v8, Ljava/lang/Integer;

    .line 324
    .line 325
    move-object v2, v5

    .line 326
    move-object v4, p1

    .line 327
    move-object v5, v6

    .line 328
    move-object v6, v7

    .line 329
    move-object v7, v10

    .line 330
    invoke-virtual/range {v2 .. v9}, Lcb/f;->C(Lcb/c;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 331
    .line 332
    .line 333
    goto :goto_e

    .line 334
    :cond_16
    :goto_a
    sget-object v5, Lcb/d;->i:Lcb/d$a;

    .line 335
    .line 336
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v5, p1}, Lcb/d$a;->a(Lcb/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    if-nez p1, :cond_17

    .line 344
    .line 345
    invoke-interface {v9}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_17
    iget-object v5, p0, Lcb/d;->b:Lcb/c;

    .line 350
    .line 351
    if-eqz v5, :cond_1c

    .line 352
    .line 353
    sget-object v6, Lcb/f;->a:Lcb/f;

    .line 354
    .line 355
    if-eqz p2, :cond_18

    .line 356
    .line 357
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    goto :goto_b

    .line 362
    :cond_18
    move-object v4, v1

    .line 363
    :goto_b
    move-object v7, v4

    .line 364
    check-cast v7, Ljava/lang/Boolean;

    .line 365
    .line 366
    if-eqz p2, :cond_19

    .line 367
    .line 368
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    goto :goto_c

    .line 373
    :cond_19
    move-object v2, v1

    .line 374
    :goto_c
    move-object v8, v2

    .line 375
    check-cast v8, Ljava/lang/Boolean;

    .line 376
    .line 377
    if-eqz p2, :cond_1a

    .line 378
    .line 379
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    goto :goto_d

    .line 384
    :cond_1a
    move-object v2, v1

    .line 385
    :goto_d
    check-cast v2, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v6, v2}, Lcb/f;->p(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    if-eqz p2, :cond_1b

    .line 392
    .line 393
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    :cond_1b
    move-object p2, v1

    .line 398
    check-cast p2, Ljava/lang/Integer;

    .line 399
    .line 400
    move-object v2, v6

    .line 401
    move-object v3, v5

    .line 402
    move-object v4, p1

    .line 403
    move-object v5, v7

    .line 404
    move-object v6, v8

    .line 405
    move-object v7, v10

    .line 406
    move-object v8, p2

    .line 407
    invoke-virtual/range {v2 .. v9}, Lcb/f;->C(Lcb/c;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 408
    .line 409
    .line 410
    :cond_1c
    :goto_e
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
    invoke-virtual {p0, p1}, Lcb/d;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
