.class public final Lio/sentry/android/replay/gestures/a$a;
.super Lio/sentry/android/replay/util/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/gestures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lio/sentry/s5;

.field private final c:Lio/sentry/android/replay/gestures/c;


# direct methods
.method public constructor <init>(Lio/sentry/s5;Lio/sentry/android/replay/gestures/c;Landroid/view/Window$Callback;)V
    .locals 1

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3}, Lio/sentry/android/replay/util/h;-><init>(Landroid/view/Window$Callback;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/android/replay/gestures/a$a;->b:Lio/sentry/s5;

    .line 10
    .line 11
    iput-object p2, p0, Lio/sentry/android/replay/gestures/a$a;->c:Lio/sentry/android/replay/gestures/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "obtainNoHistory(event)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/gestures/a$a;->c:Lio/sentry/android/replay/gestures/c;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lio/sentry/android/replay/gestures/c;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/replay/gestures/a$a;->b:Lio/sentry/s5;

    .line 25
    .line 26
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 31
    .line 32
    const-string v4, "Error dispatching touch event"

    .line 33
    .line 34
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/sentry/android/replay/util/h;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method
