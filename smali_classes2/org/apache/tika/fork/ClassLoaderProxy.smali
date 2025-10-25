.class Lorg/apache/tika/fork/ClassLoaderProxy;
.super Ljava/lang/ClassLoader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/fork/ForkProxy;


# static fields
.field private static final serialVersionUID:J = -0x6559db2dc8e6a704L


# instance fields
.field private transient input:Ljava/io/DataInputStream;

.field private final notFound:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient output:Ljava/io/DataOutputStream;

.field private final resource:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->notFound:Ljava/util/Set;

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->resource:I

    .line 12
    .line 13
    return-void
.end method

.method private definePackageIfNecessary(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ClassLoaderProxy;->toPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/tika/fork/ClassLoaderProxy;->getDefinedPackage(Ljava/lang/String;)Ljava/lang/Package;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v0, p0

    .line 21
    invoke-virtual/range {v0 .. v8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private readStream()[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0xffff

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-array v1, v1, [B

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v3, v1, v4, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    throw v1
.end method

.method private toPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method


# virtual methods
.method protected declared-synchronized findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->resource:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 22
    .line 23
    const/16 v1, 0x2e

    .line 24
    .line 25
    const/16 v2, 0x2f

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ".class"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-direct {p0}, Lorg/apache/tika/fork/ClassLoaderProxy;->readStream()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    array-length v1, v0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, p1, v0, v2, v1}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0, p1, v0}, Lorg/apache/tika/fork/ClassLoaderProxy;->definePackageIfNecessary(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-object v0

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "Unable to find class "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_2
    new-instance v1, Ljava/lang/ClassNotFoundException;

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "Unable to load class "

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v1, p1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    .line 129
    throw p1
.end method

.method protected declared-synchronized findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->notFound:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 20
    .line 21
    iget v2, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->resource:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lorg/apache/tika/fork/ClassLoaderProxy;->readStream()[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lorg/apache/tika/fork/MemoryURLStreamHandler;->createURL([B)Ljava/net/URL;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    .line 59
    return-object p1

    .line 60
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->notFound:Ljava/util/Set;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-object v1

    .line 67
    :catch_0
    monitor-exit p0

    .line 68
    return-object v1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method protected declared-synchronized findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->resource:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-direct {p0}, Lorg/apache/tika/fork/ClassLoaderProxy;->readStream()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lorg/apache/tika/fork/MemoryURLStreamHandler;->createURL([B)Ljava/net/URL;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    return-object p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public init(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->input:Ljava/io/DataInputStream;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/tika/fork/ClassLoaderProxy;->output:Ljava/io/DataOutputStream;

    .line 4
    .line 5
    return-void
.end method
