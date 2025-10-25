.class public Lcom/yandex/metrica/impl/ob/K6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/J6;

.field private final b:Lcom/yandex/metrica/impl/ob/L6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/J6;

    new-instance v1, Lcom/yandex/metrica/impl/ob/V6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/V6;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/J6;-><init>(Lcom/yandex/metrica/impl/ob/V6;)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/L6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/L6;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/K6;-><init>(Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K6;->a:Lcom/yandex/metrica/impl/ob/J6;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K6;->b:Lcom/yandex/metrica/impl/ob/L6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/x6;)Lcom/yandex/metrica/impl/ob/ef;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ef;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K6;->a:Lcom/yandex/metrica/impl/ob/J6;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/x6;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/J6;->a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ef;->a:Lcom/yandex/metrica/impl/ob/df;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/x6;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/ef;->b:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K6;->b:Lcom/yandex/metrica/impl/ob/L6;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/x6;->c:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Lcom/yandex/metrica/impl/ob/ef;->c:I

    .line 31
    .line 32
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/x6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/K6;->a(Lcom/yandex/metrica/impl/ob/x6;)Lcom/yandex/metrica/impl/ob/ef;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/ef;

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
