.class public final Lio/sentry/android/replay/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private final a:Lio/sentry/android/replay/u;

.field private final b:Lio/sentry/s5;

.field private final c:Lio/sentry/android/replay/util/i;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lio/sentry/android/replay/t;

.field private f:Ljava/lang/ref/WeakReference;

.field private final g:Lxc/d;

.field private final h:Lxc/d;

.field private final i:Landroid/graphics/Bitmap;

.field private final j:Lxc/d;

.field private final k:Lxc/d;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/u;Lio/sentry/s5;Lio/sentry/android/replay/util/i;Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/android/replay/t;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mainLooperHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "recorder"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/sentry/android/replay/s;->a:Lio/sentry/android/replay/u;

    .line 25
    .line 26
    iput-object p2, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 27
    .line 28
    iput-object p3, p0, Lio/sentry/android/replay/s;->c:Lio/sentry/android/replay/util/i;

    .line 29
    .line 30
    iput-object p4, p0, Lio/sentry/android/replay/s;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    iput-object p5, p0, Lio/sentry/android/replay/s;->e:Lio/sentry/android/replay/t;

    .line 33
    .line 34
    sget-object p2, Lxc/h;->c:Lxc/h;

    .line 35
    .line 36
    sget-object p3, Lio/sentry/android/replay/s$b;->e:Lio/sentry/android/replay/s$b;

    .line 37
    .line 38
    invoke-static {p2, p3}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    iput-object p3, p0, Lio/sentry/android/replay/s;->g:Lxc/d;

    .line 43
    .line 44
    sget-object p3, Lio/sentry/android/replay/s$d;->e:Lio/sentry/android/replay/s$d;

    .line 45
    .line 46
    invoke-static {p2, p3}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iput-object p3, p0, Lio/sentry/android/replay/s;->h:Lxc/d;

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/sentry/android/replay/u;->d()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    invoke-virtual {p1}, Lio/sentry/android/replay/u;->c()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    invoke-static {p3, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p3, "createBitmap(\n        co\u2026tmap.Config.RGB_565\n    )"

    .line 67
    .line 68
    invoke-static {p1, p3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    new-instance p1, Lio/sentry/android/replay/s$e;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lio/sentry/android/replay/s$e;-><init>(Lio/sentry/android/replay/s;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p2, p1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lio/sentry/android/replay/s;->j:Lxc/d;

    .line 83
    .line 84
    new-instance p1, Lio/sentry/android/replay/s$c;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lio/sentry/android/replay/s$c;-><init>(Lio/sentry/android/replay/s;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lio/sentry/android/replay/s;->k:Lxc/d;

    .line 94
    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    const/4 p3, 0x1

    .line 106
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lio/sentry/android/replay/s;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/replay/s;Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/s;->j(Lio/sentry/android/replay/s;Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/replay/s;Lio/sentry/android/replay/viewhierarchy/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/replay/s;->l(Lio/sentry/android/replay/s;Lio/sentry/android/replay/viewhierarchy/b;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/replay/s;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/s;->k(Lio/sentry/android/replay/s;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic d(Lio/sentry/android/replay/s;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/s;->n(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Lio/sentry/android/replay/s;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/s;->p()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lio/sentry/android/replay/s;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lio/sentry/android/replay/s;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/s;->r()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lio/sentry/android/replay/s;Landroid/view/Window;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    new-instance v2, Lio/sentry/android/replay/q;

    .line 15
    .line 16
    invoke-direct {v2, p0, p2}, Lio/sentry/android/replay/q;-><init>(Lio/sentry/android/replay/s;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lio/sentry/android/replay/s;->c:Lio/sentry/android/replay/util/i;

    .line 20
    .line 21
    invoke-virtual {p2}, Lio/sentry/android/replay/util/i;->a()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, v1, v2, p2}, Lhb/c;->a(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
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
    iget-object p2, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 31
    .line 32
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 37
    .line 38
    const-string v2, "Failed to capture replay recording"

    .line 39
    .line 40
    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private static final k(Lio/sentry/android/replay/s;Landroid/view/View;I)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v2, "Failed to capture replay recording: %d"

    .line 26
    .line 27
    invoke-interface {p1, v1, v2, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object p2, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 45
    .line 46
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v1, "Failed to determine view hierarchy, not capturing"

    .line 53
    .line 54
    new-array v2, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    sget-object p2, Lio/sentry/android/replay/viewhierarchy/b;->m:Lio/sentry/android/replay/viewhierarchy/b$a;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 69
    .line 70
    invoke-virtual {p2, p1, v1, v0, v2}, Lio/sentry/android/replay/viewhierarchy/b$a;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/b;ILio/sentry/s5;)Lio/sentry/android/replay/viewhierarchy/b;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 75
    .line 76
    invoke-static {p1, p2, v0}, Lio/sentry/android/replay/util/n;->h(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/b;Lio/sentry/s5;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lio/sentry/android/replay/s;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    .line 81
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 82
    .line 83
    new-instance v1, Lio/sentry/android/replay/r;

    .line 84
    .line 85
    invoke-direct {v1, p0, p2}, Lio/sentry/android/replay/r;-><init>(Lio/sentry/android/replay/s;Lio/sentry/android/replay/viewhierarchy/b;)V

    .line 86
    .line 87
    .line 88
    const-string p0, "screenshot_recorder.mask"

    .line 89
    .line 90
    invoke-static {p1, v0, p0, v1}, Lio/sentry/android/replay/util/g;->h(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final l(Lio/sentry/android/replay/s;Lio/sentry/android/replay/viewhierarchy/b;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$viewHierarchy"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Canvas;

    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lio/sentry/android/replay/s;->q()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lio/sentry/android/replay/s$a;

    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lio/sentry/android/replay/s$a;-><init>(Lio/sentry/android/replay/s;Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lio/sentry/android/replay/viewhierarchy/b;->h(Lid/l;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lio/sentry/android/replay/s;->e:Lio/sentry/android/replay/t;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lio/sentry/android/replay/t;->g(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final n(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/sentry/android/replay/s;->q()Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lio/sentry/android/replay/s;->s()Landroid/graphics/Canvas;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lio/sentry/android/replay/s;->r()Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method private final p()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->g:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    return-object v0
.end method

.method private final q()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->k:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Matrix;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->h:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s()Landroid/graphics/Canvas;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->j:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Canvas;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final h(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/s;->v(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-static {p1, p0}, Lio/sentry/android/replay/util/n;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 17
    .line 18
    const-string v3, "ScreenshotRecorder is paused, not capturing screenshot"

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/android/replay/s;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 49
    .line 50
    const-string v3, "Content hasn\'t changed, repeating last known frame"

    .line 51
    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/sentry/android/replay/s;->e:Lio/sentry/android/replay/t;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lio/sentry/android/replay/t;->g(Landroid/graphics/Bitmap;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/View;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_0
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-lez v2, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-lez v2, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v0}, Lio/sentry/android/replay/a0;->a(Landroid/view/View;)Landroid/view/Window;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 107
    .line 108
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 113
    .line 114
    const-string v3, "Window is invalid, not capturing screenshot"

    .line 115
    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    iget-object v1, p0, Lio/sentry/android/replay/s;->c:Lio/sentry/android/replay/util/i;

    .line 123
    .line 124
    new-instance v3, Lio/sentry/android/replay/p;

    .line 125
    .line 126
    invoke-direct {v3, p0, v2, v0}, Lio/sentry/android/replay/p;-><init>(Lio/sentry/android/replay/s;Landroid/view/Window;Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Lio/sentry/android/replay/util/i;->b(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    :goto_1
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 134
    .line 135
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 140
    .line 141
    const-string v3, "Root view is invalid, not capturing screenshot"

    .line 142
    .line 143
    new-array v1, v1, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/s;->v(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/s;->i:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/android/replay/s;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final o()Lio/sentry/android/replay/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->a:Lio/sentry/android/replay/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDraw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/s;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/android/replay/s;->b:Lio/sentry/s5;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v3, "Root view is invalid, not capturing screenshot"

    .line 53
    .line 54
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/View;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/s;->v(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/s;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p0}, Lio/sentry/android/replay/util/n;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/s;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p0}, Lio/sentry/android/replay/util/n;->f(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method
