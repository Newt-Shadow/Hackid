.class Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;
.super Lorg/apache/tika/parser/StatefulParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/parser/RecursiveParserWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmbeddedParserDecorator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2e1b6f02aebe8a9L


# instance fields
.field private embeddedIdPath:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private final parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

.field final synthetic this$0:Lorg/apache/tika/parser/RecursiveParserWrapper;


# direct methods
.method private constructor <init>(Lorg/apache/tika/parser/RecursiveParserWrapper;Lorg/apache/tika/parser/Parser;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->this$0:Lorg/apache/tika/parser/RecursiveParserWrapper;

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/tika/parser/StatefulParser;-><init>(Lorg/apache/tika/parser/Parser;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->embeddedIdPath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->location:Ljava/lang/String;

    const-string p1, "/"

    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->location:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->location:Ljava/lang/String;

    .line 8
    :cond_0
    iput-object p4, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->embeddedIdPath:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/parser/RecursiveParserWrapper;Lorg/apache/tika/parser/Parser;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;Lorg/apache/tika/parser/f;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;-><init>(Lorg/apache/tika/parser/RecursiveParserWrapper;Lorg/apache/tika/parser/Parser;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    .line 1
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->hasHitMaximumEmbeddedResources()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->c(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/tika/parser/RecursiveParserWrapper;->getResourceName(Lorg/apache/tika/metadata/Metadata;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->location:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->EMBEDDED_RESOURCE_PATH:Lorg/apache/tika/metadata/Property;

    invoke-virtual {v2, v0, v13}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->embeddedIdPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->embeddedIdPath:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v3}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->a(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v3, v4}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->d(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->embeddedIdPath:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v4}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->a(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-static {v4, v5}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->d(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v14, v0

    .line 8
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->EMBEDDED_ID_PATH:Lorg/apache/tika/metadata/Property;

    invoke-virtual {v2, v0, v14}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->EMBEDDED_ID:Lorg/apache/tika/metadata/Property;

    iget-object v3, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v3}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->a(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;I)V

    .line 10
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->getNewContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    .line 12
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->startEmbeddedDocument(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 13
    const-class v6, Lorg/apache/tika/parser/Parser;

    invoke-virtual {v9, v6}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/tika/parser/Parser;

    .line 14
    new-instance v0, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;

    iget-object v11, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->this$0:Lorg/apache/tika/parser/RecursiveParserWrapper;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tika/parser/ParserDecorator;->getWrappedParser()Lorg/apache/tika/parser/Parser;

    move-result-object v12

    iget-object v15, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;-><init>(Lorg/apache/tika/parser/RecursiveParserWrapper;Lorg/apache/tika/parser/Parser;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)V

    .line 16
    invoke-virtual {v9, v6, v0}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 18
    const-class v12, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;

    invoke-virtual {v9, v12}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;

    .line 19
    const-class v14, Lorg/apache/tika/extractor/ParentContentHandler;

    invoke-virtual {v9, v14}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/apache/tika/extractor/ParentContentHandler;

    .line 20
    new-instance v0, Lorg/apache/tika/extractor/ParentContentHandler;

    invoke-direct {v0, v13}, Lorg/apache/tika/extractor/ParentContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v9, v14, v0}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    invoke-static/range {p1 .. p1}, Lorg/apache/tika/io/TikaInputStream;->cast(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 22
    new-instance v0, Lorg/apache/tika/io/TemporaryResources;

    invoke-direct {v0}, Lorg/apache/tika/io/TemporaryResources;-><init>()V

    .line 23
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/input/a;->a(Ljava/io/InputStream;)Lorg/apache/commons/io/input/a;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;Lorg/apache/tika/io/TemporaryResources;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v3

    move-object/from16 v17, v0

    move-object/from16 v16, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 24
    :goto_1
    new-instance v0, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;

    invoke-static {v13}, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;->a(Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;)Lorg/apache/tika/parser/RecursiveParserWrapper$SecureHandlerCounter;

    move-result-object v18

    invoke-static {v13}, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;)Z

    move-result v19

    move-object v3, v0

    move-object v4, v7

    move-wide/from16 v20, v10

    move-object v10, v5

    move-object/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v22, v7

    move/from16 v7, v19

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/apache/tika/parser/RecursiveParserWrapper$RecursivelySecureContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/parser/RecursiveParserWrapper$SecureHandlerCounter;ZLorg/apache/tika/parser/ParseContext;)V

    move-object/from16 v3, p1

    .line 25
    :try_start_0
    invoke-super {v1, v3, v0, v2, v9}, Lorg/apache/tika/parser/ParserDecorator;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/tika/exception/CorruptedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v9, v11, v10}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v9, v12, v13}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v9, v14, v15}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v20

    .line 30
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->PARSE_TIME_MILLIS:Lorg/apache/tika/metadata/Property;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 31
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    move-object/from16 v3, v22

    .line 32
    invoke-virtual {v0, v3, v2}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->endEmbeddedDocument(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    if-eqz v17, :cond_6

    .line 33
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/apache/tika/io/TikaInputStream;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v3, v22

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v3, v22

    move-object v4, v0

    .line 34
    :try_start_1
    nop

    instance-of v0, v4, Lorg/apache/tika/exception/EncryptedDocumentException;

    if-eqz v0, :cond_3

    .line 35
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->IS_ENCRYPTED:Lorg/apache/tika/metadata/Property;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Z)V

    .line 36
    :cond_3
    const-class v0, Lorg/apache/tika/exception/ZeroByteFileException$IgnoreZeroByteFileException;

    invoke-virtual {v9, v0}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v0, v4, Lorg/apache/tika/exception/ZeroByteFileException;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 37
    :cond_4
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->this$0:Lorg/apache/tika/parser/RecursiveParserWrapper;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper;->a(Lorg/apache/tika/parser/RecursiveParserWrapper;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    invoke-static {v1, v4, v2}, Lorg/apache/tika/utils/ParserUtils;->recordParserFailure(Lorg/apache/tika/parser/Parser;Ljava/lang/Throwable;Lorg/apache/tika/metadata/Metadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :goto_3
    invoke-virtual {v9, v11, v10}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v9, v12, v13}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v9, v14, v15}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 43
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->PARSE_TIME_MILLIS:Lorg/apache/tika/metadata/Property;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 44
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v3, v2}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->endEmbeddedDocument(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    if-eqz v17, :cond_6

    goto :goto_2

    .line 46
    :cond_5
    :try_start_2
    throw v4

    :catch_1
    move-exception v0

    move-object/from16 v3, v22

    move-object v4, v0

    .line 47
    throw v4

    :catch_2
    move-exception v0

    move-object/from16 v3, v22

    move-object v4, v0

    .line 48
    invoke-static {v4}, Lorg/apache/tika/exception/WriteLimitReachedException;->isWriteLimitReached(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 49
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->this$0:Lorg/apache/tika/parser/RecursiveParserWrapper;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper;->a(Lorg/apache/tika/parser/RecursiveParserWrapper;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    invoke-static {v1, v4, v2}, Lorg/apache/tika/utils/ParserUtils;->recordParserFailure(Lorg/apache/tika/parser/Parser;Ljava/lang/Throwable;Lorg/apache/tika/metadata/Metadata;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    invoke-virtual {v9, v11, v10}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v9, v12, v13}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v9, v14, v15}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 55
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->PARSE_TIME_MILLIS:Lorg/apache/tika/metadata/Property;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 56
    iget-object v0, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v0}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3, v2}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->endEmbeddedDocument(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    if-eqz v17, :cond_6

    goto/16 :goto_2

    :cond_6
    :goto_4
    return-void

    .line 58
    :cond_7
    :try_start_3
    throw v4

    .line 59
    :cond_8
    sget-object v0, Lorg/apache/tika/metadata/TikaCoreProperties;->WRITE_LIMIT_REACHED:Lorg/apache/tika/metadata/Property;

    const-string v5, "true"

    invoke-virtual {v2, v0, v5}, Lorg/apache/tika/metadata/Metadata;->add(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 60
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 61
    :goto_5
    invoke-virtual {v9, v11, v10}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v9, v12, v13}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v9, v14, v15}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 65
    sget-object v6, Lorg/apache/tika/metadata/TikaCoreProperties;->PARSE_TIME_MILLIS:Lorg/apache/tika/metadata/Property;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lorg/apache/tika/metadata/Metadata;->set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V

    .line 66
    iget-object v4, v1, Lorg/apache/tika/parser/RecursiveParserWrapper$EmbeddedParserDecorator;->parserState:Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;

    invoke-static {v4}, Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;->b(Lorg/apache/tika/parser/RecursiveParserWrapper$ParserState;)Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v3, v2}, Lorg/apache/tika/sax/AbstractRecursiveParserWrapperHandler;->endEmbeddedDocument(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    if-eqz v17, :cond_9

    .line 68
    invoke-virtual/range {v16 .. v16}, Lorg/apache/tika/io/TikaInputStream;->close()V

    .line 69
    :cond_9
    throw v0
.end method
