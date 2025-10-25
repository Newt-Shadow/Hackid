.class public final Lcom/pravera/flutter_foreground_task/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;->b()Lwd/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lwd/u;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/pravera/flutter_foreground_task/service/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lqb/a;->b:Lqb/a$a;

    .line 20
    .line 21
    const-string v2, "com.pravera.flutter_foreground_task.action.api_restart"

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Lpb/e;

    .line 31
    .line 32
    invoke-direct {p1}, Lpb/e;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/pravera/flutter_foreground_task/service/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    instance-of v1, p2, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast p2, Ljava/util/Map;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    sget-object v1, Lqb/a;->b:Lqb/a$a;

    .line 28
    .line 29
    const-string v2, "com.pravera.flutter_foreground_task.action.api_start"

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lqb/i;->m:Lqb/i$a;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Lqb/i$a;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lqb/e;->f:Lqb/e$a;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p2}, Lqb/e$a;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lqb/b;->b:Lqb/b$a;

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Lqb/b$a;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lqb/g;->f:Lqb/g$a;

    .line 50
    .line 51
    invoke-virtual {v1, p1, p2}, Lqb/g$a;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p1, Lpb/d;

    .line 59
    .line 60
    invoke-direct {p1}, Lpb/d;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public final e(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/pravera/flutter_foreground_task/service/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lqb/a;->b:Lqb/a$a;

    .line 20
    .line 21
    const-string v2, "com.pravera.flutter_foreground_task.action.api_stop"

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lqb/i;->m:Lqb/i$a;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lqb/i$a;->a(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lqb/e;->f:Lqb/e$a;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lqb/e$a;->a(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lqb/b;->b:Lqb/b$a;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lqb/b$a;->a(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lqb/g;->f:Lqb/g$a;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lqb/g$a;->a(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p1, Lpb/e;

    .line 51
    .line 52
    invoke-direct {p1}, Lpb/e;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/pravera/flutter_foreground_task/service/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    instance-of v1, p2, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast p2, Ljava/util/Map;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    sget-object v1, Lqb/a;->b:Lqb/a$a;

    .line 28
    .line 29
    const-string v2, "com.pravera.flutter_foreground_task.action.api_update"

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lqb/e;->f:Lqb/e$a;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Lqb/e$a;->d(Landroid/content/Context;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lqb/b;->b:Lqb/b$a;

    .line 40
    .line 41
    invoke-virtual {v1, p1, p2}, Lqb/b$a;->d(Landroid/content/Context;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lqb/g;->f:Lqb/g$a;

    .line 45
    .line 46
    invoke-virtual {v1, p1, p2}, Lqb/g$a;->d(Landroid/content/Context;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance p1, Lpb/e;

    .line 54
    .line 55
    invoke-direct {p1}, Lpb/e;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
