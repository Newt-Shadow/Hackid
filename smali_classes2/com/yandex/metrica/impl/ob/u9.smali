.class public Lcom/yandex/metrica/impl/ob/u9;
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
.method public a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/wf$a;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/wf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/wf$a;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/z$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 4
    iput v1, v0, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    goto :goto_0

    .line 5
    :cond_1
    iput v3, v0, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    goto :goto_0

    .line 6
    :cond_2
    iput v4, v0, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    goto :goto_0

    .line 7
    :cond_3
    iput v3, v0, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    goto :goto_0

    .line 8
    :cond_4
    iput v2, v0, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    .line 9
    :cond_5
    :goto_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    iput v2, v0, Lcom/yandex/metrica/impl/ob/wf$a;->b:I

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 12
    iput p1, v0, Lcom/yandex/metrica/impl/ob/wf$a;->b:I

    :cond_7
    :goto_1
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/wf$a;)Lcom/yandex/metrica/impl/ob/z;
    .locals 4

    .line 13
    iget v0, p1, Lcom/yandex/metrica/impl/ob/wf$a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$a;->e:Lcom/yandex/metrica/impl/ob/z$a;

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$a;->d:Lcom/yandex/metrica/impl/ob/z$a;

    goto :goto_0

    .line 16
    :cond_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$a;->c:Lcom/yandex/metrica/impl/ob/z$a;

    goto :goto_0

    .line 17
    :cond_3
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$a;->b:Lcom/yandex/metrica/impl/ob/z$a;

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Lcom/yandex/metrica/impl/ob/z$a;->a:Lcom/yandex/metrica/impl/ob/z$a;

    .line 19
    :goto_0
    iget p1, p1, Lcom/yandex/metrica/impl/ob/wf$a;->b:I

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 21
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    :goto_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/z;

    invoke-direct {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/z;-><init>(Lcom/yandex/metrica/impl/ob/z$a;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/z;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/u9;->a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/wf$a;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/wf$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/u9;->a(Lcom/yandex/metrica/impl/ob/wf$a;)Lcom/yandex/metrica/impl/ob/z;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
