.class public Lcom/yandex/metrica/impl/ob/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ri;

.field private b:Lcom/yandex/metrica/impl/ob/Ui;

.field private c:Lcom/yandex/metrica/impl/ob/gi;

.field private final d:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

.field private final e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

.field private final f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

.field private final g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

.field private final h:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/impl/ob/p2;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q2;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q2;->h:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/q2;->d:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 6
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/q2;->f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 7
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/q2;->e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/q2;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 9
    invoke-interface {p6}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/Mg;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Mg;->I()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->f(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V
    .locals 7

    .line 1
    new-instance v2, Lcom/yandex/metrica/impl/ob/p2;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/p2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/q2;-><init>(Lcom/yandex/metrica/impl/ob/ri;Lcom/yandex/metrica/impl/ob/p2;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Startup task for component: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q2;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ri;->a()Lcom/yandex/metrica/impl/ob/I3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->d:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/Mg;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->q()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->d:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    const-string v1, "encrypted"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Accept-Encoding"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/yandex/metrica/networktasks/api/RequestDataHolder;->g(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ri;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public onPerformRequest()V
    .locals 0

    return-void
.end method

.method public onPostRequestComplete(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/yandex/metrica/impl/ob/gi;->d:Lcom/yandex/metrica/impl/ob/gi;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public onRequestComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->h:Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q2;->f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;->handle(Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/yandex/metrica/impl/ob/Ui;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->b:Lcom/yandex/metrica/impl/ob/Ui;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/yandex/metrica/impl/ob/gi;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 4
    .line 5
    return-void
.end method

.method public onShouldNotExecute()V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/gi;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 4
    .line 5
    return-void
.end method

.method public onSuccessfulTaskFinished()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->b:Lcom/yandex/metrica/impl/ob/Ui;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->c()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q2;->b:Lcom/yandex/metrica/impl/ob/Ui;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/q2;->e:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/yandex/metrica/impl/ob/Mg;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/q2;->f:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->c()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Mg;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    :cond_0
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/gi;->b:Lcom/yandex/metrica/impl/ob/gi;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q2;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q2;->c:Lcom/yandex/metrica/impl/ob/gi;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/gi;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
