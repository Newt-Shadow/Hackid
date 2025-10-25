.class public Lcom/yandex/metrica/networktasks/api/NetworkTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/networktasks/api/d;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;

.field private final d:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;

.field private final e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

.field private final f:Ljava/util/List;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->a:Lcom/yandex/metrica/networktasks/api/d;

    iput-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->c:Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;

    iput-object p3, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->d:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;

    iput-object p4, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    iput-object p5, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->g:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Lcom/yandex/metrica/networktasks/api/d;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    filled-new-array {p1}, [Lcom/yandex/metrica/networktasks/api/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->b([Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs declared-synchronized b([Lcom/yandex/metrica/networktasks/api/d;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    .line 5
    .line 6
    array-length v2, p1

    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v2, :cond_a

    .line 10
    .line 11
    aget-object v5, p1, v4

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    packed-switch v5, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :pswitch_0
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->a:Lcom/yandex/metrica/networktasks/api/d;

    .line 24
    .line 25
    if-ne v1, v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 30
    .line 31
    if-eq v1, v5, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v3

    .line 35
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    goto :goto_5

    .line 40
    :pswitch_1
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->e:Lcom/yandex/metrica/networktasks/api/d;

    .line 41
    .line 42
    if-eq v1, v5, :cond_5

    .line 43
    .line 44
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    .line 45
    .line 46
    if-eq v1, v5, :cond_5

    .line 47
    .line 48
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->g:Lcom/yandex/metrica/networktasks/api/d;

    .line 49
    .line 50
    if-eq v1, v5, :cond_5

    .line 51
    .line 52
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->b:Lcom/yandex/metrica/networktasks/api/d;

    .line 53
    .line 54
    if-eq v1, v5, :cond_5

    .line 55
    .line 56
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->c:Lcom/yandex/metrica/networktasks/api/d;

    .line 57
    .line 58
    if-eq v1, v5, :cond_5

    .line 59
    .line 60
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->d:Lcom/yandex/metrica/networktasks/api/d;

    .line 61
    .line 62
    if-ne v1, v5, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 66
    .line 67
    if-ne v1, v5, :cond_8

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :pswitch_2
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->d:Lcom/yandex/metrica/networktasks/api/d;

    .line 71
    .line 72
    if-ne v1, v5, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 76
    .line 77
    if-ne v1, v5, :cond_8

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :pswitch_3
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->c:Lcom/yandex/metrica/networktasks/api/d;

    .line 81
    .line 82
    if-eq v1, v5, :cond_5

    .line 83
    .line 84
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->e:Lcom/yandex/metrica/networktasks/api/d;

    .line 85
    .line 86
    if-eq v1, v5, :cond_5

    .line 87
    .line 88
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    .line 89
    .line 90
    if-ne v1, v5, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 94
    .line 95
    if-ne v1, v5, :cond_8

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :pswitch_4
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->b:Lcom/yandex/metrica/networktasks/api/d;

    .line 99
    .line 100
    if-ne v1, v5, :cond_6

    .line 101
    .line 102
    :cond_5
    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 106
    .line 107
    if-ne v1, v5, :cond_8

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :pswitch_5
    sget-object v5, Lcom/yandex/metrica/networktasks/api/d;->a:Lcom/yandex/metrica/networktasks/api/d;

    .line 111
    .line 112
    if-ne v1, v5, :cond_7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    move v6, v3

    .line 116
    goto :goto_1

    .line 117
    :cond_8
    :goto_3
    :pswitch_6
    const/4 v5, 0x0

    .line 118
    goto :goto_5

    .line 119
    :goto_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    :goto_5
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_9

    .line 128
    .line 129
    move-object v0, v5

    .line 130
    goto :goto_6

    .line 131
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_a
    :goto_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    .line 144
    return p1

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    monitor-exit p0

    .line 147
    throw p1

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->c:Lcom/yandex/metrica/networktasks/api/IExecutionPolicy;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->d:Lcom/yandex/metrica/networktasks/api/ExponentialBackoffPolicy;

    return-object v0
.end method

.method public g()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->c:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onCreateTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->d:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->e()V

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->a()V

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onPerformRequest()V

    :cond_0
    return v0
.end method

.method public p()Z
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Lcom/yandex/metrica/networktasks/api/d;

    sget-object v1, Lcom/yandex/metrica/networktasks/api/d;->e:Lcom/yandex/metrica/networktasks/api/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v3, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->b([Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onRequestComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    :goto_0
    move v0, v2

    move v2, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onPostRequestComplete(Z)V

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onRequestError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->g:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onShouldNotExecute()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->b:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onTaskAdded()V

    :cond_0
    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    sget-object v1, Lcom/yandex/metrica/networktasks/api/d;->h:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onTaskFinished()V

    sget-object v1, Lcom/yandex/metrica/networktasks/api/d;->e:Lcom/yandex/metrica/networktasks/api/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onSuccessfulTaskFinished()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yandex/metrica/networktasks/api/d;->g:Lcom/yandex/metrica/networktasks/api/d;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onUnsuccessfulTaskFinished()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a(Lcom/yandex/metrica/networktasks/api/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->onTaskRemoved()V

    :cond_0
    return-void
.end method

.method public declared-synchronized v()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->e:Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;->getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->f:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/yandex/metrica/networktasks/api/NetworkTask$ShouldTryNextHostCondition;

    .line 41
    .line 42
    invoke-interface {v3, v1}, Lcom/yandex/metrica/networktasks/api/NetworkTask$ShouldTryNextHostCondition;->shouldTryNextHost(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    move v1, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v1, v5

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/api/NetworkTask;->a:Lcom/yandex/metrica/networktasks/api/d;

    .line 52
    .line 53
    sget-object v3, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 54
    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Lcom/yandex/metrica/networktasks/api/d;->h:Lcom/yandex/metrica/networktasks/api/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    move v4, v5

    .line 66
    :cond_2
    monitor-exit p0

    .line 67
    return v4

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    .line 70
    throw v0
.end method
