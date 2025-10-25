.class public Lcom/yandex/metrica/impl/ob/M6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/S6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/S6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/S6;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/M6;-><init>(Lcom/yandex/metrica/impl/ob/S6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/S6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/M6;->a:Lcom/yandex/metrica/impl/ob/S6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/z6;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/M6;->a:Lcom/yandex/metrica/impl/ob/S6;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/z6;->a:Lcom/yandex/metrica/impl/ob/B6;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/S6;->a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hf;->g:I

    .line 11
    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/hf$a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/hf$a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/z6;->b:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/hf$a;->a:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/z6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/M6;->a(Lcom/yandex/metrica/impl/ob/z6;)Lcom/yandex/metrica/impl/ob/hf;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/hf;

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
