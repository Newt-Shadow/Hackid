.class public Lcom/yandex/metrica/impl/ob/H9;
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
.method public a(Lcom/yandex/metrica/impl/ob/ac;)Lcom/yandex/metrica/impl/ob/If$k$a$b$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;-><init>()V

    .line 2
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ac;->b:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->a:J

    .line 3
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/ac;->c:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->b:J

    .line 4
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ac;->a:Lcom/yandex/metrica/gpllibrary/a$b;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    .line 6
    :cond_0
    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->c:I

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$k$a$b$a;)Lcom/yandex/metrica/impl/ob/ac;
    .locals 7

    .line 7
    new-instance v6, Lcom/yandex/metrica/impl/ob/ac;

    iget v0, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/yandex/metrica/gpllibrary/a$b;->a:Lcom/yandex/metrica/gpllibrary/a$b;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/yandex/metrica/gpllibrary/a$b;->d:Lcom/yandex/metrica/gpllibrary/a$b;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/yandex/metrica/gpllibrary/a$b;->c:Lcom/yandex/metrica/gpllibrary/a$b;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/yandex/metrica/gpllibrary/a$b;->b:Lcom/yandex/metrica/gpllibrary/a$b;

    :goto_0
    move-object v1, v0

    .line 12
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->a:J

    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;->b:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/ac;-><init>(Lcom/yandex/metrica/gpllibrary/a$b;JJ)V

    return-object v6
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ac;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/H9;->a(Lcom/yandex/metrica/impl/ob/ac;)Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/H9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$b$a;)Lcom/yandex/metrica/impl/ob/ac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
