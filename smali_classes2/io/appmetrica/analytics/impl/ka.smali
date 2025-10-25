.class public final Lio/appmetrica/analytics/impl/ka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/nio/channels/FileLock;

.field public c:Ljava/io/RandomAccessFile;

.field public d:Ljava/nio/channels/FileChannel;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/ka;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/ka;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/appmetrica/analytics/impl/ka;->e:I

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ka;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lock"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/ka;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lock"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create lock file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ka;->a:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->c:Ljava/io/RandomAccessFile;

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->d:Ljava/nio/channels/FileChannel;

    .line 3
    iget v1, p0, Lio/appmetrica/analytics/impl/ka;->e:I

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->b:Ljava/nio/channels/FileLock;

    .line 5
    :cond_0
    iget v0, p0, Lio/appmetrica/analytics/impl/ka;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/ka;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ka;->a:Ljava/io/File;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lio/appmetrica/analytics/impl/ka;->e:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lio/appmetrica/analytics/impl/ka;->e:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ka;->b:Ljava/nio/channels/FileLock;

    .line 16
    .line 17
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/nio/channels/FileLock;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ka;->c:Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ka;->d:Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->c:Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->b:Ljava/nio/channels/FileLock;

    .line 34
    .line 35
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ka;->d:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method
