.class public Lcom/yandex/metrica/impl/ob/S1;
.super Lcom/yandex/metrica/impl/ob/w2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/yandex/metrica/impl/ob/L3;",
        ">",
        "Lcom/yandex/metrica/impl/ob/w2<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/Runnable;

.field private final f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/yi;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/yi;",
            "Lcom/yandex/metrica/core/api/executors/ICommonExecutor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/w2;-><init>(Lcom/yandex/metrica/impl/ob/P3;Lcom/yandex/metrica/impl/ob/yi;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/yandex/metrica/impl/ob/S1$a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/S1$a;-><init>(Lcom/yandex/metrica/impl/ob/S1;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/S1;->e:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/S1;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/S1;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S1;->e:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/w2;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->e()Lcom/yandex/metrica/impl/ob/P3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/yandex/metrica/impl/ob/L3;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->F()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->B()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "-1"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->e()Lcom/yandex/metrica/impl/ob/P3;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/yandex/metrica/impl/ob/L3;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/rd;->a(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->a()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->b()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->c(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :catchall_0
    :cond_1
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/w2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/w2;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/S1;->c()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->e()Lcom/yandex/metrica/impl/ob/P3;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/yandex/metrica/impl/ob/L3;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Lg;->G()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w2;->e()Lcom/yandex/metrica/impl/ob/P3;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/yandex/metrica/impl/ob/L3;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Lg;->G()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-long v2, v2

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/S1;->f:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/S1;->e:Ljava/lang/Runnable;

    .line 51
    .line 52
    invoke-interface {v3, v4, v1, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw v1
.end method
