.class public Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;


# static fields
.field private static final ABSTRACT_PATH:Ljava/io/File;

.field private static final DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;


# instance fields
.field protected final context:Lorg/apache/tika/parser/ParseContext;

.field private writeFileNameToContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->ABSTRACT_PATH:Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/tika/parser/DelegatingParser;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/apache/tika/parser/DelegatingParser;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/ParseContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->writeFileNameToContent:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getDelegatingParser()Lorg/apache/tika/parser/Parser;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public isWriteFileNameToContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->writeFileNameToContent:Z

    .line 2
    .line 3
    return v0
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
    iget-boolean v3, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->writeFileNameToContent:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    if-eqz p4, :cond_1

    .line 48
    .line 49
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    .line 50
    .line 51
    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "h1"

    .line 55
    .line 56
    invoke-interface {p2, v1, v4, v4, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    array-length v3, v2

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-interface {p2, v2, v5, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v1, v4, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/tika/io/TemporaryResources;

    .line 72
    .line 73
    invoke-direct {v2}, Lorg/apache/tika/io/TemporaryResources;-><init>()V
    :try_end_0
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/io/input/a;->a(Ljava/io/InputStream;)Lorg/apache/commons/io/input/a;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3, v2, p3}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;Lorg/apache/tika/io/TemporaryResources;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    instance-of v4, p1, Lorg/apache/tika/io/TikaInputStream;

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    check-cast p1, Lorg/apache/tika/io/TikaInputStream;

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/apache/tika/io/TikaInputStream;->getOpenContainer()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v3, p1}, Lorg/apache/tika/io/TikaInputStream;->setOpenContainer(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    sget-object p1, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;

    .line 100
    .line 101
    new-instance v4, Lorg/apache/tika/sax/EmbeddedContentHandler;

    .line 102
    .line 103
    new-instance v5, Lorg/apache/tika/sax/BodyContentHandler;

    .line 104
    .line 105
    invoke-direct {v5, p2}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v5}, Lorg/apache/tika/sax/EmbeddedContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 112
    .line 113
    invoke-interface {p1, v3, v4, p3, v5}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/tika/io/TemporaryResources;->close()V
    :try_end_2
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/tika/io/TemporaryResources;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_1
    move-exception p3

    .line 126
    :try_start_4
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    throw p1
    :try_end_4
    .catch Lorg/apache/tika/exception/EncryptedDocumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_4 .. :try_end_4} :catch_0

    .line 130
    :catch_0
    move-exception p1

    .line 131
    iget-object p3, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 132
    .line 133
    invoke-virtual {p0, p1, p3}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->recordException(Ljava/lang/Exception;Lorg/apache/tika/parser/ParseContext;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception p1

    .line 138
    new-instance p2, Ljava/io/IOException;

    .line 139
    .line 140
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw p2

    .line 144
    :catch_2
    move-exception p1

    .line 145
    iget-object p3, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p3}, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->recordException(Ljava/lang/Exception;Lorg/apache/tika/parser/ParseContext;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    if-eqz p4, :cond_3

    .line 151
    .line 152
    invoke-interface {p2, v1, v0, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void
.end method

.method recordException(Ljava/lang/Exception;Lorg/apache/tika/parser/ParseContext;)V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/tika/parser/ParseRecord;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lorg/apache/tika/parser/ParseRecord;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/tika/parser/ParseRecord;->addException(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setWriteFileNameToContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->writeFileNameToContent:Z

    .line 2
    .line 3
    return-void
.end method

.method public shouldParseEmbedded(Lorg/apache/tika/metadata/Metadata;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 2
    .line 3
    const-class v1, Lorg/apache/tika/extractor/DocumentSelector;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/apache/tika/extractor/DocumentSelector;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lorg/apache/tika/extractor/DocumentSelector;->select(Lorg/apache/tika/metadata/Metadata;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 19
    .line 20
    const-class v1, Ljava/io/FilenameFilter;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/io/FilenameFilter;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v1, "resourceName"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sget-object v1, Lorg/apache/tika/extractor/ParsingEmbeddedDocumentExtractor;->ABSTRACT_PATH:Ljava/io/File;

    .line 39
    .line 40
    invoke-interface {v0, v1, p1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x1

    .line 46
    return p1
.end method
