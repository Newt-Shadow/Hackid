.class Lcom/yandex/metrica/impl/ob/U1$b;
.super Lcom/yandex/metrica/impl/ob/U1$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/U1;->queuePauseUserSession(Lcom/yandex/metrica/impl/ob/A3;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/metrica/impl/ob/A3;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/U1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/U1;Lcom/yandex/metrica/impl/ob/A3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U1$b;->c:Lcom/yandex/metrica/impl/ob/U1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/U1$b;->b:Lcom/yandex/metrica/impl/ob/A3;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/U1$g;-><init>(Lcom/yandex/metrica/impl/ob/U1;Lcom/yandex/metrica/impl/ob/U1$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/IMetricaService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U1$b;->c:Lcom/yandex/metrica/impl/ob/U1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/U1;->a(Lcom/yandex/metrica/impl/ob/U1;)Lcom/yandex/metrica/impl/ob/P0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U1$b;->b:Lcom/yandex/metrica/impl/ob/A3;

    .line 8
    .line 9
    check-cast v0, Lcom/yandex/metrica/impl/ob/T1;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    monitor-enter v1

    .line 20
    const-string v2, "PROCESS_CFG_OBJ"

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    invoke-interface {p1, v0}, Lcom/yandex/metrica/IMetricaService;->a(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v1

    .line 32
    throw p1
.end method
