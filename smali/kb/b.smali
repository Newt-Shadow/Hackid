.class public final Lkb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Landroid/content/Context;

.field private final c:Lkb/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkb/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lkb/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkb/b;->c:Lkb/c;

    .line 10
    .line 11
    return-void
.end method

.method private final a(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "alias"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Leb/c$a;->m(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string v1, "PosthogFlutterException"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private final b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "eventName"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "properties"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    move-object v5, p1

    .line 21
    check-cast v5, Ljava/util/Map;

    .line 22
    .line 23
    sget-object v2, Leb/c;->A:Leb/c$a;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/16 v9, 0x3a

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    invoke-static/range {v2 .. v10}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    const-string v1, "PosthogFlutterException"

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private final c(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->close()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    const-string v2, "PosthogFlutterException"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "debug"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Leb/c$a;->k(Z)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string v1, "PosthogFlutterException"

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private final e(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->l()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    const-string v2, "PosthogFlutterException"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final f(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Leb/c;->A:Leb/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/c$a;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "PosthogFlutterException"

    .line 18
    .line 19
    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final g(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->g()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    const-string v2, "PosthogFlutterException"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final h(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->flush()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    const-string v2, "PosthogFlutterException"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final i(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "key"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v1, p1, v0, v2, v0}, Leb/h$a;->b(Leb/h;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    const-string v1, "PosthogFlutterException"

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private final j(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "key"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v1, p1, v0, v2, v0}, Leb/h$a;->c(Leb/h;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    const-string v1, "PosthogFlutterException"

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private final k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-interface {p3, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method private final l(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->getSessionId()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    const-string v2, "PosthogFlutterException"

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void
.end method

.method private final m(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "groupType"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "groupKey"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "groupProperties"

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/Map;

    .line 31
    .line 32
    sget-object v3, Leb/c;->A:Leb/c$a;

    .line 33
    .line 34
    invoke-virtual {v3, v1, v2, p1}, Leb/c$a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    const-string v1, "PosthogFlutterException"

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final n(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "width"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v3, "height"

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "screen"

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v3, p0, Lkb/b;->c:Lkb/c;

    .line 57
    .line 58
    invoke-virtual {v3, v1, v2, p1}, Lkb/c;->b(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    :goto_0
    const-string p1, "INVALID_ARGUMENT"

    .line 66
    .line 67
    const-string v1, "Width or height is 0"

    .line 68
    .line 69
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    const-string v1, "PosthogFlutterException"

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method

.method private final o(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "imageBytes"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, [B

    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "x"

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Integer;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v5, "y"

    .line 49
    .line 50
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Integer;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lkb/b;->c:Lkb/c;

    .line 69
    .line 70
    invoke-virtual {v4, v1, v2, v3, p1}, Lkb/c;->a([BIII)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string p1, "INVALID_ARGUMENT"

    .line 78
    .line 79
    const-string v1, "Image bytes are null"

    .line 80
    .line 81
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    const-string v1, "PosthogFlutterException"

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method private final p(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "userId"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "userProperties"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/Map;

    .line 20
    .line 21
    const-string v3, "userPropertiesSetOnce"

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/Map;

    .line 28
    .line 29
    sget-object v3, Leb/c;->A:Leb/c$a;

    .line 30
    .line 31
    invoke-virtual {v3, v1, v2, p1}, Leb/c$a;->s(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    const-string v1, "PosthogFlutterException"

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private final q()V
    .locals 8

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    const-string v1, "PostHog"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lkb/b;->b:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string v2, "applicationContext"

    .line 10
    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    invoke-static {v2}, Lgb/o;->h(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_1
    const-string v3, "com.posthog.posthog.AUTO_INIT"

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    const-string v0, "com.posthog.posthog.AUTO_INIT is disabled!"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const-string v3, "com.posthog.posthog.API_KEY"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v4, v5

    .line 60
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 61
    .line 62
    const-string v0, "com.posthog.posthog.API_KEY is missing!"

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    const-string v4, "com.posthog.posthog.POSTHOG_HOST"

    .line 69
    .line 70
    const-string v6, "https://us.i.posthog.com"

    .line 71
    .line 72
    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v6, "com.posthog.posthog.TRACK_APPLICATION_LIFECYCLE_EVENTS"

    .line 77
    .line 78
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const-string v7, "com.posthog.posthog.DEBUG"

    .line 83
    .line 84
    invoke-virtual {v2, v7, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "apiKey"

    .line 94
    .line 95
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v3, "captureApplicationLifecycleEvents"

    .line 109
    .line 110
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "debug"

    .line 118
    .line 119
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v5}, Lkb/b;->y(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "initPlugin error: "

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void
.end method

.method private final r(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "key"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-static {v1, p1, v2, v3, v0}, Leb/h$a;->d(Leb/h;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    const-string v1, "PosthogFlutterException"

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private final s()Z
    .locals 1

    .line 1
    sget-object v0, Leb/c;->A:Leb/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/c$a;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final t(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "key"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "value"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Leb/c;->A:Leb/c$a;

    .line 23
    .line 24
    invoke-virtual {v2, v1, p1}, Leb/c$a;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    const-string v1, "PosthogFlutterException"

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private final u(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v0, v2, v0}, Leb/h$a;->e(Leb/h;Leb/i;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    const-string v2, "PosthogFlutterException"

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final v(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 3
    .line 4
    invoke-virtual {v1}, Leb/c$a;->a()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    const-string v2, "PosthogFlutterException"

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final w(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "screenName"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "properties"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    sget-object v2, Leb/c;->A:Leb/c$a;

    .line 22
    .line 23
    invoke-virtual {v2, v1, p1}, Leb/c$a;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    const-string v1, "PosthogFlutterException"

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method private final x(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const-string v0, "PosthogFlutterException"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p1, "Arguments is null or empty"

    .line 23
    .line 24
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lkb/b;->y(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private final y(Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "apiKey"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-string p1, "PostHog"

    .line 26
    .line 27
    const-string v0, "apiKey is missing!"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string v1, "host"

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    const-string v1, "https://us.i.posthog.com"

    .line 44
    .line 45
    :cond_3
    move-object v3, v1

    .line 46
    new-instance v10, Lfb/b;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/16 v8, 0x3c

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    move-object v1, v10

    .line 56
    invoke-direct/range {v1 .. v9}, Lfb/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLhb/n;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v0}, Lfb/b;->m0(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v0}, Lfb/b;->l0(Z)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lkb/b$c;

    .line 66
    .line 67
    invoke-direct {v1, v10}, Lkb/b$c;-><init>(Lfb/b;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "captureApplicationLifecycleEvents"

    .line 71
    .line 72
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lkb/b$d;

    .line 76
    .line 77
    invoke-direct {v1, v10}, Lkb/b$d;-><init>(Lfb/b;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "debug"

    .line 81
    .line 82
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lkb/b$e;

    .line 86
    .line 87
    invoke-direct {v1, v10}, Lkb/b$e;-><init>(Lfb/b;)V

    .line 88
    .line 89
    .line 90
    const-string v2, "flushAt"

    .line 91
    .line 92
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lkb/b$f;

    .line 96
    .line 97
    invoke-direct {v1, v10}, Lkb/b$f;-><init>(Lfb/b;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "maxQueueSize"

    .line 101
    .line 102
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lkb/b$g;

    .line 106
    .line 107
    invoke-direct {v1, v10}, Lkb/b$g;-><init>(Lfb/b;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "maxBatchSize"

    .line 111
    .line 112
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lkb/b$h;

    .line 116
    .line 117
    invoke-direct {v1, v10}, Lkb/b$h;-><init>(Lfb/b;)V

    .line 118
    .line 119
    .line 120
    const-string v2, "flushInterval"

    .line 121
    .line 122
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lkb/b$i;

    .line 126
    .line 127
    invoke-direct {v1, v10}, Lkb/b$i;-><init>(Lfb/b;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "sendFeatureFlagEvents"

    .line 131
    .line 132
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lkb/b$j;

    .line 136
    .line 137
    invoke-direct {v1, v10}, Lkb/b$j;-><init>(Lfb/b;)V

    .line 138
    .line 139
    .line 140
    const-string v2, "preloadFeatureFlags"

    .line 141
    .line 142
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lkb/b$k;

    .line 146
    .line 147
    invoke-direct {v1, v10}, Lkb/b$k;-><init>(Lfb/b;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "optOut"

    .line 151
    .line 152
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Lkb/b$a;

    .line 156
    .line 157
    invoke-direct {v1, v10}, Lkb/b$a;-><init>(Lfb/b;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "personProfiles"

    .line 161
    .line 162
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lkb/b$b;

    .line 166
    .line 167
    invoke-direct {v1, v10}, Lkb/b$b;-><init>(Lfb/b;)V

    .line 168
    .line 169
    .line 170
    const-string v2, "sessionReplay"

    .line 171
    .line 172
    invoke-direct {p0, p1, v2, v1}, Lkb/b;->k(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Lfb/b;->j0()Lhb/n;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, v0}, Lhb/n;->g(Z)V

    .line 180
    .line 181
    .line 182
    const-string p1, "posthog-flutter"

    .line 183
    .line 184
    invoke-virtual {v10, p1}, Leb/d;->a0(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lkb/a;->a()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v10, p1}, Leb/d;->b0(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lfb/a;->a:Lfb/a$a;

    .line 195
    .line 196
    iget-object v0, p0, Lkb/b;->b:Landroid/content/Context;

    .line 197
    .line 198
    if-nez v0, :cond_4

    .line 199
    .line 200
    const-string v0, "applicationContext"

    .line 201
    .line 202
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    :cond_4
    invoke-virtual {p1, v0, v10}, Lfb/a$a;->b(Landroid/content/Context;Lfb/b;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method private final z(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "key"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Leb/c;->A:Leb/c$a;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Leb/c$a;->h(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string v1, "PosthogFlutterException"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

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
    move-result-object v1

    .line 12
    const-string v2, "posthog_flutter"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lkb/b;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "flutterPluginBinding.applicationContext"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lkb/b;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {p0}, Lkb/b;->q()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lkb/b;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string p1, "channel"

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    :cond_0
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 44
    .line 45
    .line 46
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
    iget-object p1, p0, Lkb/b;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "channel"

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
    if-eqz v0, :cond_17

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
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string p1, "disable"

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
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    invoke-direct {p0, p2}, Lkb/b;->e(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_1
    const-string v1, "unregister"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lkb/b;->z(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string p1, "getSessionId"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_2
    invoke-direct {p0, p2}, Lkb/b;->l(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_3
    const-string v1, "capture"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_3
    invoke-direct {p0, p1, p2}, Lkb/b;->b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :sswitch_4
    const-string v1, "setup"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_4
    invoke-direct {p0, p1, p2}, Lkb/b;->x(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :sswitch_5
    const-string p1, "reset"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_5
    invoke-direct {p0, p2}, Lkb/b;->v(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_6
    const-string v1, "group"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_6
    invoke-direct {p0, p1, p2}, Lkb/b;->m(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :sswitch_7
    const-string p1, "flush"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_7

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_7
    invoke-direct {p0, p2}, Lkb/b;->h(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :sswitch_8
    const-string v1, "debug"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_8

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_8
    invoke-direct {p0, p1, p2}, Lkb/b;->d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :sswitch_9
    const-string p1, "close"

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_9

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_9
    invoke-direct {p0, p2}, Lkb/b;->c(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :sswitch_a
    const-string v1, "alias"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_a

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_a
    invoke-direct {p0, p1, p2}, Lkb/b;->a(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_b
    const-string v1, "identify"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_b

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_b
    invoke-direct {p0, p1, p2}, Lkb/b;->p(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :sswitch_c
    const-string v1, "sendFullSnapshot"

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_c

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_c
    invoke-direct {p0, p1, p2}, Lkb/b;->o(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :sswitch_d
    const-string v1, "register"

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_d

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_d
    invoke-direct {p0, p1, p2}, Lkb/b;->t(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :sswitch_e
    const-string v1, "getFeatureFlagPayload"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_e

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_e
    invoke-direct {p0, p1, p2}, Lkb/b;->j(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :sswitch_f
    const-string v1, "isFeatureEnabled"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_f

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_f
    invoke-direct {p0, p1, p2}, Lkb/b;->r(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :sswitch_10
    const-string v1, "sendMetaEvent"

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_10

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_10
    invoke-direct {p0, p1, p2}, Lkb/b;->n(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :sswitch_11
    const-string v1, "screen"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_11

    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_11
    invoke-direct {p0, p1, p2}, Lkb/b;->w(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 287
    .line 288
    .line 289
    goto :goto_1

    .line 290
    :sswitch_12
    const-string v1, "getFeatureFlag"

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_12

    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_12
    invoke-direct {p0, p1, p2}, Lkb/b;->i(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :sswitch_13
    const-string p1, "isSessionReplayActive"

    .line 304
    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_13

    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_13
    invoke-direct {p0}, Lkb/b;->s()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :sswitch_14
    const-string p1, "enable"

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-nez p1, :cond_14

    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_14
    invoke-direct {p0, p2}, Lkb/b;->g(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :sswitch_15
    const-string p1, "distinctId"

    .line 338
    .line 339
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_15

    .line 344
    .line 345
    goto :goto_0

    .line 346
    :cond_15
    invoke-direct {p0, p2}, Lkb/b;->f(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 347
    .line 348
    .line 349
    goto :goto_1

    .line 350
    :sswitch_16
    const-string p1, "reloadFeatureFlags"

    .line 351
    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-nez p1, :cond_16

    .line 357
    .line 358
    goto :goto_0

    .line 359
    :cond_16
    invoke-direct {p0, p2}, Lkb/b;->u(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_17
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 364
    .line 365
    .line 366
    :goto_1
    return-void

    .line 367
    :sswitch_data_0
    .sparse-switch
        -0x73a5da96 -> :sswitch_16
        -0x675a96c9 -> :sswitch_15
        -0x4d6ada7d -> :sswitch_14
        -0x409eaa07 -> :sswitch_13
        -0x3ca835b4 -> :sswitch_12
        -0x361a3f94 -> :sswitch_11
        -0x34d04f13 -> :sswitch_10
        -0x342af0cb -> :sswitch_f
        -0x2aa13e5e -> :sswitch_e
        -0x2923d15d -> :sswitch_d
        -0x27a48ae5 -> :sswitch_c
        -0x81790f4 -> :sswitch_b
        0x5899650 -> :sswitch_a
        0x5a5ddf8 -> :sswitch_9
        0x5b09653 -> :sswitch_8
        0x5d03b04 -> :sswitch_7
        0x5e0f67f -> :sswitch_6
        0x6761d4f -> :sswitch_5
        0x6843a7d -> :sswitch_4
        0x20efc746 -> :sswitch_3
        0x23a7af9b -> :sswitch_2
        0x31d4943c -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch
.end method
