.class public Lorg/apache/tika/sax/SafeContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/sax/SafeContentHandler$StringOutput;,
        Lorg/apache/tika/sax/SafeContentHandler$Output;
    }
.end annotation


# static fields
.field private static final REPLACEMENT:[C


# instance fields
.field private final charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

.field private final ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0xfffd

    .line 6
    .line 7
    .line 8
    aput-char v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/apache/tika/sax/a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lorg/apache/tika/sax/a;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 10
    .line 11
    new-instance p1, Lorg/apache/tika/sax/b;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lorg/apache/tika/sax/b;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->lambda$new$1([CII)V

    return-void
.end method

.method static synthetic access$001(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->ignorableWhitespace([CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->lambda$new$0([CII)V

    return-void
.end method

.method private filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 3

    .line 1
    add-int/2addr p3, p2

    .line 2
    move v0, p2

    .line 3
    :goto_0
    if-ge p2, p3, :cond_2

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointAt([CII)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, p2

    .line 14
    invoke-virtual {p0, v1}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-le p2, v0, :cond_0

    .line 21
    .line 22
    sub-int/2addr p2, v0

    .line 23
    invoke-interface {p4, p1, v0, p2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/tika/sax/SafeContentHandler;->writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 27
    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_1
    move p2, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sub-int/2addr p3, v0

    .line 33
    invoke-interface {p4, p1, v0, p3}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private isInvalid(Ljava/lang/String;)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    .line 5
    invoke-virtual {p0, v2}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$0([CII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->access$101(Lorg/apache/tika/sax/SafeContentHandler;[CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$1([CII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->access$001(Lorg/apache/tika/sax/SafeContentHandler;[CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endDocument()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endDocument()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected isInvalid(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const v0, 0xe000

    if-ge p1, v0, :cond_3

    const v0, 0xd7ff

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    const v0, 0xfffd

    if-le p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    const v0, 0x10ffff

    if-le p1, v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_3

    .line 8
    .line 9
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0, v2}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    .line 20
    .line 21
    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 22
    .line 23
    .line 24
    move v9, v0

    .line 25
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v9, v3, :cond_1

    .line 30
    .line 31
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-lt v9, v1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, v3}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    new-instance v4, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v4, v5}, Lorg/apache/tika/sax/SafeContentHandler$StringOutput;-><init>(Lorg/apache/tika/sax/c;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-direct {p0, v5, v0, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_0
    move-object v8, v3

    .line 65
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    move-object v3, v2

    .line 82
    invoke-virtual/range {v3 .. v8}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object p4, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tika/sax/ContentHandlerDecorator;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method protected writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    array-length v2, v0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
