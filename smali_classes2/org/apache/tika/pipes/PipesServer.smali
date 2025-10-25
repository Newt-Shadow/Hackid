.class public Lorg/apache/tika/pipes/PipesServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;,
        Lorg/apache/tika/pipes/PipesServer$STATUS;
    }
.end annotation


# static fields
.field private static final LOG:Lmf/c;

.field public static final TIMEOUT_EXIT_CODE:I = 0x11


# instance fields
.field private autoDetectParser:Lorg/apache/tika/parser/Parser;

.field private checkForTimeoutMs:J

.field private detector:Lorg/apache/tika/detect/Detector;

.field private digester:Lorg/apache/tika/parser/DigestingParser$Digester;

.field private emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

.field private fetcherManager:Lorg/apache/tika/pipes/fetcher/FetcherManager;

.field private final input:Ljava/io/DataInputStream;

.field private final lock:[Ljava/lang/Object;

.field private final maxForEmitBatchBytes:J

.field private final output:Ljava/io/DataOutputStream;

.field private volatile parsing:Z

.field private rMetaParser:Lorg/apache/tika/parser/Parser;

.field private final serverParseTimeoutMillis:J

.field private final serverWaitTimeoutMillis:J

.field private volatile since:J

.field private tikaConfig:Lorg/apache/tika/config/TikaConfig;

.field private final tikaConfigPath:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/tika/pipes/PipesServer;

    .line 2
    .line 3
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/io/InputStream;Ljava/io/PrintStream;JJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 8
    .line 9
    const-wide/16 v1, 0x3e8

    .line 10
    .line 11
    iput-wide v1, p0, Lorg/apache/tika/pipes/PipesServer;->checkForTimeoutMs:J

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfigPath:Ljava/nio/file/Path;

    .line 14
    .line 15
    new-instance p1, Ljava/io/DataInputStream;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->input:Ljava/io/DataInputStream;

    .line 21
    .line 22
    new-instance p1, Ljava/io/DataOutputStream;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    .line 28
    .line 29
    iput-wide p4, p0, Lorg/apache/tika/pipes/PipesServer;->maxForEmitBatchBytes:J

    .line 30
    .line 31
    iput-wide p6, p0, Lorg/apache/tika/pipes/PipesServer;->serverParseTimeoutMillis:J

    .line 32
    .line 33
    iput-wide p8, p0, Lorg/apache/tika/pipes/PipesServer;->serverWaitTimeoutMillis:J

    .line 34
    .line 35
    iput-boolean v0, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 42
    .line 43
    return-void
.end method

.method private _preParse(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->digester:Lorg/apache/tika/parser/DigestingParser$Digester;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p2, p3, p4}, Lorg/apache/tika/parser/DigestingParser$Digester;->digest(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "problem digesting: "

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2, v0}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->detector:Lorg/apache/tika/detect/Detector;

    .line 37
    .line 38
    invoke-interface {v0, p2, p3}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "Content-Type"

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p3, v1, v2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTENT_TYPE_PARSER_OVERRIDE:Lorg/apache/tika/metadata/Property;

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p3, v1, v0}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "problem detecting: "

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {v1, p1, v0}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    const-class p1, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 89
    .line 90
    invoke-virtual {p4, p1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->isIncludeOriginal()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    const-class p1, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 105
    .line 106
    invoke-virtual {p4, p1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 111
    .line 112
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/tika/io/TikaInputStream;->getPath()Ljava/nio/file/Path;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const/4 p4, 0x0

    .line 117
    new-array v0, p4, [Ljava/nio/file/OpenOption;

    .line 118
    .line 119
    invoke-static {p2, v0}, Lorg/apache/tika/config/b;->a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 120
    .line 121
    .line 122
    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :try_start_3
    invoke-interface {p1, p4, p3, p2}, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;->add(ILorg/apache/tika/metadata/Metadata;Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    if-eqz p2, :cond_1

    .line 134
    .line 135
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catchall_1
    move-exception p2

    .line 140
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 144
    :catch_2
    move-exception p1

    .line 145
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 146
    .line 147
    const-string p3, "problem reading source file into embedded document byte store"

    .line 148
    .line 149
    invoke-interface {p2, p3, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_3
    return-void
.end method

.method private actuallyParse(Lorg/apache/tika/pipes/FetchEmitTuple;)V
    .locals 8

    .line 1
    const-string v0, "problem closing embedded document byte store"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->getFetcher(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/pipes/fetcher/Fetcher;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v4, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 15
    .line 16
    invoke-interface {v4}, Lmf/c;->n()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    sub-long/2addr v5, v1

    .line 27
    const-string v1, "timer -- got fetcher: {}ms"

    .line 28
    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v4, v1, v2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lorg/apache/tika/pipes/PipesServer;->parseFromTuple(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/fetcher/Fetcher;)Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-interface {v4}, Lmf/c;->n()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const-string v5, "timer -- to parse: {} ms"

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    sub-long/2addr v6, v1

    .line 57
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v4, v5, v1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {p0, v1}, Lorg/apache/tika/pipes/PipesServer;->metadataIsEmpty(Ljava/util/List;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-direct {p0, p1, v3}, Lorg/apache/tika/pipes/PipesServer;->emitParseData(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->hasEmbeddedDocumentByteStore()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    instance-of p1, p1, Ljava/io/Closeable;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 104
    .line 105
    invoke-interface {v1, v0, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    return-void

    .line 109
    :cond_5
    :goto_1
    :try_start_3
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->EMPTY_OUTPUT:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 110
    .line 111
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->hasEmbeddedDocumentByteStore()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    instance-of p1, p1, Ljava/io/Closeable;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_1
    move-exception p1

    .line 139
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 140
    .line 141
    invoke-interface {v1, v0, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    return-void

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_3

    .line 147
    :catchall_1
    move-exception p1

    .line 148
    const/4 v3, 0x0

    .line 149
    :goto_3
    if-eqz v3, :cond_7

    .line 150
    .line 151
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->hasEmbeddedDocumentByteStore()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    instance-of v1, v1, Ljava/io/Closeable;

    .line 162
    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getEmbeddedDocumentBytesHandler()Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catch_2
    move-exception v1

    .line 174
    sget-object v2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 175
    .line 176
    invoke-interface {v2, v0, v1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_4
    throw p1
.end method

.method private emit(Ljava/lang/String;Lorg/apache/tika/pipes/emitter/EmitKey;ZLorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;Ljava/lang/String;Lorg/apache/tika/parser/ParseContext;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/apache/tika/pipes/emitter/EmitKey;->getEmitterName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/tika/pipes/emitter/EmitterManager;->getEmitter(Ljava/lang/String;)Lorg/apache/tika/pipes/emitter/Emitter;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p4}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->toBePackagedForStreamEmitter()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/tika/pipes/PipesServer;->emitContentsAndBytes(Lorg/apache/tika/pipes/emitter/Emitter;Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Lorg/apache/tika/pipes/emitter/EmitKey;->getEmitKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p4}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-interface {p1, p2, p3, p6}, Lorg/apache/tika/pipes/emitter/Emitter;->emit(Ljava/lang/String;Ljava/util/List;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/tika/pipes/emitter/TikaEmitterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {p5}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->EMIT_SUCCESS:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->EMIT_SUCCESS_PARSE_EXCEPTION:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 47
    .line 48
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {p5, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    :goto_2
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 62
    .line 63
    const-string p3, "emit exception"

    .line 64
    .line 65
    invoke-interface {p2, p3, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object p2, Lorg/apache/tika/pipes/PipesServer$STATUS;->EMIT_EXCEPTION:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 79
    .line 80
    invoke-direct {p0, p2, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_2
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->getNoEmitterMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 89
    .line 90
    invoke-interface {p2, p1}, Lmf/c;->x(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p2, Lorg/apache/tika/pipes/PipesServer$STATUS;->EMITTER_NOT_FOUND:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 94
    .line 95
    invoke-direct {p0, p2, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private emitContentsAndBytes(Lorg/apache/tika/pipes/emitter/Emitter;Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V
    .locals 1

    .line 1
    instance-of p2, p1, Lorg/apache/tika/pipes/emitter/StreamEmitter;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "The emitter for embedded document byte store must be a StreamEmitter. I see: "

    .line 17
    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 33
    .line 34
    const-string p2, "this is not yet implemented"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method private emitParseData(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {p0, p1, v2}, Lorg/apache/tika/pipes/PipesServer;->getContainerStacktrace(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/util/List;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, p1, v2}, Lorg/apache/tika/pipes/PipesServer;->filterMetadata(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/apache/tika/pipes/PipesServer;->filterMetadataList(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getOnParseException()Lorg/apache/tika/pipes/FetchEmitTuple$ON_PARSE_EXCEPTION;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-class v3, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 32
    .line 33
    invoke-virtual {v9, v3}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 38
    .line 39
    invoke-static {v8}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    sget-object v4, Lorg/apache/tika/pipes/FetchEmitTuple$ON_PARSE_EXCEPTION;->EMIT:Lorg/apache/tika/pipes/FetchEmitTuple$ON_PARSE_EXCEPTION;

    .line 46
    .line 47
    if-ne v2, v4, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->PARSE_EXCEPTION_NO_EMIT:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 51
    .line 52
    invoke-direct {p0, p1, v8}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getMetadata()Lorg/apache/tika/metadata/Metadata;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {p0, v2, v4}, Lorg/apache/tika/pipes/PipesServer;->injectUserMetadata(Lorg/apache/tika/metadata/Metadata;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getEmitKey()Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lorg/apache/tika/pipes/emitter/EmitKey;->getEmitKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    new-instance v4, Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 83
    .line 84
    invoke-virtual {v2}, Lorg/apache/tika/pipes/emitter/EmitKey;->getEmitterName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getFetchKey()Lorg/apache/tika/pipes/fetcher/FetchKey;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lorg/apache/tika/pipes/fetcher/FetchKey;->getFetchKey()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-direct {v4, v2, v5}, Lorg/apache/tika/pipes/emitter/EmitKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v4}, Lorg/apache/tika/pipes/FetchEmitTuple;->setEmitKey(Lorg/apache/tika/pipes/emitter/EmitKey;)V

    .line 100
    .line 101
    .line 102
    move-object v5, v4

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object v5, v2

    .line 105
    :goto_1
    new-instance v2, Lorg/apache/tika/pipes/emitter/EmitData;

    .line 106
    .line 107
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getEmitKey()Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->getMetadataList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-direct {v2, v4, v6, v8}, Lorg/apache/tika/pipes/emitter/EmitData;-><init>(Lorg/apache/tika/pipes/emitter/EmitKey;Ljava/util/List;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->isExtractEmbeddedDocumentBytes()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->toBePackagedForStreamEmitter()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3}, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->isExtractEmbeddedDocumentBytes()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    move-object v3, p0

    .line 139
    move-object v7, p2

    .line 140
    invoke-direct/range {v3 .. v9}, Lorg/apache/tika/pipes/PipesServer;->emit(Ljava/lang/String;Lorg/apache/tika/pipes/emitter/EmitKey;ZLorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;Ljava/lang/String;Lorg/apache/tika/parser/ParseContext;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-wide v6, p0, Lorg/apache/tika/pipes/PipesServer;->maxForEmitBatchBytes:J

    .line 145
    .line 146
    const-wide/16 v10, 0x0

    .line 147
    .line 148
    cmp-long v4, v6, v10

    .line 149
    .line 150
    if-ltz v4, :cond_4

    .line 151
    .line 152
    invoke-virtual {v2}, Lorg/apache/tika/pipes/emitter/EmitData;->getEstimatedSizeBytes()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    iget-wide v10, p0, Lorg/apache/tika/pipes/PipesServer;->maxForEmitBatchBytes:J

    .line 157
    .line 158
    cmp-long v4, v6, v10

    .line 159
    .line 160
    if-ltz v4, :cond_4

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3}, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->isExtractEmbeddedDocumentBytes()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    move-object v3, p0

    .line 171
    move-object v7, p2

    .line 172
    invoke-direct/range {v3 .. v9}, Lorg/apache/tika/pipes/PipesServer;->emit(Ljava/lang/String;Lorg/apache/tika/pipes/emitter/EmitKey;ZLorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;Ljava/lang/String;Lorg/apache/tika/parser/ParseContext;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/emitter/EmitData;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    sget-object p1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 180
    .line 181
    invoke-interface {p1}, Lmf/c;->n()Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_5

    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    sub-long/2addr v2, v0

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    const-string v0, "timer -- emitted: {} ms"

    .line 197
    .line 198
    invoke-interface {p1, v0, p2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_3
    return-void
.end method

.method private exit(I)V
    .locals 3

    .line 1
    const-string v0, "exiting: {}"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Lmf/c;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v0, v2}, Lmf/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private filterMetadata(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Lorg/apache/tika/metadata/filter/MetadataFilter;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/apache/tika/metadata/filter/MetadataFilter;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfig:Lorg/apache/tika/config/TikaConfig;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMetadataFilter()Lorg/apache/tika/metadata/filter/MetadataFilter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/apache/tika/metadata/Metadata;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/apache/tika/metadata/filter/MetadataFilter;->filter(Lorg/apache/tika/metadata/Metadata;)V
    :try_end_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 43
    .line 44
    const-string v2, "failed to filter metadata"

    .line 45
    .line 46
    invoke-interface {v1, v2, v0}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method private filterMetadataList(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Lorg/apache/tika/metadata/listfilter/MetadataListFilter;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/apache/tika/metadata/listfilter/MetadataListFilter;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfig:Lorg/apache/tika/config/TikaConfig;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMetadataListFilter()Lorg/apache/tika/metadata/listfilter/MetadataListFilter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    instance-of v0, p1, Lorg/apache/tika/metadata/listfilter/NoOpListFilter;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;->filter(Lorg/apache/tika/metadata/listfilter/MetadataListFilter;)V
    :try_end_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 32
    .line 33
    const-string v0, "failed to filter metadata list"

    .line 34
    .line 35
    invoke-interface {p2, v0, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private getContainerStacktrace(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tika/pipes/PipesServer;->metadataIsEmpty(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lorg/apache/tika/metadata/Metadata;

    .line 16
    .line 17
    sget-object p2, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTAINER_EXCEPTION:Lorg/apache/tika/metadata/Property;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/apache/tika/metadata/Metadata;->get(Lorg/apache/tika/metadata/Property;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    :cond_1
    return-object v0
.end method

.method private getFetcher(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/pipes/fetcher/Fetcher;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->fetcherManager:Lorg/apache/tika/pipes/fetcher/FetcherManager;

    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getFetchKey()Lorg/apache/tika/pipes/fetcher/FetchKey;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lorg/apache/tika/pipes/fetcher/FetchKey;->getFetcherName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lorg/apache/tika/pipes/fetcher/FetcherManager;->getFetcher(Ljava/lang/String;)Lorg/apache/tika/pipes/fetcher/Fetcher;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception v1

    .line 20
    :goto_0
    sget-object v2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "Couldn\'t initialize fetcher for fetch id \'"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, "\'"

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v2, p1, v1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->FETCHER_INITIALIZATION_EXCEPTION:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 52
    .line 53
    invoke-static {v1}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {p0, p1, v1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :catch_2
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getFetchKey()Lorg/apache/tika/pipes/fetcher/FetchKey;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/apache/tika/pipes/fetcher/FetchKey;->getFetcherName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->getNoFetcherMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 74
    .line 75
    invoke-interface {v1, p1}, Lmf/c;->x(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lorg/apache/tika/pipes/PipesServer$STATUS;->FETCHER_NOT_FOUND:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 79
    .line 80
    invoke-direct {p0, v1, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method private getNoEmitterMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Emitter \'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\'"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " not found."

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "\nThe configured emitterManager supports:"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/apache/tika/pipes/emitter/EmitterManager;->getSupported()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x1

    .line 53
    .line 54
    if-lez v1, :cond_0

    .line 55
    .line 56
    const-string v1, ", "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move v1, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private getNoFetcherMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Fetcher \'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\'"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " not found."

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "\nThe configured FetcherManager supports:"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->fetcherManager:Lorg/apache/tika/pipes/fetcher/FetcherManager;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/apache/tika/pipes/fetcher/FetcherManager;->getSupported()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x1

    .line 53
    .line 54
    if-lez v1, :cond_0

    .line 55
    .line 56
    const-string v1, ", "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move v1, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private handleOOM(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/tika/pipes/PipesServer$STATUS;->OOM:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "oom: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1, p2}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private injectUserMetadata(Lorg/apache/tika/metadata/Metadata;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/metadata/Metadata;",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Metadata;->names()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lorg/apache/tika/metadata/Metadata;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-virtual {v5, v4, v6}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lorg/apache/tika/metadata/Metadata;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    array-length v6, v5

    .line 27
    move v7, v2

    .line 28
    :goto_1
    if-ge v7, v6, :cond_0

    .line 29
    .line 30
    aget-object v8, v5, v7

    .line 31
    .line 32
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    check-cast v9, Lorg/apache/tika/metadata/Metadata;

    .line 37
    .line 38
    invoke-virtual {v9, v4, v8}, Lorg/apache/tika/metadata/Metadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "server shutting down"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    aget-object v2, p0, v1

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, v3}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const/4 v2, 0x1

    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    const/4 v3, 0x2

    .line 20
    aget-object v3, p0, v3

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v10

    .line 26
    const/4 v3, 0x3

    .line 27
    aget-object p0, p0, v3

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v12

    .line 33
    new-instance p0, Lorg/apache/tika/pipes/PipesServer;

    .line 34
    .line 35
    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 36
    .line 37
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 38
    .line 39
    move-object v4, p0

    .line 40
    invoke-direct/range {v4 .. v13}, Lorg/apache/tika/pipes/PipesServer;-><init>(Ljava/nio/file/Path;Ljava/io/InputStream;Ljava/io/PrintStream;JJJ)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/apache/commons/io/input/h;->a()Lorg/apache/commons/io/input/h$a;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-array v1, v1, [B

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lorg/apache/commons/io/input/h$a;->m([B)Lorg/apache/commons/io/input/h$a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lorg/apache/commons/io/input/h$a;->l()Lorg/apache/commons/io/input/h;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/Thread;

    .line 66
    .line 67
    const-string v3, "Tika Watchdog"

    .line 68
    .line 69
    invoke-direct {v1, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/apache/tika/pipes/PipesServer;->processRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    sget-object p0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 82
    .line 83
    invoke-interface {p0, v0}, Lmf/c;->w(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 89
    .line 90
    invoke-interface {v1, v0}, Lmf/c;->w(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method private metadataIsEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method private parseConcatenated(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/HandlerConfig;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            "Lorg/apache/tika/pipes/HandlerConfig;",
            "Ljava/io/InputStream;",
            "Lorg/apache/tika/metadata/Metadata;",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "timer -- parse only time: {} ms"

    .line 2
    .line 3
    new-instance v1, Lorg/apache/tika/sax/BasicContentHandlerFactory;

    .line 4
    .line 5
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->getType()Lorg/apache/tika/sax/BasicContentHandlerFactory$HANDLER_TYPE;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->getWriteLimit()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->isThrowOnWriteLimitReached()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {v1, v2, v3, v4, p5}, Lorg/apache/tika/sax/BasicContentHandlerFactory;-><init>(Lorg/apache/tika/sax/BasicContentHandlerFactory$HANDLER_TYPE;IZLorg/apache/tika/parser/ParseContext;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lorg/apache/tika/sax/ContentHandlerFactory;->getNewContentHandler()Lorg/xml/sax/ContentHandler;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lorg/apache/tika/pipes/PipesServer$1;

    .line 25
    .line 26
    invoke-direct {v2, p0, p2}, Lorg/apache/tika/pipes/PipesServer$1;-><init>(Lorg/apache/tika/pipes/PipesServer;Lorg/apache/tika/pipes/HandlerConfig;)V

    .line 27
    .line 28
    .line 29
    const-class p2, Lorg/apache/tika/extractor/DocumentSelector;

    .line 30
    .line 31
    invoke-virtual {p5, p2, v2}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/apache/tika/pipes/PipesServer;->preParse(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    :try_start_0
    iget-object v4, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 43
    .line 44
    invoke-interface {v4, p3, v1, p4, p5}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->TIKA_CONTENT:Lorg/apache/tika/metadata/Property;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p4, p1, p2}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 57
    .line 58
    invoke-interface {p1}, Lmf/c;->n()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p2

    .line 68
    sub-long/2addr p2, v2

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-interface {p1, v0, p2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :catch_0
    move-exception p3

    .line 82
    :try_start_1
    invoke-static {p3}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    sget-object p5, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v5, "parse exception: "

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p5, p1, p3}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->TIKA_CONTENT:Lorg/apache/tika/metadata/Property;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p4, p1, p3}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_0

    .line 122
    .line 123
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTAINER_EXCEPTION:Lorg/apache/tika/metadata/Property;

    .line 124
    .line 125
    invoke-virtual {p4, p1, p2}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    invoke-interface {p5}, Lmf/c;->n()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :catch_1
    move-exception p3

    .line 137
    :try_start_2
    sget-object p5, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 138
    .line 139
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v5, "security exception:"

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p5, p1, p3}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw p3

    .line 164
    :catch_2
    move-exception p3

    .line 165
    invoke-static {p3}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    sget-object p5, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 170
    .line 171
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v5, "encrypted document:"

    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p5, p1, p3}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->TIKA_CONTENT:Lorg/apache/tika/metadata/Property;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {p4, p1, p3}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    if-eqz p2, :cond_1

    .line 205
    .line 206
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTAINER_EXCEPTION:Lorg/apache/tika/metadata/Property;

    .line 207
    .line 208
    invoke-virtual {p4, p1, p2}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_1
    invoke-interface {p5}, Lmf/c;->n()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_3

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catch_3
    move-exception p3

    .line 219
    :try_start_3
    invoke-static {p3}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    sget-object p5, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 224
    .line 225
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v5, "sax problem:"

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p5, p1, p3}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    .line 249
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->TIKA_CONTENT:Lorg/apache/tika/metadata/Property;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p4, p1, p3}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    if-eqz p2, :cond_2

    .line 259
    .line 260
    sget-object p1, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTAINER_EXCEPTION:Lorg/apache/tika/metadata/Property;

    .line 261
    .line 262
    invoke-virtual {p4, p1, p2}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_2
    invoke-interface {p5}, Lmf/c;->n()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eqz p1, :cond_3

    .line 270
    .line 271
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide p1

    .line 275
    sub-long/2addr p1, v2

    .line 276
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-interface {p5, v0, p1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_3
    :goto_1
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    return-object p1

    .line 288
    :goto_2
    sget-object p3, Lorg/apache/tika/metadata/TikaCoreProperties;->TIKA_CONTENT:Lorg/apache/tika/metadata/Property;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p5

    .line 294
    invoke-virtual {p4, p3, p5}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    if-eqz p2, :cond_4

    .line 298
    .line 299
    sget-object p3, Lorg/apache/tika/metadata/TikaCoreProperties;->CONTAINER_EXCEPTION:Lorg/apache/tika/metadata/Property;

    .line 300
    .line 301
    invoke-virtual {p4, p3, p2}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_4
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 305
    .line 306
    invoke-interface {p2}, Lmf/c;->n()Z

    .line 307
    .line 308
    .line 309
    move-result p3

    .line 310
    if-eqz p3, :cond_5

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide p3

    .line 316
    sub-long/2addr p3, v2

    .line 317
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    invoke-interface {p2, v0, p3}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_5
    throw p1
.end method

.method private parseOne()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesServer;->readFetchEmitTuple()Lorg/apache/tika/pipes/FetchEmitTuple;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v4, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 25
    .line 26
    invoke-interface {v4}, Lmf/c;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const-string v5, "timer -- read fetchEmitTuple: {} ms"

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    sub-long/2addr v6, v2

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v4, v5, v2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-direct {p0, v1}, Lorg/apache/tika/pipes/PipesServer;->actuallyParse(Lorg/apache/tika/pipes/FetchEmitTuple;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Lmf/c;->n()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    const-string v5, "timer -- actually parsed: {} ms"

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    sub-long/2addr v6, v2

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v4, v5, v2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v1

    .line 76
    :try_start_2
    iput-boolean v0, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iput-wide v2, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 83
    .line 84
    monitor-exit v1

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw v0

    .line 89
    :catchall_1
    move-exception v1

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v2

    .line 92
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {p0, v1, v2}, Lorg/apache/tika/pipes/PipesServer;->handleOOM(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v1

    .line 102
    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    iput-wide v2, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 109
    .line 110
    monitor-exit v1

    .line 111
    :goto_0
    return-void

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    throw v0

    .line 115
    :goto_1
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_5
    iput-boolean v0, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    iput-wide v3, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 125
    .line 126
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 127
    throw v1

    .line 128
    :catchall_3
    move-exception v0

    .line 129
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 130
    throw v0

    .line 131
    :catchall_4
    move-exception v1

    .line 132
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 133
    throw v1
.end method

.method private parseRecursive(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/HandlerConfig;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            "Lorg/apache/tika/pipes/HandlerConfig;",
            "Ljava/io/InputStream;",
            "Lorg/apache/tika/metadata/Metadata;",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tika/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "timer -- parse only time: {} ms"

    .line 2
    .line 3
    new-instance v1, Lorg/apache/tika/sax/RecursiveParserWrapperHandler;

    .line 4
    .line 5
    new-instance v2, Lorg/apache/tika/sax/BasicContentHandlerFactory;

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->getType()Lorg/apache/tika/sax/BasicContentHandlerFactory$HANDLER_TYPE;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->getWriteLimit()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->isThrowOnWriteLimitReached()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-direct {v2, v3, v4, v5, p5}, Lorg/apache/tika/sax/BasicContentHandlerFactory;-><init>(Lorg/apache/tika/sax/BasicContentHandlerFactory$HANDLER_TYPE;IZLorg/apache/tika/parser/ParseContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/apache/tika/pipes/HandlerConfig;->getMaxEmbeddedResources()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-direct {v1, v2, p2}, Lorg/apache/tika/sax/RecursiveParserWrapperHandler;-><init>(Lorg/apache/tika/sax/ContentHandlerFactory;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/apache/tika/pipes/PipesServer;->preParse(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p2, p0, Lorg/apache/tika/pipes/PipesServer;->rMetaParser:Lorg/apache/tika/parser/Parser;

    .line 37
    .line 38
    invoke-interface {p2, p3, v1, p4, p5}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    sget-object p1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 42
    .line 43
    invoke-interface {p1}, Lmf/c;->n()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    sub-long/2addr p2, v2

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p1, v0, p2}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catch_0
    move-exception p2

    .line 67
    :try_start_1
    sget-object p3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string p5, "parse exception: "

    .line 79
    .line 80
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p3, p1, p2}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-interface {p3}, Lmf/c;->n()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p2

    .line 101
    :try_start_2
    sget-object p3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string p5, "security exception:"

    .line 113
    .line 114
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p3, p1, p2}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw p2

    .line 128
    :catch_2
    move-exception p2

    .line 129
    sget-object p3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 130
    .line 131
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p5, "encrypted document:"

    .line 141
    .line 142
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p3, p1, p2}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    invoke-interface {p3}, Lmf/c;->n()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_0

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catch_3
    move-exception p2

    .line 163
    :try_start_3
    sget-object p3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 164
    .line 165
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance p4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string p5, "sax problem:"

    .line 175
    .line 176
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p3, p1, p2}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    .line 189
    invoke-interface {p3}, Lmf/c;->n()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_0

    .line 194
    .line 195
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide p1

    .line 199
    sub-long/2addr p1, v2

    .line 200
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p3, v0, p1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/apache/tika/sax/RecursiveParserWrapperHandler;->getMetadataList()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    return-object p1

    .line 212
    :goto_2
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 213
    .line 214
    invoke-interface {p2}, Lmf/c;->n()Z

    .line 215
    .line 216
    .line 217
    move-result p3

    .line 218
    if-eqz p3, :cond_1

    .line 219
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide p3

    .line 224
    sub-long/2addr p3, v2

    .line 225
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    invoke-interface {p2, v0, p3}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_1
    throw p1
.end method

.method private parseWithStream(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->setupParseContext(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/parser/ParseContext;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    const-class v0, Lorg/apache/tika/pipes/HandlerConfig;

    .line 6
    .line 7
    invoke-virtual {v6, v0}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lorg/apache/tika/pipes/HandlerConfig;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/apache/tika/pipes/HandlerConfig;->getParseMode()Lorg/apache/tika/pipes/HandlerConfig$PARSE_MODE;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lorg/apache/tika/pipes/HandlerConfig$PARSE_MODE;->RMETA:Lorg/apache/tika/pipes/HandlerConfig$PARSE_MODE;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, v6

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/pipes/PipesServer;->parseRecursive(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/HandlerConfig;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    move-object v3, p2

    .line 35
    move-object v4, p3

    .line 36
    move-object v5, v6

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/pipes/PipesServer;->parseConcatenated(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/HandlerConfig;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    new-instance p2, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;

    .line 42
    .line 43
    const-class p3, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 44
    .line 45
    invoke-virtual {v6, p3}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 50
    .line 51
    invoke-direct {p2, p1, p3}, Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;-><init>(Ljava/util/List;Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;)V

    .line 52
    .line 53
    .line 54
    return-object p2
.end method

.method private preParse(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Lorg/apache/tika/io/TikaInputStream;->cast(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p2, v0, p3}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;Lorg/apache/tika/io/TemporaryResources;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-direct {p0, p1, v1, p3, p4}, Lorg/apache/tika/pipes/PipesServer;->_preParse(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcf/g;->i(Ljava/io/Closeable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getEmitKey()Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1, p3}, Lorg/apache/tika/pipes/PipesServer;->writeIntermediate(Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/metadata/Metadata;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-static {v0}, Lcf/g;->i(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private readFetchEmitTuple()Lorg/apache/tika/pipes/FetchEmitTuple;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->input:Ljava/io/DataInputStream;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesServer;->input:Ljava/io/DataInputStream;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/io/ObjectInputStream;

    .line 16
    .line 17
    invoke-static {}, Lorg/apache/commons/io/input/h;->a()Lorg/apache/commons/io/input/h$a;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v1}, Lorg/apache/commons/io/input/h$a;->m([B)Lorg/apache/commons/io/input/h$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/apache/commons/io/input/h$a;->l()Lorg/apache/commons/io/input/h;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lorg/apache/tika/pipes/FetchEmitTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v2

    .line 48
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    sget-object v2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 54
    .line 55
    const-string v3, "can\'t find class?!"

    .line 56
    .line 57
    invoke-interface {v2, v3, v1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    sget-object v2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 66
    .line 67
    const-string v3, "problem reading tuple"

    .line 68
    .line 69
    invoke-interface {v2, v3, v1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    const/4 v0, 0x0

    .line 76
    return-object v0
.end method

.method private setupParseContext(Lorg/apache/tika/pipes/FetchEmitTuple;)Lorg/apache/tika/parser/ParseContext;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/apache/tika/pipes/HandlerConfig;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lorg/apache/tika/pipes/HandlerConfig;->DEFAULT_HANDLER_CONFIG:Lorg/apache/tika/pipes/HandlerConfig;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-class v1, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    sget-object p1, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->SKIP:Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 35
    .line 36
    check-cast v1, Lorg/apache/tika/parser/AutoDetectParser;

    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lorg/apache/tika/parser/AutoDetectParserConfig;->getEmbeddedDocumentExtractorFactory()Lorg/apache/tika/extractor/EmbeddedDocumentExtractorFactory;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Lorg/apache/tika/extractor/RUnpackExtractor;

    .line 49
    .line 50
    sget-wide v3, Lorg/apache/tika/extractor/RUnpackExtractorFactory;->DEFAULT_MAX_EMBEDDED_BYTES_FOR_EXTRACTION:J

    .line 51
    .line 52
    invoke-direct {v1, v0, v3, v4}, Lorg/apache/tika/extractor/RUnpackExtractor;-><init>(Lorg/apache/tika/parser/ParseContext;J)V

    .line 53
    .line 54
    .line 55
    const-class v3, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;

    .line 56
    .line 57
    invoke-virtual {v0, v3, v1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    instance-of v3, v1, Lorg/apache/tika/extractor/EmbeddedDocumentByteStoreExtractorFactory;

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;->getEmitter()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const-class v3, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    new-instance v1, Lorg/apache/tika/pipes/extractor/EmittingEmbeddedDocumentBytesHandler;

    .line 78
    .line 79
    iget-object v2, p0, Lorg/apache/tika/pipes/PipesServer;->emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 80
    .line 81
    invoke-direct {v1, p1, v2}, Lorg/apache/tika/pipes/extractor/EmittingEmbeddedDocumentBytesHandler;-><init>(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/emitter/EmitterManager;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3, v1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance p1, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;

    .line 89
    .line 90
    invoke-direct {p1, v2}, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;-><init>(Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3, p1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-object v0

    .line 97
    :cond_4
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "EmbeddedDocumentExtractorFactory must be an instance of EmbeddedDocumentByteStoreExtractorFactory if you wantto extract embedded bytes! I see this embedded doc factory: "

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, "and a request: "

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method private write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V
    .locals 2

    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 19
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    const-string v1, "problem writing data (forking process shutdown?)"

    invoke-interface {v0, v1, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    :goto_0
    return-void
.end method

.method private write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V
    .locals 1

    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V

    return-void
.end method

.method private write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V
    .locals 2

    .line 11
    :try_start_0
    array-length v0, p2

    .line 12
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 13
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 15
    iget-object p1, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    const-string v0, "problem writing data (forking process shutdown?)"

    invoke-interface {p2, v0, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    :goto_0
    return-void
.end method

.method private write(Lorg/apache/tika/pipes/emitter/EmitData;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lgf/e;->j()Lgf/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lgf/e$a;->l()Lgf/e;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 5
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->PARSE_SUCCESS:Lorg/apache/tika/pipes/PipesServer$STATUS;

    invoke-virtual {v0}, Lgf/e;->b()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    const-string v1, "problem writing emit data (forking process shutdown?)"

    invoke-interface {v0, v1, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    :goto_1
    return-void
.end method

.method private writeIntermediate(Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lgf/e;->j()Lgf/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lgf/e$a;->l()Lgf/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lorg/apache/tika/pipes/PipesServer$STATUS;->INTERMEDIATE_RESULT:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 21
    .line 22
    invoke-virtual {p1}, Lgf/e;->b()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p2, p1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p2

    .line 36
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    sget-object p2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 42
    .line 43
    const-string v0, "problem writing intermediate data (forking process shutdown?)"

    .line 44
    .line 45
    invoke-interface {p2, v0, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method


# virtual methods
.method protected initializeResources()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tika/config/TikaConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfigPath:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/tika/config/TikaConfig;-><init>(Ljava/nio/file/Path;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfig:Lorg/apache/tika/config/TikaConfig;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfigPath:Ljava/nio/file/Path;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/apache/tika/pipes/fetcher/FetcherManager;->load(Ljava/nio/file/Path;)Lorg/apache/tika/pipes/fetcher/FetcherManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->fetcherManager:Lorg/apache/tika/pipes/fetcher/FetcherManager;

    .line 17
    .line 18
    iget-wide v0, p0, Lorg/apache/tika/pipes/PipesServer;->maxForEmitBatchBytes:J

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfigPath:Ljava/nio/file/Path;

    .line 27
    .line 28
    invoke-static {v0}, Lorg/apache/tika/pipes/emitter/EmitterManager;->load(Ljava/nio/file/Path;)Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 36
    .line 37
    const-string v1, "\'maxForEmitBatchBytes\' < 0. Not initializing emitters in PipesServer"

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lmf/c;->m(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->emitterManager:Lorg/apache/tika/pipes/emitter/EmitterManager;

    .line 44
    .line 45
    :goto_0
    new-instance v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 46
    .line 47
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->tikaConfig:Lorg/apache/tika/config/TikaConfig;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParserConfig;->getDigesterFactory()Lorg/apache/tika/parser/DigestingParser$DigesterFactory;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 65
    .line 66
    check-cast v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParserConfig;->getDigesterFactory()Lorg/apache/tika/parser/DigestingParser$DigesterFactory;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lorg/apache/tika/parser/DigestingParser$DigesterFactory;->build()Lorg/apache/tika/parser/DigestingParser$Digester;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->digester:Lorg/apache/tika/parser/DigestingParser$Digester;

    .line 81
    .line 82
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 83
    .line 84
    check-cast v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 85
    .line 86
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParserConfig;->getDigesterFactory()Lorg/apache/tika/parser/DigestingParser$DigesterFactory;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-interface {v0, v1}, Lorg/apache/tika/parser/DigestingParser$DigesterFactory;->setSkipContainerDocument(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 99
    .line 100
    check-cast v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 101
    .line 102
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParserConfig;->getEmbeddedDocumentExtractorFactory()Lorg/apache/tika/extractor/EmbeddedDocumentExtractorFactory;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 111
    .line 112
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 113
    .line 114
    check-cast v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 115
    .line 116
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getAutoDetectParserConfig()Lorg/apache/tika/parser/AutoDetectParserConfig;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v1, Lorg/apache/tika/extractor/RUnpackExtractorFactory;

    .line 121
    .line 122
    invoke-direct {v1}, Lorg/apache/tika/extractor/RUnpackExtractorFactory;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/AutoDetectParserConfig;->setEmbeddedDocumentExtractorFactory(Lorg/apache/tika/extractor/EmbeddedDocumentExtractorFactory;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 129
    .line 130
    check-cast v0, Lorg/apache/tika/parser/AutoDetectParser;

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/apache/tika/parser/AutoDetectParser;->getDetector()Lorg/apache/tika/detect/Detector;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->detector:Lorg/apache/tika/detect/Detector;

    .line 137
    .line 138
    new-instance v0, Lorg/apache/tika/parser/RecursiveParserWrapper;

    .line 139
    .line 140
    iget-object v1, p0, Lorg/apache/tika/pipes/PipesServer;->autoDetectParser:Lorg/apache/tika/parser/Parser;

    .line 141
    .line 142
    invoke-direct {v0, v1}, Lorg/apache/tika/parser/RecursiveParserWrapper;-><init>(Lorg/apache/tika/parser/Parser;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->rMetaParser:Lorg/apache/tika/parser/Parser;

    .line 146
    .line 147
    return-void
.end method

.method protected parseFromTuple(Lorg/apache/tika/pipes/FetchEmitTuple;Lorg/apache/tika/pipes/fetcher/Fetcher;)Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getFetchKey()Lorg/apache/tika/pipes/fetcher/FetchKey;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/apache/tika/pipes/fetcher/FetchKey;->getFetchKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getParseContext()Lorg/apache/tika/parser/ParseContext;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p2, v1, v0, v2}, Lorg/apache/tika/pipes/fetcher/Fetcher;->fetch(Ljava/lang/String;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tika/pipes/PipesServer;->parseWithStream(Lorg/apache/tika/pipes/FetchEmitTuple;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/pipes/PipesServer$MetadataListAndEmbeddedBytes;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception p2

    .line 40
    :try_start_4
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    :catch_0
    move-exception p2

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception p2

    .line 47
    :goto_1
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "fetch exception "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {v0, p1, p2}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lorg/apache/tika/pipes/PipesServer$STATUS;->FETCH_EXCEPTION:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 74
    .line 75
    invoke-static {p2}, Lorg/apache/tika/utils/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    return-object p1

    .line 84
    :catch_2
    move-exception p2

    .line 85
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/apache/tika/pipes/FetchEmitTuple;->getId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "security exception "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p1, p2}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p2
.end method

.method public processRequests()V
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 2
    .line 3
    const-string v1, "processing requests"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lmf/c;->m(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0}, Lorg/apache/tika/pipes/PipesServer;->initializeResources()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lmf/c;->n()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v3, "timer -- initialize parser and other resources: {} ms"

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sub-long/2addr v4, v1

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v3, v1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string v1, "pipes server initialized"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lmf/c;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :try_start_1
    sget-object v1, Lorg/apache/tika/pipes/PipesServer$STATUS;->READY:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 42
    .line 43
    invoke-direct {p0, v1}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    :goto_0
    iget-object v3, p0, Lorg/apache/tika/pipes/PipesServer;->input:Ljava/io/DataInputStream;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, -0x1

    .line 57
    if-ne v3, v4, :cond_1

    .line 58
    .line 59
    sget-object v3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 60
    .line 61
    const-string v4, "received -1 from client; shutting down"

    .line 62
    .line 63
    invoke-interface {v3, v4}, Lmf/c;->x(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget-object v4, Lorg/apache/tika/pipes/PipesServer$STATUS;->PING:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 71
    .line 72
    invoke-virtual {v4}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-ne v3, v5, :cond_3

    .line 77
    .line 78
    sget-object v3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 79
    .line 80
    invoke-interface {v3}, Lmf/c;->n()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    const-string v5, "timer -- ping: {} ms"

    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    sub-long/2addr v6, v1

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v3, v5, v1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/tika/pipes/PipesServer;->write(Lorg/apache/tika/pipes/PipesServer$STATUS;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    sget-object v4, Lorg/apache/tika/pipes/PipesServer$STATUS;->CALL:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 109
    .line 110
    invoke-virtual {v4}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-ne v3, v4, :cond_5

    .line 115
    .line 116
    invoke-direct {p0}, Lorg/apache/tika/pipes/PipesServer;->parseOne()V

    .line 117
    .line 118
    .line 119
    sget-object v3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 120
    .line 121
    invoke-interface {v3}, Lmf/c;->n()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    const-string v4, "timer -- parse one: {} ms"

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    sub-long/2addr v5, v1

    .line 134
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v3, v4, v1}, Lmf/c;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    :goto_1
    iget-object v3, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v2, "Unexpected request"

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :catchall_0
    move-exception v1

    .line 160
    sget-object v2, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 161
    .line 162
    const-string v3, "main loop error (did the forking process shut down?)"

    .line 163
    .line 164
    invoke-interface {v2, v3, v1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v0}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 178
    .line 179
    const-string v2, "couldn\'t initialize parser"

    .line 180
    .line 181
    invoke-interface {v1, v2, v0}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :try_start_2
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    .line 185
    .line 186
    sget-object v1, Lorg/apache/tika/pipes/PipesServer$STATUS;->FAILED_TO_START:Lorg/apache/tika/pipes/PipesServer$STATUS;

    .line 187
    .line 188
    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesServer$STATUS;->getByte()B

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->output:Ljava/io/DataOutputStream;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 203
    .line 204
    const-string v2, "couldn\'t notify of failure to start"

    .line 205
    .line 206
    invoke-interface {v1, v2, v0}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/PipesServer;->lock:[Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    iget-wide v3, p0, Lorg/apache/tika/pipes/PipesServer;->since:J

    .line 9
    .line 10
    sub-long/2addr v1, v3

    .line 11
    iget-boolean v3, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-wide v3, p0, Lorg/apache/tika/pipes/PipesServer;->serverParseTimeoutMillis:J

    .line 16
    .line 17
    cmp-long v3, v1, v3

    .line 18
    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    sget-object v3, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 22
    .line 23
    const-string v4, "timeout server; elapsed {}  with {}"

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-wide v5, p0, Lorg/apache/tika/pipes/PipesServer;->serverParseTimeoutMillis:J

    .line 30
    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v3, v4, v1, v2}, Lmf/c;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x11

    .line 39
    .line 40
    invoke-direct {p0, v1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-boolean v3, p0, Lorg/apache/tika/pipes/PipesServer;->parsing:Z

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    iget-wide v3, p0, Lorg/apache/tika/pipes/PipesServer;->serverWaitTimeoutMillis:J

    .line 49
    .line 50
    const-wide/16 v5, 0x0

    .line 51
    .line 52
    cmp-long v5, v3, v5

    .line 53
    .line 54
    if-lez v5, :cond_1

    .line 55
    .line 56
    cmp-long v1, v1, v3

    .line 57
    .line 58
    if-lez v1, :cond_1

    .line 59
    .line 60
    sget-object v1, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 61
    .line 62
    const-string v2, "closing down from inactivity"

    .line 63
    .line 64
    invoke-interface {v1, v2}, Lmf/c;->w(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v1}, Lorg/apache/tika/pipes/PipesServer;->exit(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-wide v0, p0, Lorg/apache/tika/pipes/PipesServer;->checkForTimeoutMs:J

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :catch_0
    sget-object v0, Lorg/apache/tika/pipes/PipesServer;->LOG:Lmf/c;

    .line 82
    .line 83
    const-string v1, "interrupted"

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lmf/c;->m(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
