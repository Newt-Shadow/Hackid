.class public final Lcom/yandex/metrica/impl/ob/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/JsonParser;
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final synthetic a:Lcom/yandex/metrica/core/api/JsonParser;

.field private final synthetic b:Lcom/yandex/metrica/core/api/Converter;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;->c()Lcom/yandex/metrica/core/api/JsonParser;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/core/api/JsonParser;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;->a()Lcom/yandex/metrica/core/api/Converter;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/core/api/Converter;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/core/api/JsonParser;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Parser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/core/api/Converter;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)[B
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/core/api/Converter;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/core/api/Converter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [B

    .line 8
    .line 9
    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hd;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/core/api/JsonParser;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Parser;->parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/core/api/Converter;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
