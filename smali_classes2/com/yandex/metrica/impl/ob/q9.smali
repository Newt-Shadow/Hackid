.class public Lcom/yandex/metrica/impl/ob/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/StateSerializer;


# instance fields
.field private final a:Lcom/yandex/metrica/core/api/StateSerializer;

.field private final b:Lcom/yandex/metrica/impl/ob/wm;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/StateSerializer;Lcom/yandex/metrica/impl/ob/wm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q9;->a:Lcom/yandex/metrica/core/api/StateSerializer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q9;->b:Lcom/yandex/metrica/impl/ob/wm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q9;->a:Lcom/yandex/metrica/core/api/StateSerializer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/core/api/StateSerializer;->defaultValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toByteArray(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q9;->b:Lcom/yandex/metrica/impl/ob/wm;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/q9;->a:Lcom/yandex/metrica/core/api/StateSerializer;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/yandex/metrica/core/api/StateSerializer;->toByteArray(Ljava/lang/Object;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/wm;->a([B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    return-object p1
.end method

.method public toState([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q9;->b:Lcom/yandex/metrica/impl/ob/wm;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v2, v1}, Lcom/yandex/metrica/impl/ob/wm;->a([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q9;->a:Lcom/yandex/metrica/core/api/StateSerializer;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/StateSerializer;->toState([B)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/io/IOException;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
