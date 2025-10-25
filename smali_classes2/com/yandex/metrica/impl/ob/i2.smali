.class public Lcom/yandex/metrica/impl/ob/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/metrica/CounterConfiguration$b;

.field private final d:Lcom/yandex/metrica/impl/ob/k2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration$b;Lcom/yandex/metrica/impl/ob/k2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/i2;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i2;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->g:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i2;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$b;->f:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i2;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 29
    .line 30
    :goto_0
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/i2;->d:Lcom/yandex/metrica/impl/ob/k2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i2;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i2;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i2;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->d(Lcom/yandex/metrica/CounterConfiguration$b;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i2;->d:Lcom/yandex/metrica/impl/ob/k2;

    .line 23
    .line 24
    new-instance v2, Lcom/yandex/metrica/impl/ob/Q1;

    .line 25
    .line 26
    new-instance v3, Lcom/yandex/metrica/impl/ob/A3;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/i2;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/A3;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3, v0, v5}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Q1;->c()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/k2;->a(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method
