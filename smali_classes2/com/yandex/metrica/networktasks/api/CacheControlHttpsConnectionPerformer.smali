.class public Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/networktasks/api/a;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/networktasks/api/a;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;->a:Lcom/yandex/metrica/networktasks/api/a;

    iput-object p2, p0, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/networktasks/api/a;

    invoke-direct {v0}, Lcom/yandex/metrica/networktasks/api/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;-><init>(Lcom/yandex/metrica/networktasks/api/a;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;->a:Lcom/yandex/metrica/networktasks/api/a;

    .line 3
    .line 4
    invoke-interface {p2}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;->getOldETag()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1, v3}, Lcom/yandex/metrica/networktasks/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/metrica/network/Response;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/network/Response;->a()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0xc8

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 p1, 0x130

    .line 23
    .line 24
    if-eq v1, p1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-interface {p2}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;->onNotModified()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/network/Response;->d()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "ETag"

    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/List;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lez v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    :cond_2
    const-string v1, ""

    .line 60
    .line 61
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/network/Response;->e()[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, v1, p1}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;->onResponse(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 v0, 0x1

    .line 69
    :catchall_0
    :goto_1
    if-nez v0, :cond_4

    .line 70
    .line 71
    invoke-interface {p2}, Lcom/yandex/metrica/networktasks/api/CacheControlHttpsConnectionPerformer$Client;->onError()V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method
