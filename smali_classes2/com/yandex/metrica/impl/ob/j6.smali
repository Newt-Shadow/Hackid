.class public final Lcom/yandex/metrica/impl/ob/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/g6;

.field private final c:Lcom/yandex/metrica/impl/ob/i6;

.field private final d:Lcom/yandex/metrica/impl/ob/R7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const-string v0, "session_extras"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/g6;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    .line 17
    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/i6;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/i6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ja;->a(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/R7;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "DatabaseStorageFactory.g\u2026Id\") !no-logs*/\n        }"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/Gf;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Gf;-><init>()V

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/ym/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/ym/MessageNano;[B)Lcom/google/protobuf/nano/ym/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Gf;

    const-string v2, "SessionExtrasProtobuf.Se\u2026ionExtras.parseFrom(data)"

    .line 6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/g6;->a(Lcom/yandex/metrica/impl/ob/Gf;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 8
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Gf;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g6;->a(Lcom/yandex/metrica/impl/ob/Gf;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/g6;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Gf;

    move-result-object p1

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    .line 15
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;[B)V

    return-void
.end method
