.class public Lcom/yandex/metrica/impl/ob/Jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;


# instance fields
.field private final a:Landroid/os/Looper;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/yandex/metrica/impl/ob/Km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Km;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Lcom/yandex/metrica/impl/ob/Km;Landroid/os/Looper;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Km;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jm;->c:Lcom/yandex/metrica/impl/ob/Km;

    .line 5
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Jm;->a:Landroid/os/Looper;

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Jm;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Km;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Jm;-><init>(Lcom/yandex/metrica/impl/ob/Km;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Km;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Mm;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Mm;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Mm;->b()Lcom/yandex/metrica/impl/ob/Km;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->a:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->c:Lcom/yandex/metrica/impl/ob/Km;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Km;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jm;->c:Lcom/yandex/metrica/impl/ob/Km;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Km;->stopRunning()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Jm;->b:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
