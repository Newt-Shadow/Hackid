.class public final Lio/appmetrica/analytics/impl/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lio/appmetrica/analytics/impl/e;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lio/appmetrica/analytics/impl/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 16
    .line 17
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 24
    .line 25
    iget-object v1, v0, Lio/appmetrica/analytics/impl/e;->c:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e;->f:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 33
    .line 34
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    if-lez v0, :cond_2

    .line 41
    .line 42
    :try_start_0
    sget-wide v1, Lio/appmetrica/analytics/impl/e;->g:J

    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 48
    .line 49
    iget-object v1, v1, Lio/appmetrica/analytics/impl/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    return-void

    .line 62
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 71
    .line 72
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lio/appmetrica/analytics/impl/c;

    .line 89
    .line 90
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/c;->onAppNotResponding()V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    :goto_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d;->b:Lio/appmetrica/analytics/impl/e;

    .line 95
    .line 96
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    .line 104
    :try_start_1
    sget-wide v0, Lio/appmetrica/analytics/impl/e;->g:J

    .line 105
    .line 106
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_1
    :cond_4
    return-void
.end method
