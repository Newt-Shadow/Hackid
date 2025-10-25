.class Lcom/yandex/metrica/impl/ob/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lzb/a;)Lcom/yandex/metrica/impl/ob/xf$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/xf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/xf$a;-><init>()V

    .line 2
    iget-object v1, p1, Lzb/a;->a:Lzb/e;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 4
    :goto_0
    iput v2, v0, Lcom/yandex/metrica/impl/ob/xf$a;->a:I

    .line 5
    iget-object v1, p1, Lzb/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/xf$a;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lzb/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/xf$a;->c:Ljava/lang/String;

    .line 7
    iget-wide v1, p1, Lzb/a;->d:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/xf$a;->d:J

    .line 8
    iget-wide v1, p1, Lzb/a;->e:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/xf$a;->e:J

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/xf$a;)Lzb/a;
    .locals 9

    .line 9
    new-instance v8, Lzb/a;

    iget v0, p1, Lcom/yandex/metrica/impl/ob/xf$a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 10
    sget-object v0, Lzb/e;->c:Lzb/e;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lzb/e;->b:Lzb/e;

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lzb/e;->a:Lzb/e;

    :goto_0
    move-object v1, v0

    .line 13
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/xf$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/xf$a;->c:Ljava/lang/String;

    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/xf$a;->d:J

    iget-wide v6, p1, Lcom/yandex/metrica/impl/ob/xf$a;->e:J

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lzb/a;-><init>(Lzb/e;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v8
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzb/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/a3;->a(Lzb/a;)Lcom/yandex/metrica/impl/ob/xf$a;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/xf$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/a3;->a(Lcom/yandex/metrica/impl/ob/xf$a;)Lzb/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
