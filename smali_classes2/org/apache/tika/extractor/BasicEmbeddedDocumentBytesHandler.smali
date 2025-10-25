.class public Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;
.super Lorg/apache/tika/extractor/AbstractEmbeddedDocumentBytesHandler;
.source "SourceFile"


# instance fields
.field private final config:Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

.field docBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/extractor/AbstractEmbeddedDocumentBytesHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;->docBytes:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;->config:Lorg/apache/tika/pipes/extractor/EmbeddedDocumentBytesConfig;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public add(ILorg/apache/tika/metadata/Metadata;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/extractor/AbstractEmbeddedDocumentBytesHandler;->add(ILorg/apache/tika/metadata/Metadata;Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;->docBytes:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p3}, Lcf/g;->u(Ljava/io/InputStream;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getDocument(I)Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/g$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/g$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tika/extractor/BasicEmbeddedDocumentBytesHandler;->docBytes:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ldf/b;->d([B)Ldf/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/apache/commons/io/input/g$b;

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/apache/commons/io/input/g$b;->l()Lorg/apache/commons/io/input/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
