.class public Lcom/yandex/metrica/impl/ob/Rh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/pi;",
            "Lcom/yandex/metrica/impl/ob/I;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, v0}, Lcom/yandex/metrica/impl/ob/r0;->a(Lcom/yandex/metrica/impl/ob/v0;)Lcom/yandex/metrica/impl/ob/v0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/v3$a;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/pi;->u()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method
