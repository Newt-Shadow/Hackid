.class Lcom/yandex/metrica/impl/ob/la$a;
.super Lcom/yandex/metrica/impl/ob/Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/metrica/impl/ob/la;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/la;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/Lm;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->b(Lcom/yandex/metrica/impl/ob/la;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lm;->isRunning()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/la;->c(Lcom/yandex/metrica/impl/ob/la;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 69
    .line 70
    .line 71
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_0

    .line 77
    .line 78
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/la$a;->b:Lcom/yandex/metrica/impl/ob/la;

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/la;->a(Lcom/yandex/metrica/impl/ob/la;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    throw v0

    .line 90
    :cond_2
    return-void

    .line 91
    :catchall_1
    move-exception v1

    .line 92
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    throw v1
.end method
