.class public Lcom/yandex/metrica/impl/ob/B4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

.field private final b:Lcom/yandex/metrica/impl/ob/c0;

.field private final c:Lcom/yandex/metrica/impl/ob/E4;

.field private final d:Ldc/d;

.field private final e:Lcom/yandex/metrica/impl/ob/Ql;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/yandex/metrica/impl/ob/b8;

.field private final h:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

.field private final i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

.field private final j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

.field private final k:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/E4;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B4;->a:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/B4;->b:Lcom/yandex/metrica/impl/ob/c0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/B4;->c:Lcom/yandex/metrica/impl/ob/E4;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/B4;->g:Lcom/yandex/metrica/impl/ob/b8;

    .line 11
    .line 12
    new-instance p1, Ldc/c;

    .line 13
    .line 14
    invoke-direct {p1}, Ldc/c;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B4;->d:Ldc/d;

    .line 18
    .line 19
    new-instance p1, Lcom/yandex/metrica/impl/ob/Ql;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ql;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B4;->e:Lcom/yandex/metrica/impl/ob/Ql;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/B4;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/B4;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 29
    .line 30
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/B4;->k:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;

    .line 31
    .line 32
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/B4;->h:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-class p2, Lcom/yandex/metrica/impl/ob/B4;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, "@"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B4;->f:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->h:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public onCreateTask()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->a:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Lcom/yandex/metrica/impl/ob/D4;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Eg;->x()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/D4;->C()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move v0, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->h:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/D4;->C()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->f(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/C4;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B4;->b:Lcom/yandex/metrica/impl/ob/c0;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/B4;->c:Lcom/yandex/metrica/impl/ob/E4;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B4;->g:Lcom/yandex/metrica/impl/ob/b8;

    .line 50
    .line 51
    new-instance v5, Lcom/yandex/metrica/impl/ob/O3;

    .line 52
    .line 53
    invoke-direct {v5, v1}, Lcom/yandex/metrica/impl/ob/O3;-><init>(Lcom/yandex/metrica/impl/ob/b8;)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Lcom/yandex/metrica/impl/ob/cn;

    .line 57
    .line 58
    const/16 v1, 0x400

    .line 59
    .line 60
    const-string v7, "diagnostic event name"

    .line 61
    .line 62
    invoke-direct {v6, v1, v7}, Lcom/yandex/metrica/impl/ob/cn;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Lcom/yandex/metrica/impl/ob/cn;

    .line 66
    .line 67
    const v1, 0x32000

    .line 68
    .line 69
    .line 70
    const-string v8, "diagnostic event value"

    .line 71
    .line 72
    invoke-direct {v7, v1, v8}, Lcom/yandex/metrica/impl/ob/cn;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Ldc/c;

    .line 76
    .line 77
    invoke-direct {v8}, Ldc/c;-><init>()V

    .line 78
    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/C4;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D4;Lcom/yandex/metrica/impl/ob/E4;Lcom/yandex/metrica/impl/ob/O3;Lcom/yandex/metrica/impl/ob/cn;Lcom/yandex/metrica/impl/ob/cn;Ldc/d;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/C4;->a()[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B4;->e:Lcom/yandex/metrica/impl/ob/Ql;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Ql;->compress([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    const/4 v1, 0x0

    .line 96
    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 103
    .line 104
    const-string v2, "gzip"

    .line 105
    .line 106
    filled-new-array {v2}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "Content-Encoding"

    .line 111
    .line 112
    invoke-virtual {v0, v3, v2}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;->g(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v0, v1

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B4;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;->h([B)V

    .line 119
    .line 120
    .line 121
    return v9
.end method

.method public onPerformRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B4;->d:Ldc/d;

    .line 4
    .line 5
    invoke-interface {v1}, Ldc/d;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;->a(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPostRequestComplete(Z)V
    .locals 0

    return-void
.end method

.method public onRequestComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B4;->k:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B4;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;->handle(Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/yandex/metrica/networktasks/api/DefaultResponseParser$Response;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/yandex/metrica/networktasks/api/DefaultResponseParser$Response;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "accepted"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onShouldNotExecute()V
    .locals 0

    return-void
.end method

.method public onSuccessfulTaskFinished()V
    .locals 0

    return-void
.end method

.method public onTaskAdded()V
    .locals 0

    return-void
.end method

.method public onTaskFinished()V
    .locals 0

    return-void
.end method

.method public onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
