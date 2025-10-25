.class public Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;
.super Lorg/apache/tika/pipes/fetcher/AbstractFetcher;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/config/Initializable;


# static fields
.field private static final LOG:Lmf/c;


# instance fields
.field private basePath:Ljava/nio/file/Path;

.field private extractFileSystemMetadata:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->LOG:Lmf/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/fetcher/AbstractFetcher;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->extractFileSystemMetadata:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/pipes/fetcher/fs/config/FileSystemFetcherConfig;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/tika/pipes/fetcher/AbstractFetcher;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->extractFileSystemMetadata:Z

    .line 7
    invoke-virtual {p1}, Lorg/apache/tika/pipes/fetcher/fs/config/FileSystemFetcherConfig;->getBasePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->setBasePath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/apache/tika/pipes/fetcher/fs/config/FileSystemFetcherConfig;->isExtractFileSystemMetadata()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->setExtractFileSystemMetadata(Z)V

    return-void
.end method

.method static isDescendant(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/apache/tika/pipes/fetcher/fs/e;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lorg/apache/tika/pipes/fetcher/fs/e;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1, p0}, Lorg/apache/tika/pipes/fetcher/fs/c;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private updateFileSystemMetadata(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->extractFileSystemMetadata:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Laf/u;->a()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Laf/e0;->a(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lorg/apache/tika/metadata/FileSystem;->CREATED:Lorg/apache/tika/metadata/Property;

    .line 18
    .line 19
    invoke-static {p1}, Laf/k0;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->updateFileTime(Lorg/apache/tika/metadata/Property;Ljava/nio/file/attribute/FileTime;Lorg/apache/tika/metadata/Metadata;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lorg/apache/tika/metadata/FileSystem;->MODIFIED:Lorg/apache/tika/metadata/Property;

    .line 27
    .line 28
    invoke-static {p1}, Laf/v;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->updateFileTime(Lorg/apache/tika/metadata/Property;Ljava/nio/file/attribute/FileTime;Lorg/apache/tika/metadata/Metadata;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lorg/apache/tika/metadata/FileSystem;->ACCESSED:Lorg/apache/tika/metadata/Property;

    .line 36
    .line 37
    invoke-static {p1}, Laf/c0;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->updateFileTime(Lorg/apache/tika/metadata/Property;Ljava/nio/file/attribute/FileTime;Lorg/apache/tika/metadata/Metadata;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private updateFileTime(Lorg/apache/tika/metadata/Property;Ljava/nio/file/attribute/FileTime;Lorg/apache/tika/metadata/Metadata;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/Date;

    .line 5
    .line 6
    invoke-static {p2}, Laf/b0;->a(Ljava/nio/file/attribute/FileTime;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1, v0}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/util/Date;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public checkInitialization(Lorg/apache/tika/config/InitializableProblemHandler;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-static {p1}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lorg/apache/tika/config/j;->a(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 17
    .line 18
    invoke-static {p1}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "http://"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 31
    .line 32
    invoke-static {p1}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "ftp://"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 45
    .line 46
    invoke-static {p1}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "s3://"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 59
    .line 60
    invoke-static {p1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "\u0000"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 78
    .line 79
    const-string v0, "base path must not contain \u0000. Seriously, what were you thinking?"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 86
    .line 87
    const-string v0, "FileSystemFetcher only works with local file systems.  Please use the tika-fetcher-s3 module"

    .line 88
    .line 89
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 94
    .line 95
    const-string v0, "FileSystemFetcher only works with local file systems.  Please consider contributing an ftp fetcher module"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 102
    .line 103
    const-string v0, "FileSystemFetcher only works with local file systems.  Please use the tika-fetcher-http module for http calls"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_5
    :goto_0
    sget-object p1, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->LOG:Lmf/c;

    .line 110
    .line 111
    const-string v0, "\'basePath\' has not been set. This means that client code or clients can read from any file that this process has permissions to read. If you are running tika-server, make absolutely certain that you\'ve locked down access to tika-server and file-permissions for the tika-server process."

    .line 112
    .line 113
    invoke-interface {p1, v0}, Lmf/c;->x(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public fetch(Ljava/lang/String;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/io/InputStream;
    .locals 4

    .line 1
    const-string p3, "\u0000"

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_4

    .line 8
    .line 9
    iget-object p3, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-static {p3, p1}, Lorg/apache/tika/pipes/fetcher/fs/a;->a(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 19
    .line 20
    invoke-static {p3, v1}, Lorg/apache/tika/pipes/fetcher/fs/b;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 25
    .line 26
    new-array v3, v0, [Ljava/nio/file/LinkOption;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lorg/apache/tika/pipes/fetcher/fs/b;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lorg/apache/tika/pipes/fetcher/fs/c;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "fetchKey must resolve to be a descendant of the \'basePath\'"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-array p3, v0, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, p3}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    :goto_0
    sget-object v1, Lorg/apache/tika/metadata/TikaCoreProperties;->SOURCE_PATH:Lorg/apache/tika/metadata/Property;

    .line 54
    .line 55
    invoke-virtual {p2, v1, p1}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p3, p2}, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->updateFileSystemMetadata(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)V

    .line 59
    .line 60
    .line 61
    new-array p1, v0, [Ljava/nio/file/LinkOption;

    .line 62
    .line 63
    invoke-static {p3, p1}, Lorg/apache/tika/config/a;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    new-array p2, v0, [Ljava/nio/file/LinkOption;

    .line 74
    .line 75
    invoke-static {p1, p2}, Lorg/apache/tika/pipes/fetcher/fs/d;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    new-instance p1, Ljava/io/IOException;

    .line 82
    .line 83
    iget-object p2, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 84
    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v0, "BasePath is not a directory: "

    .line 91
    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 107
    .line 108
    invoke-static {p3}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p2}, Lorg/apache/tika/detect/c;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    invoke-static {p3, p2}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    return-object p1

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string p2, "Path must not contain \'u0000\'. Please review the life decisions that led you to requesting a file name with this character in it."

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public getBasePath()Ljava/nio/file/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/config/Param;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {p1, v0}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->basePath:Ljava/nio/file/Path;

    .line 9
    .line 10
    return-void
.end method

.method public setExtractFileSystemMetadata(Z)V
    .locals 0
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/apache/tika/pipes/fetcher/fs/FileSystemFetcher;->extractFileSystemMetadata:Z

    .line 2
    .line 3
    return-void
.end method
