.class public Lcom/yandex/metrica/impl/ob/Q1;
.super Lcom/yandex/metrica/impl/ob/z3;
.source "SourceFile"


# instance fields
.field protected c:Lcom/yandex/metrica/impl/ob/x0;

.field protected d:Lcom/yandex/metrica/impl/ob/ie;

.field private e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/z3;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Q1;->e:Z

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Q1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/x0;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/x0;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->c:Lcom/yandex/metrica/impl/ob/x0;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ie;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Q1;->d:Lcom/yandex/metrica/impl/ob/ie;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    check-cast p1, Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hi;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method c()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-enter v1

    .line 11
    const-string v2, "COUNTER_CFG_OBJ"

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    monitor-exit v1

    .line 17
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-enter v1

    .line 22
    const-string v2, "PROCESS_CFG_OBJ"

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v1

    .line 31
    throw v0

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    monitor-exit v1

    .line 34
    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->c:Lcom/yandex/metrica/impl/ob/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x0;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->e:Z

    .line 3
    .line 4
    return-void
.end method

.method h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Q1;->e:Z

    .line 3
    .line 4
    return-void
.end method
