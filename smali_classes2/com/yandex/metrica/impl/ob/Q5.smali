.class public Lcom/yandex/metrica/impl/ob/Q5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/O5;

.field private final b:Lcom/yandex/metrica/impl/ob/P5;

.field private final c:Lcom/yandex/metrica/impl/ob/R7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/P5;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/P5;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/O5;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/O5;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ja;->a(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    const-string p2, "event_hashes"

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/Q5;-><init>(Lcom/yandex/metrica/impl/ob/P5;Lcom/yandex/metrica/impl/ob/O5;Lcom/yandex/metrica/impl/ob/R7;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/P5;Lcom/yandex/metrica/impl/ob/O5;Lcom/yandex/metrica/impl/ob/R7;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Q5;->b:Lcom/yandex/metrica/impl/ob/P5;

    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Q5;->a:Lcom/yandex/metrica/impl/ob/O5;

    .line 7
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Q5;->c:Lcom/yandex/metrica/impl/ob/R7;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/N5;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q5;->c:Lcom/yandex/metrica/impl/ob/R7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "event_hashes"

    :try_start_1
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q5;->a:Lcom/yandex/metrica/impl/ob/O5;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q5;->b:Lcom/yandex/metrica/impl/ob/P5;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/Af;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Af;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/Af;)Lcom/yandex/metrica/impl/ob/N5;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q5;->a:Lcom/yandex/metrica/impl/ob/O5;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q5;->b:Lcom/yandex/metrica/impl/ob/P5;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v2, Lcom/yandex/metrica/impl/ob/Af;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Af;-><init>()V

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/ym/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/ym/MessageNano;[B)Lcom/google/protobuf/nano/ym/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Af;

    .line 10
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/Af;)Lcom/yandex/metrica/impl/ob/N5;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 11
    :catchall_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q5;->a:Lcom/yandex/metrica/impl/ob/O5;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q5;->b:Lcom/yandex/metrica/impl/ob/P5;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v1, Lcom/yandex/metrica/impl/ob/Af;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Af;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/Af;)Lcom/yandex/metrica/impl/ob/N5;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/N5;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Q5;->c:Lcom/yandex/metrica/impl/ob/R7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q5;->b:Lcom/yandex/metrica/impl/ob/P5;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q5;->a:Lcom/yandex/metrica/impl/ob/O5;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/N5;)Lcom/yandex/metrica/impl/ob/Af;

    move-result-object p1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    const-string v1, "event_hashes"

    .line 18
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;[B)V

    return-void
.end method
