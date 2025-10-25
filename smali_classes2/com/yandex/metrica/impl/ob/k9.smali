.class public Lcom/yandex/metrica/impl/ob/k9;
.super Lcom/yandex/metrica/impl/ob/h9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/h9;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Bf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Bf;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public toState([B)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Bf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Bf;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/ym/MessageNano;[B)Lcom/google/protobuf/nano/ym/MessageNano;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/yandex/metrica/impl/ob/Bf;

    .line 11
    .line 12
    return-object p1
.end method
