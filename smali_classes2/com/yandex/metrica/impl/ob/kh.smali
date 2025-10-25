.class public Lcom/yandex/metrica/impl/ob/kh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/lh;

.field private final b:Lcom/yandex/metrica/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/lh;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lh;-><init>()V

    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/kh;-><init>(Lcom/yandex/metrica/impl/ob/lh;Lcom/yandex/metrica/e;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/lh;Lcom/yandex/metrica/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kh;->a:Lcom/yandex/metrica/impl/ob/lh;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kh;->b:Lcom/yandex/metrica/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Jf$e$a;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh;->b:Lcom/yandex/metrica/e;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh;->a:Lcom/yandex/metrica/impl/ob/lh;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "id"

    :try_start_1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Jf$e$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "provided_request_schedule"

    .line 9
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Jf$e$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh;->b:Lcom/yandex/metrica/e;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh;->a:Lcom/yandex/metrica/impl/ob/lh;

    .line 2
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/lh;->a(Lcom/yandex/metrica/impl/ob/Jf$e$b;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "provided_request_result"

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/Jf$e$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kh;->b:Lcom/yandex/metrica/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kh;->a:Lcom/yandex/metrica/impl/ob/lh;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    const-string v2, "id"

    .line 14
    .line 15
    :try_start_1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Jf$e$a;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    const-string v1, "provided_request_send"

    .line 32
    .line 33
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
