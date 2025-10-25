.class public final Lcom/yandex/metrica/impl/ob/Rm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Rm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/nio/channels/FileLock;

.field private c:Ljava/nio/channels/FileChannel;

.field private final d:Ljava/io/File;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Rm;->g:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->f:Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, ".lock"

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rm;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 41
    .line 42
    const-string v2, "appmetrica_locks"

    .line 43
    .line 44
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    .line 51
    .line 52
    :cond_1
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->d:Ljava/io/File;

    .line 61
    .line 62
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Rm;
    .locals 3

    const-class v0, Lcom/yandex/metrica/impl/ob/Rm;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/Rm;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/Rm;

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Lcom/yandex/metrica/impl/ob/Rm;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/ob/Rm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->c:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rm;->d:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->e:Ljava/io/RandomAccessFile;

    .line 8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->c:Ljava/nio/channels/FileChannel;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->b:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lock file is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->f:Ljava/util/concurrent/Semaphore;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->f:Ljava/util/concurrent/Semaphore;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->b:Ljava/nio/channels/FileLock;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L0;->a(Ljava/nio/channels/FileLock;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->c:Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->e:Ljava/io/RandomAccessFile;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->c:Ljava/nio/channels/FileChannel;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Rm;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method
