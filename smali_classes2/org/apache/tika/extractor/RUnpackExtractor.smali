.class public Lorg/apache/tika/extractor/RUnpackExtractor;
.super Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;
.source "SourceFile"


# static fields
.field private static final ABSTRACT_PATH:Ljava/io/File;

.field private static final LOGGER:Lmf/c;


# instance fields
.field private bytesExtracted:J

.field private embeddedBytesSelector:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

.field private final maxEmbeddedBytesForExtraction:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;

    .line 2
    .line 3
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tika/extractor/RUnpackExtractor;->LOGGER:Lmf/c;

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/apache/tika/extractor/RUnpackExtractor;->ABSTRACT_PATH:Ljava/io/File;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/ParseContext;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;-><init>(Lorg/apache/tika/parser/ParseContext;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/apache/tika/extractor/EmbeddedBytesSelector;->ACCEPT_ALL:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->embeddedBytesSelector:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 11
    .line 12
    iput-wide p2, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->maxEmbeddedBytesForExtraction:J

    .line 13
    .line 14
    return-void
.end method

.method private parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->getDelegatingParser()Lorg/apache/tika/parser/Parser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/apache/tika/sax/EmbeddedContentHandler;

    .line 6
    .line 7
    new-instance v2, Lorg/apache/tika/sax/BodyContentHandler;

    .line 8
    .line 9
    invoke-direct {v2, p2}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lorg/apache/tika/sax/EmbeddedContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 16
    .line 17
    invoke-interface {v0, p1, v1, p3, p2}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private parseWithBytes(Lorg/apache/tika/io/TikaInputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/tika/io/TikaInputStream;->getPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/input/a;->a(Ljava/io/InputStream;)Lorg/apache/commons/io/input/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tika/extractor/RUnpackExtractor;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p3}, Lorg/apache/tika/extractor/RUnpackExtractor;->storeEmbeddedBytes(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-direct {p0, v0, p3}, Lorg/apache/tika/extractor/RUnpackExtractor;->storeEmbeddedBytes(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method private storeEmbeddedBytes(Ljava/nio/file/Path;Lorg/apache/tika/metadata/Metadata;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->embeddedBytesSelector:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lorg/apache/tika/extractor/EmbeddedBytesSelector;->select(Lorg/apache/tika/metadata/Metadata;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object p1, Lorg/apache/tika/extractor/RUnpackExtractor;->LOGGER:Lmf/c;

    .line 10
    .line 11
    invoke-interface {p1}, Lmf/c;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Content-Type"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lorg/apache/tika/metadata/TikaCoreProperties;->EMBEDDED_RESOURCE_TYPE:Lorg/apache/tika/metadata/Property;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Lorg/apache/tika/metadata/Metadata;->get(Lorg/apache/tika/metadata/Property;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v1, "skipping embedded bytes {} <-> {}"

    .line 30
    .line 31
    invoke-interface {p1, v1, v0, p2}, Lmf/c;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 36
    .line 37
    const-class v1, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 44
    .line 45
    sget-object v1, Lorg/apache/tika/metadata/TikaCoreProperties;->EMBEDDED_ID:Lorg/apache/tika/metadata/Property;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Lorg/apache/tika/metadata/Metadata;->getInt(Lorg/apache/tika/metadata/Property;)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-array v2, v2, [Ljava/nio/file/OpenOption;

    .line 57
    .line 58
    invoke-static {p1, v2}, Lorg/apache/tika/config/b;->a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-wide v2, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 63
    .line 64
    iget-wide v4, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->maxEmbeddedBytesForExtraction:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 65
    .line 66
    cmp-long v6, v2, v4

    .line 67
    .line 68
    const-string v7, ") >= max allowed ("

    .line 69
    .line 70
    const-string v8, "Bytes extracted ("

    .line 71
    .line 72
    if-gez v6, :cond_3

    .line 73
    .line 74
    sub-long/2addr v4, v2

    .line 75
    :try_start_2
    new-instance v2, Lorg/apache/tika/io/BoundedInputStream;

    .line 76
    .line 77
    invoke-direct {v2, v4, v5, p1}, Lorg/apache/tika/io/BoundedInputStream;-><init>(JLjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    .line 79
    .line 80
    :try_start_3
    invoke-interface {v0, v1, p2, v2}, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;->add(ILorg/apache/tika/metadata/Metadata;Ljava/io/InputStream;)V

    .line 81
    .line 82
    .line 83
    iget-wide v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 84
    .line 85
    invoke-virtual {v2}, Lorg/apache/tika/io/BoundedInputStream;->getPos()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    add-long/2addr v0, v3

    .line 90
    iput-wide v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/apache/tika/io/BoundedInputStream;->hasHitBound()Z

    .line 93
    .line 94
    .line 95
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    .line 108
    .line 109
    iget-wide v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 110
    .line 111
    iget-wide v3, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->maxEmbeddedBytesForExtraction:J

    .line 112
    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, "). Truncated bytes"

    .line 131
    .line 132
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    :catchall_0
    move-exception p2

    .line 144
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    :try_start_8
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    throw p2

    .line 153
    :cond_3
    new-instance p2, Ljava/io/IOException;

    .line 154
    .line 155
    iget-wide v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->bytesExtracted:J

    .line 156
    .line 157
    iget-wide v2, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->maxEmbeddedBytesForExtraction:J

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ")"

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 189
    :catchall_2
    move-exception p2

    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catchall_3
    move-exception p1

    .line 197
    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_1
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 201
    :catch_0
    move-exception p1

    .line 202
    sget-object p2, Lorg/apache/tika/extractor/RUnpackExtractor;->LOGGER:Lmf/c;

    .line 203
    .line 204
    const-string v0, "problem writing out embedded bytes"

    .line 205
    .line 206
    invoke-interface {p2, v0, p1}, Lmf/c;->u(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getEmbeddedBytesSelector()Lorg/apache/tika/extractor/EmbeddedBytesSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->embeddedBytesSelector:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public parseEmbedded(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Z)V
    .locals 9

    .line 1
    const-string v0, "div"

    .line 2
    .line 3
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance v8, Lorg/xml/sax/helpers/AttributesImpl;

    .line 8
    .line 9
    invoke-direct {v8}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const-string v4, "class"

    .line 15
    .line 16
    const-string v5, "class"

    .line 17
    .line 18
    const-string v6, "CDATA"

    .line 19
    .line 20
    const-string v7, "package-entry"

    .line 21
    .line 22
    move-object v2, v8

    .line 23
    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v1, v0, v0, v8}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v2, "resourceName"

    .line 30
    .line 31
    invoke-virtual {p3, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->isWriteFileNameToContent()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-lez v3, :cond_1

    .line 48
    .line 49
    if-eqz p4, :cond_1

    .line 50
    .line 51
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    .line 52
    .line 53
    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "h1"

    .line 57
    .line 58
    invoke-interface {p2, v1, v4, v4, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    array-length v3, v2

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-interface {p2, v2, v5, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v1, v4, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/tika/io/TemporaryResources;

    .line 74
    .line 75
    invoke-direct {v2}, Lorg/apache/tika/io/TemporaryResources;-><init>()V
    :try_end_0
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/io/input/a;->a(Ljava/io/InputStream;)Lorg/apache/commons/io/input/a;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3, v2, p3}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;Lorg/apache/tika/io/TemporaryResources;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v4, p1, Lorg/apache/tika/io/TikaInputStream;

    .line 87
    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    check-cast p1, Lorg/apache/tika/io/TikaInputStream;

    .line 91
    .line 92
    invoke-virtual {p1}, Lorg/apache/tika/io/TikaInputStream;->getOpenContainer()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3, p1}, Lorg/apache/tika/io/TikaInputStream;->setOpenContainer(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object p1, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 102
    .line 103
    const-class v4, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lorg/apache/tika/extractor/EmbeddedDocumentBytesHandler;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/tika/extractor/RUnpackExtractor;->parseWithBytes(Lorg/apache/tika/io/TikaInputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/tika/extractor/RUnpackExtractor;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/tika/io/TemporaryResources;->close()V
    :try_end_2
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/tika/io/TemporaryResources;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception p3

    .line 130
    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    throw p1
    :try_end_4
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    iget-object p3, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 136
    .line 137
    invoke-virtual {p0, p1, p3}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->recordException(Ljava/lang/Exception;Lorg/apache/tika/parser/ParseContext;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_1
    move-exception p1

    .line 142
    new-instance p2, Ljava/io/IOException;

    .line 143
    .line 144
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw p2

    .line 148
    :catch_2
    move-exception p1

    .line 149
    iget-object p3, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 150
    .line 151
    invoke-virtual {p0, p1, p3}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->recordException(Ljava/lang/Exception;Lorg/apache/tika/parser/ParseContext;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    if-eqz p4, :cond_4

    .line 155
    .line 156
    invoke-interface {p2, v1, v0, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    return-void
.end method

.method public setEmbeddedBytesSelector(Lorg/apache/tika/extractor/EmbeddedBytesSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tika/extractor/RUnpackExtractor;->embeddedBytesSelector:Lorg/apache/tika/extractor/EmbeddedBytesSelector;

    .line 2
    .line 3
    return-void
.end method
