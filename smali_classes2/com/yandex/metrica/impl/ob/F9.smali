.class public Lcom/yandex/metrica/impl/ob/F9;
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
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Wb;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/Wb;->a:J

    .line 9
    .line 10
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->a:J

    .line 11
    .line 12
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/Wb;->b:J

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->b:J

    .line 15
    .line 16
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Wb;

    .line 4
    .line 5
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->a:J

    .line 6
    .line 7
    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->b:J

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Wb;-><init>(JJ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
