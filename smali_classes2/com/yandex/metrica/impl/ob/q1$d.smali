.class Lcom/yandex/metrica/impl/ob/q1$d;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/q1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/q1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q1$d;->a:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q1$d;->a:Lcom/yandex/metrica/impl/ob/q1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q1$d;->a:Lcom/yandex/metrica/impl/ob/q1;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/q1;->a(Lcom/yandex/metrica/impl/ob/q1;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q1$d;->a:Lcom/yandex/metrica/impl/ob/q1;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/q1;->b(Lcom/yandex/metrica/impl/ob/q1;)Lcom/yandex/metrica/impl/ob/f1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/f1;->e()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q1$d;->a:Lcom/yandex/metrica/impl/ob/q1;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/q1;->c(Lcom/yandex/metrica/impl/ob/q1;)Lcom/yandex/metrica/impl/ob/p1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/B1;->a()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method
