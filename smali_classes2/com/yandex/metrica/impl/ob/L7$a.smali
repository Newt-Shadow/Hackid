.class Lcom/yandex/metrica/impl/ob/L7$a;
.super Lcom/yandex/metrica/impl/ob/Lm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/L7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/L3;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/L7;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Lm;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L7$a;->b:Lcom/yandex/metrica/impl/ob/L3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lm;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/L7;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lm;->stopRunning()V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L7;->b(Lcom/yandex/metrica/impl/ob/L7;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    monitor-enter v0

    .line 34
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/L7;->c(Lcom/yandex/metrica/impl/ob/L7;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/L7;->c(Lcom/yandex/metrica/impl/ob/L7;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    .line 54
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/L7;->a(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    monitor-enter p0

    .line 61
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/content/ContentValues;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 83
    .line 84
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/L7;->a(Lcom/yandex/metrica/impl/ob/L7;Landroid/content/ContentValues;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L7$a;->c:Lcom/yandex/metrica/impl/ob/L7;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/L7;->d(Lcom/yandex/metrica/impl/ob/L7;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/yandex/metrica/impl/ob/nb;

    .line 117
    .line 118
    invoke-interface {v2, v0}, Lcom/yandex/metrica/impl/ob/nb;->a(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L7$a;->b:Lcom/yandex/metrica/impl/ob/L3;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ob;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    .line 130
    .line 131
    monitor-exit p0

    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :catchall_2
    move-exception v0

    .line 135
    monitor-exit p0

    .line 136
    throw v0

    .line 137
    :catchall_3
    move-exception v1

    .line 138
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 139
    throw v1

    .line 140
    :cond_3
    return-void
.end method
