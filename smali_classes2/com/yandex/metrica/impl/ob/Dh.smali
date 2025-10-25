.class public Lcom/yandex/metrica/impl/ob/Dh;
.super Lcom/yandex/metrica/impl/ob/Ah;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yandex/metrica/impl/ob/Ah;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ah;->d:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ah;->d:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "t"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    const-string v3, "HTTP/1.1 200 OK"

    .line 52
    .line 53
    invoke-virtual {p0, v3, v0, v2}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/lang/String;Ljava/util/Map;[B)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ah;->b:Lcom/yandex/metrica/impl/ob/Gh;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ah;->a:Ljava/net/Socket;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ah;->e:Lcom/yandex/metrica/impl/ob/Hh;

    .line 65
    .line 66
    check-cast v0, Lcom/yandex/metrica/impl/ob/Jh;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/util/Map;ILcom/yandex/metrica/impl/ob/Hh;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
