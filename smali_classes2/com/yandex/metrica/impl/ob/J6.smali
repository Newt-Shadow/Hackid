.class public Lcom/yandex/metrica/impl/ob/J6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/V6;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/V6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/J6;->a:Lcom/yandex/metrica/impl/ob/V6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/df;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/w6;->a:Lcom/yandex/metrica/impl/ob/E6;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/J6;->a:Lcom/yandex/metrica/impl/ob/V6;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/V6;->a(Lcom/yandex/metrica/impl/ob/E6;)Lcom/yandex/metrica/impl/ob/kf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

    .line 17
    .line 18
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/w6;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/kf;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/w6;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/yandex/metrica/impl/ob/E6;

    .line 46
    .line 47
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/J6;->a:Lcom/yandex/metrica/impl/ob/V6;

    .line 50
    .line 51
    invoke-virtual {v5, v3}, Lcom/yandex/metrica/impl/ob/V6;->a(Lcom/yandex/metrica/impl/ob/E6;)Lcom/yandex/metrica/impl/ob/kf;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    aput-object v3, v4, v2

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/w6;->c:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 65
    .line 66
    :cond_2
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/w6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/J6;->a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/df;

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
