.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/sentry/o0;

.field private final b:Lio/sentry/android/core/SentryAndroidOptions;

.field private final c:Lio/sentry/android/core/internal/util/g;


# direct methods
.method constructor <init>(Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/internal/util/g;

    .line 5
    .line 6
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->b()Lio/sentry/transport/p;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide/32 v2, 0xea60

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/g;-><init>(Lio/sentry/transport/p;JI)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/internal/util/g;

    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->a:Lio/sentry/o0;

    .line 20
    .line 21
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;JLandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->c(JLandroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(JLandroid/content/Intent;Ljava/lang/String;Z)Lio/sentry/e;
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/sentry/e;-><init>(J)V

    .line 4
    .line 5
    .line 6
    const-string p1, "system"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "device.event"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p4}, Lio/sentry/util/w;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p2, "action"

    .line 23
    .line 24
    invoke-virtual {v0, p2, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz p5, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 30
    .line 31
    invoke-static {p3, p1}, Lio/sentry/android/core/b1;->c(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string p2, "level"

    .line 38
    .line 39
    invoke-virtual {v0, p2, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 43
    .line 44
    invoke-static {p3, p1}, Lio/sentry/android/core/b1;->s(Landroid/content/Intent;Lio/sentry/s5;)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    const-string p2, "charging"

    .line 51
    .line 52
    invoke-virtual {v0, p2, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p5

    .line 85
    if-eqz p5, :cond_4

    .line 86
    .line 87
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p5

    .line 91
    check-cast p5, Ljava/lang/String;

    .line 92
    .line 93
    :try_start_0
    invoke-virtual {p1, p5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {p2, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 109
    .line 110
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 115
    .line 116
    const-string v4, "%s key of the %s action threw an error."

    .line 117
    .line 118
    filled-new-array {p5, p4}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    invoke-interface {v2, v3, v1, v4, p5}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const-string p1, "extras"

    .line 127
    .line 128
    invoke-virtual {v0, p1, p2}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    sget-object p1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method

.method private synthetic c(JLandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b(JLandroid/content/Intent;Ljava/lang/String;Z)Lio/sentry/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lio/sentry/c0;

    .line 6
    .line 7
    invoke-direct {p2}, Lio/sentry/c0;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p4, "android:intent"

    .line 11
    .line 12
    invoke-virtual {p2, p4, p3}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->a:Lio/sentry/o0;

    .line 16
    .line 17
    invoke-interface {p3, p1, p2}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/internal/util/g;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/sentry/android/core/internal/util/g;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v7, Lio/sentry/android/core/e2;

    .line 33
    .line 34
    move-object v0, v7

    .line 35
    move-object v1, p0

    .line 36
    move-object v4, p2

    .line 37
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/e2;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;JLandroid/content/Intent;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v7}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    iget-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 46
    .line 47
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v2, "Failed to submit system event breadcrumb action."

    .line 57
    .line 58
    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
