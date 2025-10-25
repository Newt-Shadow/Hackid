.class public final Lcom/yandex/metrica/impl/ob/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/L0;->a:Lcom/yandex/metrica/impl/ob/B0;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 20
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    move-object v3, v2

    .line 22
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 24
    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 25
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 28
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-object v3, v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v3, v1

    .line 29
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v5, "error_during_file_reading"

    check-cast v4, Lcom/yandex/metrica/impl/ob/nh;

    :try_start_4
    invoke-virtual {v4, v5, v2}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 31
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 33
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 34
    throw v0

    :catch_1
    move-object v1, v0

    move-object v3, v1

    .line 35
    :catch_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 36
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    :cond_1
    :goto_2
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_2

    .line 37
    :try_start_5
    new-instance v0, Ljava/lang/String;

    const-string p0, "UTF-8"

    invoke-direct {v0, v2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 39
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v1

    .line 40
    check-cast v1, Lcom/yandex/metrica/impl/ob/nh;

    const-string v2, "read_share_file_with_unsupported_encoding"

    invoke-virtual {v1, v2, p0}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L0;->b([B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const/16 v0, 0x18

    .line 43
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :catchall_0
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 2

    const/4 p1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 56
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x1

    .line 60
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 62
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 63
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 64
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 65
    throw p0

    .line 66
    :catch_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 67
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/nio/channels/FileLock;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 13
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 14
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_2

    const v5, 0x7fffffff

    if-le v3, v5, :cond_1

    goto :goto_1

    :cond_1
    if-lez v4, :cond_0

    .line 15
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v3, v4

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 18
    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 7
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-object p0, v1

    :catchall_1
    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-object p0, v1

    :goto_0
    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_3
    move-exception v0

    .line 10
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 12
    throw v0
.end method

.method public static b([B)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    .line 7
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    move-object v2, v0

    .line 33
    :goto_0
    move-object v0, v1

    .line 34
    goto :goto_1

    .line 35
    :catchall_2
    move-exception p0

    .line 36
    move-object v2, v0

    .line 37
    :goto_1
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method
