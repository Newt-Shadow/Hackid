.class abstract Lcom/yandex/metrica/impl/ob/U1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/U1;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/U1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/U1;Lcom/yandex/metrica/impl/ob/U1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/U1$g;-><init>(Lcom/yandex/metrica/impl/ob/U1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/U1;->b(Lcom/yandex/metrica/impl/ob/U1;)Lcom/yandex/metrica/impl/ob/o1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/o1;->d()Lcom/yandex/metrica/IMetricaService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/U1$g;->a(Lcom/yandex/metrica/IMetricaService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 4
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/U1$g;->b()Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/C1;->a()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/U1$g;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method abstract a(Lcom/yandex/metrica/IMetricaService;)V
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/U1;->b(Lcom/yandex/metrica/impl/ob/U1;)Lcom/yandex/metrica/impl/ob/o1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o1;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/U1;->c(Lcom/yandex/metrica/impl/ob/U1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/U1;->b(Lcom/yandex/metrica/impl/ob/U1;)Lcom/yandex/metrica/impl/ob/o1;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/o1;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/U1;->c(Lcom/yandex/metrica/impl/ob/U1;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-wide/16 v2, 0x1388

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$g;->a:Lcom/yandex/metrica/impl/ob/U1;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/U1;->c(Lcom/yandex/metrica/impl/ob/U1;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    const/4 v0, 0x1

    .line 53
    return v0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/U1$g;->a()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
