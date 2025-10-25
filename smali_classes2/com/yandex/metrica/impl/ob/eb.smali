.class public Lcom/yandex/metrica/impl/ob/eb;
.super Lcom/yandex/metrica/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/metrica/impl/ob/bb;

.field private final c:Lcom/yandex/metrica/impl/ob/Fa;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bb;Lcom/yandex/metrica/impl/ob/Fa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/ecommerce/ECommerceEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Lcom/yandex/metrica/impl/ob/bb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/eb;->c:Lcom/yandex/metrica/impl/ob/Fa;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPublicDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "shown screen info"

    return-object v0
.end method

.method public toProto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->c:Lcom/yandex/metrica/impl/ob/Fa;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/yandex/metrica/core/api/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ShownScreenInfoEvent{screen="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Lcom/yandex/metrica/impl/ob/bb;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", converter="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->c:Lcom/yandex/metrica/impl/ob/Fa;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
