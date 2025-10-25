.class public final Lio/sentry/backpressure/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/backpressure/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/o0;

.field private c:I


# direct methods
.method public constructor <init>(Lio/sentry/s5;Lio/sentry/o0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/sentry/backpressure/a;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/backpressure/a;->a:Lio/sentry/s5;

    .line 8
    .line 9
    iput-object p2, p0, Lio/sentry/backpressure/a;->b:Lio/sentry/o0;

    .line 10
    .line 11
    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/backpressure/a;->b:Lio/sentry/o0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/o0;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/backpressure/a;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/sentry/x0;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    int-to-long v1, p1

    .line 14
    invoke-interface {v0, p0, v1, v2}, Lio/sentry/x0;->c(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/backpressure/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method b()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/sentry/backpressure/a;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lio/sentry/backpressure/a;->c:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/backpressure/a;->a:Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 19
    .line 20
    const-string v3, "Health check positive, reverting to normal sampling."

    .line 21
    .line 22
    new-array v4, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput v1, p0, Lio/sentry/backpressure/a;->c:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v0, p0, Lio/sentry/backpressure/a;->c:I

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    if-ge v0, v1, :cond_2

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput v0, p0, Lio/sentry/backpressure/a;->c:I

    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/backpressure/a;->a:Lio/sentry/s5;

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 47
    .line 48
    iget v2, p0, Lio/sentry/backpressure/a;->c:I

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "Health check negative, downsampling with a factor of %d"

    .line 59
    .line 60
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/backpressure/a;->b()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/sentry/backpressure/a;->d(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/backpressure/a;->d(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
