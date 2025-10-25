.class public Lcom/yandex/metrica/impl/ob/Ql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/Compressor;


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
.method public compress([B)[B
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->b([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public uncompress([B)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    .line 9
    .line 10
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 11
    .line 12
    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/io/InputStream;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    move-object v2, v0

    .line 30
    move-object v0, p1

    .line 31
    move-object p1, v2

    .line 32
    goto :goto_0

    .line 33
    :catchall_2
    move-exception p1

    .line 34
    move-object v1, v0

    .line 35
    move-object v0, p1

    .line 36
    move-object p1, v1

    .line 37
    :goto_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
