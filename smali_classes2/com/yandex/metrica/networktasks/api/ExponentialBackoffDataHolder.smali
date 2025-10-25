.class public Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/impl/g;

.field private final b:Lcom/yandex/metrica/networktasks/impl/h;

.field private final c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/networktasks/impl/h;

    invoke-direct {v0}, Lcom/yandex/metrica/networktasks/impl/h;-><init>()V

    new-instance v1, Lcom/yandex/metrica/networktasks/impl/g;

    invoke-direct {v1}, Lcom/yandex/metrica/networktasks/impl/g;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;-><init>(Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;Lcom/yandex/metrica/networktasks/impl/h;Lcom/yandex/metrica/networktasks/impl/g;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;Lcom/yandex/metrica/networktasks/impl/h;Lcom/yandex/metrica/networktasks/impl/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

    iput-object p2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->b:Lcom/yandex/metrica/networktasks/impl/h;

    iput-object p3, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->a:Lcom/yandex/metrica/networktasks/impl/g;

    invoke-interface {p1}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->getLastAttemptTimeSeconds()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->d:J

    invoke-interface {p1}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->getNextSendAttemptNumber()I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->d:J

    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->saveNextSendAttemptNumber(I)V

    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

    iget-wide v1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->d:J

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->saveLastAttemptTimeSeconds(J)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->b:Lcom/yandex/metrica/networktasks/impl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/16 v2, 0x3e8

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    div-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->d:J

    .line 15
    .line 16
    iget v2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    iput v2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

    .line 23
    .line 24
    invoke-interface {v2, v0, v1}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->saveLastAttemptTimeSeconds(J)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->c:Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;

    .line 28
    .line 29
    iget v1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;->saveNextSendAttemptNumber(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public c(Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->d:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v1, v2, v4

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->a:Lcom/yandex/metrica/networktasks/impl/g;

    .line 14
    .line 15
    iget v4, p1, Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;->b:I

    .line 16
    .line 17
    iget v5, p0, Lcom/yandex/metrica/networktasks/api/ExponentialBackoffDataHolder;->e:I

    .line 18
    .line 19
    sub-int/2addr v5, v0

    .line 20
    shl-int v5, v0, v5

    .line 21
    .line 22
    sub-int/2addr v5, v0

    .line 23
    mul-int/2addr v4, v5

    .line 24
    iget p1, p1, Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;->a:I

    .line 25
    .line 26
    if-gt v4, p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, p1

    .line 30
    :goto_0
    int-to-long v4, v4

    .line 31
    const-string v6, "last send attempt"

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/metrica/networktasks/impl/g;->a(JJLjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    :goto_1
    return v0
.end method
