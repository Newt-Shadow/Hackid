.class public Lcom/yandex/metrica/impl/ob/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/s2;

.field private final b:Lcom/yandex/metrica/impl/ob/mc;

.field private final c:Lcom/yandex/metrica/impl/ob/a8;

.field private final d:Lcom/yandex/metrica/impl/ob/ed;

.field private final e:Lcom/yandex/metrica/impl/ob/Fc;

.field private final f:Lcom/yandex/metrica/impl/ob/Pg;

.field private final g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

.field private final h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

.field private final i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

.field private final j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

.field private final k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

.field private l:J

.field private m:Lcom/yandex/metrica/impl/ob/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->a()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v4

    new-instance v6, Lcom/yandex/metrica/impl/ob/ed;

    move-object v0, p1

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/ed;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    new-instance v9, Lcom/yandex/metrica/impl/ob/Ql;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/Ql;-><init>()V

    new-instance v12, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;

    invoke-direct {v12}, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;-><init>()V

    move-object v7, v0

    move-object/from16 v8, p9

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v7 .. v12}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;Lcom/yandex/metrica/networktasks/api/Compressor;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;)V

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    move-object v11, v0

    .line 2
    invoke-direct/range {v1 .. v11}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/a8;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/a8;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Lcom/yandex/metrica/impl/ob/s2;

    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cd;->e:Lcom/yandex/metrica/impl/ob/Fc;

    .line 7
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 8
    invoke-interface {p9}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->z()Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/mc;

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    .line 12
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/cd;->f:Lcom/yandex/metrica/impl/ob/Pg;

    .line 13
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/cd;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 14
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 15
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 16
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->b()V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->A()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->f(Ljava/util/List;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/mc;

    .line 4
    .line 5
    iget v1, v1, Lcom/yandex/metrica/impl/ob/mc;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ed;->a(I)Lcom/yandex/metrica/impl/ob/dd;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->m:Lcom/yandex/metrica/impl/ob/dd;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/dd;->c:Lcom/yandex/metrica/impl/ob/pf;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/pf;->b:[Lcom/yandex/metrica/impl/ob/pf$a;

    .line 16
    .line 17
    array-length v1, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/pf;->a:[Lcom/yandex/metrica/impl/ob/pf$b;

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->c([B)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_1
    return v2
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a8;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->f:Lcom/yandex/metrica/impl/ob/Pg;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/Pg;->a(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, "LocationTask"

    return-object v0
.end method

.method public getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/gd;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/gd;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Lcom/yandex/metrica/impl/ob/s2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/s2;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public onPerformRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPostRequestComplete(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->a()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->m:Lcom/yandex/metrica/impl/ob/dd;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ed;->a(Lcom/yandex/metrica/impl/ob/dd;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->c(J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onRequestComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onRequestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->c(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onShouldNotExecute()V
    .locals 0

    return-void
.end method

.method public onSuccessfulTaskFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->e:Lcom/yandex/metrica/impl/ob/Fc;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Fc;->a()V

    .line 4
    .line 5
    .line 6
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
