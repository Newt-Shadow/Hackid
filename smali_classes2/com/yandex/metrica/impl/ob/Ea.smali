.class public Lcom/yandex/metrica/impl/ob/Ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


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
.method public a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Ol;->a(Ljava/math/BigDecimal;)Lxc/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/Nl;

    .line 6
    .line 7
    invoke-virtual {p1}, Lxc/k;->c()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1}, Lxc/k;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/Nl;-><init>(JI)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/yandex/metrica/impl/ob/mf$e;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/mf$e;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Nl;->b()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, p1, Lcom/yandex/metrica/impl/ob/mf$e;->a:J

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Nl;->a()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p1, Lcom/yandex/metrica/impl/ob/mf$e;->b:I

    .line 46
    .line 47
    return-object p1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ea;->a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/mf$e;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
