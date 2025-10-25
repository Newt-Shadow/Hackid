.class public final La2/b;
.super La2/a;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lid/l;

.field private final d:Lid/l;

.field private final e:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lid/l;Lid/l;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onChange"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, La2/a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, La2/b;->b:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, La2/b;->c:Lid/l;

    .line 17
    .line 18
    iput-object p3, p0, La2/b;->d:Lid/l;

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, La2/b$a;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, La2/b$a;-><init>(La2/b;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, La2/b;->e:Landroid/database/ContentObserver;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b(D)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/a;->a()Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c()Lid/l;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->d:Lid/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, La2/a;->onCancel(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, La2/b;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, La2/b;->e:Landroid/database/ContentObserver;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, La2/a;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, La2/b;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "screen_brightness"

    .line 11
    .line 12
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, La2/b;->e:Landroid/database/ContentObserver;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, La2/a;->a()Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p2, p0, La2/b;->c:Lid/l;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
