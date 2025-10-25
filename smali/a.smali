.class public abstract La;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;La;)V
    .locals 3

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "source"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lua/a;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->get(Ljava/lang/Class;)Lio/flutter/embedding/engine/plugins/FlutterPlugin;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "null cannot be cast to non-null type com.idsports.image_stream_binder.ImageStreamBinderPlugin"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Lua/a;

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lua/a;->b(Ljava/lang/String;La;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/util/Timer;

    .line 40
    .line 41
    const-string v1, "RegisterAsImageStreamTargetTimer"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    new-instance v1, La$a;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1, p2, p3}, La$a;-><init>(La;Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;La;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 p1, 0x1f4

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public abstract b(Lb;)V
.end method
