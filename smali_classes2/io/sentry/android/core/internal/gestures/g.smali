.class public final Lio/sentry/android/core/internal/gestures/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/g$b;,
        Lio/sentry/android/core/internal/gestures/g$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lio/sentry/o0;

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;

.field private d:Lio/sentry/internal/gestures/b;

.field private e:Lio/sentry/a1;

.field private f:Lio/sentry/android/core/internal/gestures/g$b;

.field private final g:Lio/sentry/android/core/internal/gestures/g$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/o0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 6
    .line 7
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 8
    .line 9
    sget-object v1, Lio/sentry/android/core/internal/gestures/g$b;->Unknown:Lio/sentry/android/core/internal/gestures/g$b;

    .line 10
    .line 11
    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->f:Lio/sentry/android/core/internal/gestures/g$b;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/android/core/internal/gestures/g$c;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lio/sentry/android/core/internal/gestures/g$c;-><init>(Lio/sentry/android/core/internal/gestures/g$a;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 28
    .line 29
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/internal/gestures/g;->k(Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/g;->l(Lio/sentry/u0;Lio/sentry/a1;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/g;->m(Lio/sentry/a1;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/g;->n(Lio/sentry/u0;)V

    return-void
.end method

.method private e(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->isEnableUserInteractionBreadcrumbs()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p2}, Lio/sentry/android/core/internal/gestures/g;->j(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lio/sentry/c0;

    .line 15
    .line 16
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "android:motionEvent"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p4}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    const-string v1, "android:view"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p4}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2, v1, v2, p1, p3}, Lio/sentry/e;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/e;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p4, p1, v0}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private h(Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, ". No breadcrumb captured."

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v6, "Activity is null in "

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    .line 57
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v6, "Window is null in "

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 96
    .line 97
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "DecorView is null in "

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_2
    return-object v0
.end method

.method private i(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private static j(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/internal/gestures/g$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const-string p0, "unknown"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "swipe"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p0, "scroll"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string p0, "click"

    .line 28
    .line 29
    :goto_0
    return-object p0
.end method

.method private synthetic k(Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lio/sentry/u0;->E(Lio/sentry/a1;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    invoke-interface {p2}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 24
    .line 25
    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private synthetic l(Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/sentry/u0;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic m(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/internal/gestures/g;->f(Lio/sentry/u0;Lio/sentry/a1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/g;->g(Lio/sentry/u0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->f:Lio/sentry/android/core/internal/gestures/g$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/internal/gestures/b;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    sget-object v3, Lio/sentry/android/core/internal/gestures/g$b;->Click:Lio/sentry/android/core/internal/gestures/g$b;

    .line 19
    .line 20
    if-ne p2, v3, :cond_1

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_1
    if-nez v3, :cond_3

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v0, v2

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    move v0, v1

    .line 33
    :goto_3
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 34
    .line 35
    invoke-virtual {v3}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_9

    .line 40
    .line 41
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 42
    .line 43
    invoke-virtual {v3}, Lio/sentry/s5;->isEnableUserInteractionTracing()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_4
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/g;->a:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/app/Activity;

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 62
    .line 63
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 68
    .line 69
    const-string v0, "Activity is null, no transaction captured."

    .line 70
    .line 71
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 82
    .line 83
    if-eqz v5, :cond_8

    .line 84
    .line 85
    if-nez v0, :cond_7

    .line 86
    .line 87
    invoke-interface {v5}, Lio/sentry/z0;->c()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 94
    .line 95
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v1, "The view with id: "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " already has an ongoing transaction assigned. Rescheduling finish"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-array v1, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 129
    .line 130
    invoke-virtual {p1}, Lio/sentry/s5;->getIdleTimeout()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 137
    .line 138
    invoke-interface {p1}, Lio/sentry/a1;->n()V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-void

    .line 142
    :cond_7
    sget-object v0, Lio/sentry/p6;->OK:Lio/sentry/p6;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->q(Lio/sentry/p6;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v3}, Lio/sentry/android/core/internal/gestures/g;->i(Landroid/app/Activity;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, "."

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v3, "ui.action."

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-static {p2}, Lio/sentry/android/core/internal/gestures/g;->j(Lio/sentry/android/core/internal/gestures/g$b;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    new-instance v3, Lio/sentry/a7;

    .line 193
    .line 194
    invoke-direct {v3}, Lio/sentry/a7;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v1}, Lio/sentry/a7;->r(Z)V

    .line 198
    .line 199
    .line 200
    const-wide/16 v4, 0x7530

    .line 201
    .line 202
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v3, v4}, Lio/sentry/a7;->n(Ljava/lang/Long;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 210
    .line 211
    invoke-virtual {v4}, Lio/sentry/s5;->getIdleTimeout()Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3, v4}, Lio/sentry/a7;->o(Ljava/lang/Long;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v1}, Lio/sentry/o6;->d(Z)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 222
    .line 223
    new-instance v4, Lio/sentry/y6;

    .line 224
    .line 225
    sget-object v5, Lio/sentry/protocol/a0;->COMPONENT:Lio/sentry/protocol/a0;

    .line 226
    .line 227
    invoke-direct {v4, v0, v5, v2}, Lio/sentry/y6;-><init>(Ljava/lang/String;Lio/sentry/protocol/a0;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v4, v3}, Lio/sentry/o0;->w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v0}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v3, "auto.ui.gesture_listener."

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->c()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Lio/sentry/l6;->m(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 263
    .line 264
    new-instance v2, Lio/sentry/android/core/internal/gestures/d;

    .line 265
    .line 266
    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/gestures/d;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/a1;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v1, v2}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 270
    .line 271
    .line 272
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 273
    .line 274
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 275
    .line 276
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->f:Lio/sentry/android/core/internal/gestures/g$b;

    .line 277
    .line 278
    return-void

    .line 279
    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 280
    .line 281
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 282
    .line 283
    invoke-static {v0}, Lio/sentry/util/a0;->h(Lio/sentry/o0;)V

    .line 284
    .line 285
    .line 286
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 287
    .line 288
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->f:Lio/sentry/android/core/internal/gestures/g$b;

    .line 289
    .line 290
    :cond_a
    return-void
.end method


# virtual methods
.method f(Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/gestures/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/internal/gestures/e;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/u0;Lio/sentry/a1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/u0;->D(Lio/sentry/d3$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method g(Lio/sentry/u0;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/gestures/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/f;-><init>(Lio/sentry/android/core/internal/gestures/g;Lio/sentry/u0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/u0;->D(Lio/sentry/d3$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public o(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    const-string v0, "onUp"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 8
    .line 9
    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/g$c;->a(Lio/sentry/android/core/internal/gestures/g$c;)Lio/sentry/internal/gestures/b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 19
    .line 20
    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/g$c;->b(Lio/sentry/android/core/internal/gestures/g$c;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v2, Lio/sentry/android/core/internal/gestures/g$b;->Unknown:Lio/sentry/android/core/internal/gestures/g$b;

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v2, "Unable to define scroll type. No breadcrumb captured."

    .line 40
    .line 41
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 46
    .line 47
    invoke-static {v0, p1}, Lio/sentry/android/core/internal/gestures/g$c;->d(Lio/sentry/android/core/internal/gestures/g$c;Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 52
    .line 53
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/g$c;->b(Lio/sentry/android/core/internal/gestures/g$c;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "direction"

    .line 58
    .line 59
    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v1, v2, v0, p1}, Lio/sentry/android/core/internal/gestures/g;->e(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 67
    .line 68
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/g$c;->b(Lio/sentry/android/core/internal/gestures/g$c;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, v1, p1}, Lio/sentry/android/core/internal/gestures/g;->p(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 76
    .line 77
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/g$c;->e(Lio/sentry/android/core/internal/gestures/g$c;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 6
    .line 7
    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/g$c;->e(Lio/sentry/android/core/internal/gestures/g$c;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/g$c;->f(Lio/sentry/android/core/internal/gestures/g$c;F)F

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {v1, p1}, Lio/sentry/android/core/internal/gestures/g$c;->g(Lio/sentry/android/core/internal/gestures/g$c;F)F

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 2
    .line 3
    sget-object p2, Lio/sentry/android/core/internal/gestures/g$b;->Swipe:Lio/sentry/android/core/internal/gestures/g$b;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/g$c;->c(Lio/sentry/android/core/internal/gestures/g$c;Lio/sentry/android/core/internal/gestures/g$b;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    const-string p2, "onScroll"

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 14
    .line 15
    invoke-static {p4}, Lio/sentry/android/core/internal/gestures/g$c;->b(Lio/sentry/android/core/internal/gestures/g$c;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    sget-object v0, Lio/sentry/android/core/internal/gestures/g$b;->Unknown:Lio/sentry/android/core/internal/gestures/g$b;

    .line 20
    .line 21
    if-ne p4, v0, :cond_2

    .line 22
    .line 23
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sget-object v1, Lio/sentry/internal/gestures/b$a;->SCROLLABLE:Lio/sentry/internal/gestures/b$a;

    .line 34
    .line 35
    invoke-static {p4, p2, v0, p1, v1}, Lio/sentry/android/core/internal/gestures/i;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/b$a;)Lio/sentry/internal/gestures/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 48
    .line 49
    const-string p4, "Unable to find scroll target. No breadcrumb captured."

    .line 50
    .line 51
    new-array v0, p3, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {p1, p2, p4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return p3

    .line 57
    :cond_1
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    .line 59
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object p4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "Scroll target found: "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lio/sentry/internal/gestures/b;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-array v1, p3, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-interface {p2, p4, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 92
    .line 93
    invoke-static {p2, p1}, Lio/sentry/android/core/internal/gestures/g$c;->h(Lio/sentry/android/core/internal/gestures/g$c;Lio/sentry/internal/gestures/b;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->g:Lio/sentry/android/core/internal/gestures/g$c;

    .line 97
    .line 98
    sget-object p2, Lio/sentry/android/core/internal/gestures/g$b;->Scroll:Lio/sentry/android/core/internal/gestures/g$b;

    .line 99
    .line 100
    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/g$c;->c(Lio/sentry/android/core/internal/gestures/g$c;Lio/sentry/android/core/internal/gestures/g$b;)Lio/sentry/android/core/internal/gestures/g$b;

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-string v0, "onSingleTapUp"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/g;->h(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sget-object v5, Lio/sentry/internal/gestures/b$a;->CLICKABLE:Lio/sentry/internal/gestures/b$a;

    .line 24
    .line 25
    invoke-static {v2, v0, v3, v4, v5}, Lio/sentry/android/core/internal/gestures/i;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/b$a;)Lio/sentry/internal/gestures/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 38
    .line 39
    const-string v2, "Unable to find click target. No breadcrumb captured."

    .line 40
    .line 41
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    sget-object v2, Lio/sentry/android/core/internal/gestures/g$b;->Click:Lio/sentry/android/core/internal/gestures/g$b;

    .line 48
    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {p0, v0, v2, v3, p1}, Lio/sentry/android/core/internal/gestures/g;->e(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/internal/gestures/g;->p(Lio/sentry/internal/gestures/b;Lio/sentry/android/core/internal/gestures/g$b;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return v1
.end method

.method q(Lio/sentry/p6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/z0;->d()Lio/sentry/p6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lio/sentry/z0;->g(Lio/sentry/p6;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 18
    .line 19
    invoke-interface {p1}, Lio/sentry/z0;->i()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->b:Lio/sentry/o0;

    .line 23
    .line 24
    new-instance v0, Lio/sentry/android/core/internal/gestures/c;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/gestures/c;-><init>(Lio/sentry/android/core/internal/gestures/g;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->e:Lio/sentry/a1;

    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->d:Lio/sentry/internal/gestures/b;

    .line 40
    .line 41
    :cond_2
    sget-object p1, Lio/sentry/android/core/internal/gestures/g$b;->Unknown:Lio/sentry/android/core/internal/gestures/g$b;

    .line 42
    .line 43
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/g;->f:Lio/sentry/android/core/internal/gestures/g$b;

    .line 44
    .line 45
    return-void
.end method
