.class Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;
.super Lorg/apache/tika/config/TikaConfig$XmlLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/config/TikaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodingDetectorXmlLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tika/config/TikaConfig$XmlLoader<",
        "Lorg/apache/tika/detect/EncodingDetector;",
        "Lorg/apache/tika/detect/EncodingDetector;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/tika/config/TikaConfig$XmlLoader;-><init>(Lorg/apache/tika/config/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/config/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/EncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/CompositeEncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method createComposite(Ljava/util/List;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/CompositeEncodingDetector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;",
            "Lorg/apache/tika/mime/MimeTypes;",
            "Lorg/apache/tika/config/ServiceLoader;",
            ")",
            "Lorg/apache/tika/detect/CompositeEncodingDetector;"
        }
    .end annotation

    .line 3
    new-instance p2, Lorg/apache/tika/detect/CompositeEncodingDetector;

    invoke-direct {p2, p1}, Lorg/apache/tika/detect/CompositeEncodingDetector;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method createComposite(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/EncodingDetector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/config/Param;",
            ">;",
            "Lorg/apache/tika/mime/MimeTypes;",
            "Lorg/apache/tika/config/ServiceLoader;",
            ")",
            "Lorg/apache/tika/detect/EncodingDetector;"
        }
    .end annotation

    const/4 p4, 0x2

    const/4 p5, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array p4, p4, [Ljava/lang/Class;

    .line 4
    const-class v1, Lorg/apache/tika/config/ServiceLoader;

    aput-object v1, p4, p5

    const-class v1, Ljava/util/Collection;

    aput-object v1, p4, v0

    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    .line 5
    filled-new-array {p6, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/tika/detect/EncodingDetector;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->a()Lmf/c;

    move-result-object p3

    const-string p4, "couldn\'t find constructor for service loader + collection for {}"

    invoke-interface {p3, p4, p1}, Lmf/c;->q(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_0

    :try_start_1
    new-array p4, v0, [Ljava/lang/Class;

    .line 7
    const-class p6, Ljava/util/List;

    aput-object p6, p4, p5

    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    .line 8
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/tika/detect/EncodingDetector;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, p2

    goto :goto_1

    .line 9
    :catch_1
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->a()Lmf/c;

    move-result-object p2

    const-string p4, "couldn\'t find constructor for EncodingDetector(List) for {}"

    invoke-interface {p2, p4, p1}, Lmf/c;->q(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object p3
.end method

.method bridge synthetic createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/EncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method createDefault(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/EncodingDetector;
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/apache/tika/config/TikaConfig;->getDefaultEncodingDetector(Lorg/apache/tika/config/ServiceLoader;)Lorg/apache/tika/detect/CompositeEncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic decorate(Ljava/lang/Object;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/tika/detect/EncodingDetector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->decorate(Lorg/apache/tika/detect/EncodingDetector;Lorg/w3c/dom/Element;)Lorg/apache/tika/detect/EncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method decorate(Lorg/apache/tika/detect/EncodingDetector;Lorg/w3c/dom/Element;)Lorg/apache/tika/detect/EncodingDetector;
    .locals 0

    .line 1
    return-object p1
.end method

.method getLoaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/tika/detect/EncodingDetector;

    .line 2
    .line 3
    return-object v0
.end method

.method getLoaderTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "encodingDetector"

    return-object v0
.end method

.method getParentTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "encodingDetectors"

    return-object v0
.end method

.method isComposite(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;)Z"
        }
    .end annotation

    .line 3
    const-class v0, Lorg/apache/tika/detect/CompositeEncodingDetector;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic isComposite(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/tika/detect/EncodingDetector;

    invoke-virtual {p0, p1}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->isComposite(Lorg/apache/tika/detect/EncodingDetector;)Z

    move-result p1

    return p1
.end method

.method isComposite(Lorg/apache/tika/detect/EncodingDetector;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lorg/apache/tika/detect/CompositeEncodingDetector;

    return p1
.end method

.method bridge synthetic preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/config/TikaConfig$EncodingDetectorXmlLoader;->preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Lorg/apache/tika/detect/EncodingDetector;

    move-result-object p1

    return-object p1
.end method

.method preLoadOne(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tika/mime/MimeTypes;)Lorg/apache/tika/detect/EncodingDetector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tika/detect/EncodingDetector;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/tika/mime/MimeTypes;",
            ")",
            "Lorg/apache/tika/detect/EncodingDetector;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method supportsComposite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
