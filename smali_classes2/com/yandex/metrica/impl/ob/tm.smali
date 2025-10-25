.class public Lcom/yandex/metrica/impl/ob/tm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/metrica/impl/ob/B0;

.field private d:Ljava/io/File;

.field private e:Ljava/nio/channels/FileLock;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/nio/channels/FileChannel;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/tm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/B0;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tm;->a:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lock"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tm;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/tm;->c:Lcom/yandex/metrica/impl/ob/B0;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/tm;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tm;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/B0;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->d:Ljava/io/File;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/tm;->d:Ljava/io/File;

    .line 23
    .line 24
    const-string v2, "rw"

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->f:Ljava/io/RandomAccessFile;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->g:Ljava/nio/channels/FileChannel;

    .line 36
    .line 37
    iget v1, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->e:Ljava/nio/channels/FileLock;

    .line 46
    .line 47
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    iput v0, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "Cannot create lock file"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0

    .line 65
    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->d:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/yandex/metrica/impl/ob/tm;->h:I

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->e:Ljava/nio/channels/FileLock;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->f:Ljava/io/RandomAccessFile;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->g:Ljava/nio/channels/FileChannel;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->f:Ljava/io/RandomAccessFile;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->e:Ljava/nio/channels/FileLock;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->g:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0

    .line 43
    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/tm;->b()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tm;->d:Ljava/io/File;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method
