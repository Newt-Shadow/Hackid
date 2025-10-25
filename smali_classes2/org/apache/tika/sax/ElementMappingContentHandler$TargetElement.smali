.class public Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/sax/ElementMappingContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetElement"
.end annotation


# instance fields
.field private final attributesMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private final mappedTagName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->mappedTagName:Ljavax/xml/namespace/QName;

    .line 3
    iput-object p2, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttributesMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMappedTagName()Ljavax/xml/namespace/QName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->mappedTagName:Ljavax/xml/namespace/QName;

    .line 2
    .line 3
    return-object v0
.end method

.method public mapAttributes(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 8

    .line 1
    new-instance v6, Lorg/xml/sax/helpers/AttributesImpl;

    .line 2
    .line 3
    invoke-direct {v6}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v7, v0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge v7, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v1, Ljavax/xml/namespace/QName;

    .line 17
    .line 18
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljavax/xml/namespace/QName;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0}, Lorg/apache/tika/sax/ElementMappingContentHandler;->getQNameAsString(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v0, v6

    .line 58
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v6
.end method
