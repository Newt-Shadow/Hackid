.class Lcom/yandex/metrica/impl/ob/qh;
.super Lcom/yandex/metrica/impl/ob/Ah;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Hh;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ah;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V

    .line 8
    .line 9
    .line 10
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/qh;->f:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ym;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ym;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qh;->f:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ym;->a([B)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-string v1, "HTTP/1.1 200 OK"

    .line 22
    .line 23
    :try_start_1
    new-instance v2, Lcom/yandex/metrica/impl/ob/qh$a;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/yandex/metrica/impl/ob/qh$a;-><init>(Lcom/yandex/metrica/impl/ob/qh;[B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lcom/yandex/metrica/impl/ob/Ah;->a(Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    return-void
.end method
