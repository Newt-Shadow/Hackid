.class public Lcom/yandex/metrica/impl/ob/U9;
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
.method public a(Lcom/yandex/metrica/impl/ob/ci;)Lcom/yandex/metrica/impl/ob/If$p;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$p;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$p;-><init>()V

    .line 2
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ci;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$p;->a:J

    .line 3
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ci;->b:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$p;->b:J

    .line 4
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ci;->c:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$p;->c:J

    .line 5
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ci;->d:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$p;->d:J

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$p;)Lcom/yandex/metrica/impl/ob/ci;
    .locals 10

    .line 6
    new-instance v9, Lcom/yandex/metrica/impl/ob/ci;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/If$p;->a:J

    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/If$p;->b:J

    iget-wide v5, p1, Lcom/yandex/metrica/impl/ob/If$p;->c:J

    iget-wide v7, p1, Lcom/yandex/metrica/impl/ob/If$p;->d:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/ci;-><init>(JJJJ)V

    return-object v9
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ci;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/U9;->a(Lcom/yandex/metrica/impl/ob/ci;)Lcom/yandex/metrica/impl/ob/If$p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$p;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/U9;->a(Lcom/yandex/metrica/impl/ob/If$p;)Lcom/yandex/metrica/impl/ob/ci;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
