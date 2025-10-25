.class public Lcom/yandex/metrica/impl/ob/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufStateStorage;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/R7;

.field private final c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

.field private final d:Lcom/yandex/metrica/core/api/ProtobufConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/R7;Lcom/yandex/metrica/core/api/ProtobufStateSerializer;Lcom/yandex/metrica/core/api/ProtobufConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l9;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/l9;->b:Lcom/yandex/metrica/impl/ob/R7;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/l9;->c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/l9;->d:Lcom/yandex/metrica/core/api/ProtobufConverter;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l9;->b:Lcom/yandex/metrica/impl/ob/R7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R7;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l9;->b:Lcom/yandex/metrica/impl/ob/R7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l9;->d:Lcom/yandex/metrica/core/api/ProtobufConverter;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/yandex/metrica/core/api/StateSerializer;->defaultValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->d:Lcom/yandex/metrica/core/api/ProtobufConverter;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l9;->c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    .line 31
    .line 32
    invoke-interface {v2, v0}, Lcom/yandex/metrica/core/api/StateSerializer;->toState([B)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v1, v0}, Lcom/yandex/metrica/core/api/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-object v0

    .line 41
    :catchall_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l9;->d:Lcom/yandex/metrica/core/api/ProtobufConverter;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/yandex/metrica/core/api/StateSerializer;->defaultValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l9;->b:Lcom/yandex/metrica/impl/ob/R7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/l9;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/l9;->c:Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/l9;->d:Lcom/yandex/metrica/core/api/ProtobufConverter;

    .line 8
    .line 9
    invoke-interface {v3, p1}, Lcom/yandex/metrica/core/api/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v2, p1}, Lcom/yandex/metrica/core/api/StateSerializer;->toByteArray(Ljava/lang/Object;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;[B)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
