.class Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;
.super Lorg/apache/tika/config/TikaConfig$XmlLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/config/TikaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserXmlLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tika/config/TikaConfig$XmlLoader<",
        "Lorg/apache/tika/parser/CompositeParser;",
        "Lorg/apache/tika/parser/Parser;",
        ">;"
    }
.end annotation


# instance fields
.field private final encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

.field private final renderer:Lorg/apache/tika/renderer/Renderer;


# direct methods
.method private constructor <init>(Lorg/apache/tika/detect/EncodingDetector;Lorg/apache/tika/renderer/Renderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig$XmlLoader;-><init>(Lorg/apache/tika/config/k;)V

    .line 3
    iput-object p1, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

    .line 4
    iput-object p2, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->renderer:Lorg/apache/tika/renderer/Renderer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/detect/EncodingDetector;Lorg/apache/tika/renderer/Renderer;Lorg/apache/tika/config/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;-><init>(Lorg/apache/tika/detect/EncodingDetector;Lorg/apache/tika/renderer/Renderer;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/CompositeParser;

    move-result-object p1

    return-object p1
.end method

.method createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/CompositeParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tika/parser/Parser;",
            ">;",
            "Lorg/apache/tika/mime/MimeTypes;",
            "Lorg/apache/tika/config/ServiceLoader;",
            ")",
            "Lorg/apache/tika/parser/CompositeParser;"
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object p2

    .line 4
    new-instance p3, Lorg/apache/tika/parser/CompositeParser;

    invoke-direct {p3, p2, p1}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V

    return-object p3
.end method

.method createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/Parser;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tika/parser/Parser;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/config/Param;",
            ">;",
            "Lorg/apache/tika/mime/MimeTypes;",
            "Lorg/apache/tika/config/ServiceLoader;",
            ")",
            "Lorg/apache/tika/parser/Parser;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    .line 5
    const-class v5, Lorg/apache/tika/detect/EncodingDetector;

    const-class v6, Lorg/apache/tika/config/ServiceLoader;

    const-class v7, Ljava/util/Collection;

    const-class v8, Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 6
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v8, v11, v15

    aput-object v6, v11, v14

    aput-object v7, v11, v13

    aput-object v5, v11, v12

    .line 7
    const-class v16, Lorg/apache/tika/renderer/Renderer;

    const/16 v17, 0x4

    aput-object v16, v11, v17

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v15

    aput-object v4, v10, v14

    aput-object v3, v10, v13

    .line 8
    iget-object v13, v0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

    aput-object v13, v10, v12

    iget-object v13, v0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->renderer:Lorg/apache/tika/renderer/Renderer;

    const/16 v17, 0x4

    aput-object v13, v10, v17

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/tika/parser/Parser;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_0

    const/4 v11, 0x4

    :try_start_1
    new-array v13, v11, [Ljava/lang/Class;

    aput-object v8, v13, v15

    aput-object v6, v13, v14

    const/4 v11, 0x2

    aput-object v7, v13, v11

    aput-object v5, v13, v12

    .line 9
    invoke-virtual {v1, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v15

    aput-object v4, v11, v14

    const/4 v13, 0x2

    aput-object v3, v11, v13

    .line 10
    iget-object v13, v0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

    aput-object v13, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tika/parser/Parser;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v5

    :catch_1
    :cond_0
    if-nez v10, :cond_1

    :try_start_2
    new-array v5, v12, [Ljava/lang/Class;

    aput-object v8, v5, v15

    aput-object v6, v5, v14

    const/4 v6, 0x2

    aput-object v7, v5, v6

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 12
    filled-new-array {v9, v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/parser/Parser;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v4

    .line 13
    :catch_2
    :cond_1
    const-class v4, Ljava/util/List;

    if-nez v10, :cond_2

    :try_start_3
    new-array v5, v12, [Ljava/lang/Class;

    aput-object v8, v5, v15

    aput-object v4, v5, v14

    const/4 v6, 0x2

    aput-object v7, v5, v6

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 15
    filled-new-array {v9, v2, v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tika/parser/Parser;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v5

    :catch_3
    :cond_2
    if-nez v10, :cond_3

    :try_start_4
    new-array v5, v12, [Ljava/lang/Class;

    aput-object v8, v5, v15

    aput-object v7, v5, v14

    .line 16
    const-class v6, Ljava/util/Map;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 17
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object/from16 v6, p4

    .line 18
    filled-new-array {v9, v2, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tika/parser/Parser;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v5

    :catch_4
    :cond_3
    if-nez v10, :cond_4

    const/4 v5, 0x2

    :try_start_5
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v8, v5, v15

    aput-object v4, v5, v14

    .line 19
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 20
    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/parser/Parser;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v10, v4

    :catch_5
    :cond_4
    if-nez v10, :cond_6

    .line 21
    const-class v4, Lorg/apache/tika/parser/ParserDecorator;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 22
    :try_start_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v14, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/tika/parser/CompositeParser;

    if-eqz v4, :cond_5

    .line 24
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/parser/CompositeParser;

    goto :goto_1

    .line 25
    :cond_5
    new-instance v4, Lorg/apache/tika/parser/CompositeParser;

    invoke-direct {v4, v9, v2, v3}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;Ljava/util/Collection;)V

    move-object v2, v4

    :goto_1
    new-array v3, v14, [Ljava/lang/Class;

    .line 26
    const-class v4, Lorg/apache/tika/parser/Parser;

    aput-object v4, v3, v15

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 27
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/parser/Parser;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v1

    :catch_6
    :cond_6
    return-object v10
.end method

.method bridge synthetic createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/CompositeParser;

    move-result-object p1

    return-object p1
.end method

.method createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/parser/CompositeParser;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

    iget-object v1, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->renderer:Lorg/apache/tika/renderer/Renderer;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/tika/config/TikaConfig;->d(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;Lorg/apache/tika/detect/EncodingDetector;Lorg/apache/tika/renderer/Renderer;)Lorg/apache/tika/parser/CompositeParser;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic decorate(Ljava/lang/Object;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tika/parser/Parser;

    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->decorate(Lorg/apache/tika/parser/Parser;Lorg/w3c/dom/Element;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    return-object p1
.end method

.method decorate(Lorg/apache/tika/parser/Parser;Lorg/w3c/dom/Element;)Lorg/apache/tika/parser/Parser;
    .locals 2

    const-string v0, "mime"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/tika/config/TikaConfig;->i(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p1, v0}, Lorg/apache/tika/parser/ParserDecorator;->withTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    :cond_0
    const-string v0, "mime-exclude"

    .line 5
    invoke-static {p2, v0}, Lorg/apache/tika/config/TikaConfig;->i(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Lorg/apache/tika/parser/ParserDecorator;->withoutTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method getLoaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/tika/parser/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method getLoaderTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "parser"

    return-object v0
.end method

.method getParentTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "parsers"

    return-object v0
.end method

.method isComposite(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;)Z"
        }
    .end annotation

    .line 3
    const-class v0, Lorg/apache/tika/parser/CompositeParser;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/tika/parser/multiple/AbstractMultipleParser;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/apache/tika/parser/ParserDecorator;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method bridge synthetic isComposite(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tika/parser/Parser;

    invoke-virtual {p0, p1}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->isComposite(Lorg/apache/tika/parser/Parser;)Z

    move-result p1

    return p1
.end method

.method isComposite(Lorg/apache/tika/parser/Parser;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lorg/apache/tika/parser/CompositeParser;

    return p1
.end method

.method bridge synthetic newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->newInstance(Ljava/lang/Class;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    return-object p1
.end method

.method newInstance(Ljava/lang/Class;)Lorg/apache/tika/parser/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;)",
            "Lorg/apache/tika/parser/Parser;"
        }
    .end annotation

    .line 2
    const-class v0, Lorg/apache/tika/parser/AbstractEncodingDetectorParser;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lorg/apache/tika/detect/EncodingDetector;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->encodingDetector:Lorg/apache/tika/detect/EncodingDetector;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tika/parser/Parser;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tika/parser/Parser;

    .line 6
    :goto_0
    instance-of v0, p1, Lorg/apache/tika/parser/RenderingParser;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lorg/apache/tika/parser/RenderingParser;

    iget-object v1, p0, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->renderer:Lorg/apache/tika/renderer/Renderer;

    invoke-interface {v0, v1}, Lorg/apache/tika/parser/RenderingParser;->setRenderer(Lorg/apache/tika/renderer/Renderer;)V

    :cond_1
    return-object p1
.end method

.method bridge synthetic preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/config/TikaConfig$ParserXmlLoader;->preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Lorg/apache/tika/parser/Parser;

    move-result-object p1

    return-object p1
.end method

.method preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Lorg/apache/tika/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/parser/Parser;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/tika/mime/MimeTypes;",
            ")",
            "Lorg/apache/tika/parser/Parser;"
        }
    .end annotation

    .line 2
    const-class p3, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/tika/exception/TikaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoDetectParser not supported in a <parser> configuration element: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method supportsComposite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
