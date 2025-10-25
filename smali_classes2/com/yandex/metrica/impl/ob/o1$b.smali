.class Lcom/yandex/metrica/impl/ob/o1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/o1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/o1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/yandex/metrica/IMetricaService$a;->a(Landroid/os/IBinder;)Lcom/yandex/metrica/IMetricaService;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/ob/o1;->a(Lcom/yandex/metrica/impl/ob/o1;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 11
    .line 12
    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/o1;->b(Lcom/yandex/metrica/impl/ob/o1;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/o1;->a(Lcom/yandex/metrica/impl/ob/o1;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 8
    .line 9
    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/o1$b;->a:Lcom/yandex/metrica/impl/ob/o1;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/o1;->c(Lcom/yandex/metrica/impl/ob/o1;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method
