.class public final Lio/sentry/android/replay/capture/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/a;-><init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lio/sentry/android/replay/capture/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/sentry/android/replay/capture/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/a;Ljava/lang/String;Lio/sentry/android/replay/capture/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/sentry/android/replay/capture/a$d;->b:Lio/sentry/android/replay/capture/a;

    .line 2
    .line 3
    iput-object p3, p0, Lio/sentry/android/replay/capture/a$d;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lio/sentry/android/replay/capture/a$d;->d:Lio/sentry/android/replay/capture/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lio/sentry/android/replay/capture/a$d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    return-void
.end method

.method private final c(Lid/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/a$d;->b:Lio/sentry/android/replay/capture/a;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/android/replay/capture/a;->l(Lio/sentry/android/replay/capture/a;)Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->getMainThreadChecker()Lio/sentry/util/thread/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/sentry/util/thread/a;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/android/replay/capture/a$d;->b:Lio/sentry/android/replay/capture/a;

    .line 18
    .line 19
    invoke-static {v0}, Lio/sentry/android/replay/capture/a;->m(Lio/sentry/android/replay/capture/a;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lio/sentry/android/replay/capture/a$d;->b:Lio/sentry/android/replay/capture/a;

    .line 24
    .line 25
    invoke-static {v1}, Lio/sentry/android/replay/capture/a;->l(Lio/sentry/android/replay/capture/a;)Lio/sentry/s5;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lio/sentry/android/replay/capture/a$d$a;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lio/sentry/android/replay/capture/a$d$a;-><init>(Lid/a;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "CaptureStrategy.runInBackground"

    .line 35
    .line 36
    invoke-static {v0, v1, p1, v2}, Lio/sentry/android/replay/util/g;->h(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;
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
    iget-object v0, p0, Lio/sentry/android/replay/capture/a$d;->b:Lio/sentry/android/replay/capture/a;

    .line 46
    .line 47
    invoke-static {v0}, Lio/sentry/android/replay/capture/a;->l(Lio/sentry/android/replay/capture/a;)Lio/sentry/s5;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 56
    .line 57
    const-string v2, "Failed to execute task CaptureStrategy.runInBackground"

    .line 58
    .line 59
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p1, "property"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/android/replay/capture/a$d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public b(Ljava/lang/Object;Lpd/k;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string p1, "property"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/android/replay/capture/a$d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1, p3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lio/sentry/android/replay/capture/a$d$b;

    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/android/replay/capture/a$d;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lio/sentry/android/replay/capture/a$d;->d:Lio/sentry/android/replay/capture/a;

    .line 23
    .line 24
    invoke-direct {p2, v0, p1, p3, v1}, Lio/sentry/android/replay/capture/a$d$b;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Lio/sentry/android/replay/capture/a$d;->c(Lid/a;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
