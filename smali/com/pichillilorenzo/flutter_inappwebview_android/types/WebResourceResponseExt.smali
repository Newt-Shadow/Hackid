.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private data:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 15
    .line 16
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "contentType"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "contentEncoding"

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "statusCode"

    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, Ljava/lang/Integer;

    .line 31
    .line 32
    const-string v0, "reasonPhrase"

    .line 33
    .line 34
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v5, v0

    .line 39
    check-cast v5, Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "headers"

    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v6, v0

    .line 48
    check-cast v6, Ljava/util/Map;

    .line 49
    .line 50
    const-string v0, "data"

    .line 51
    .line 52
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    move-object v7, p0

    .line 57
    check-cast v7, [B

    .line 58
    .line 59
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;

    .line 60
    .line 61
    move-object v1, p0

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public static fromWebResourceResponse(Landroid/webkit/WebResourceResponse;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->readAllBytes(Ljava/io/InputStream;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_c

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    :goto_1
    return v0

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    :goto_2
    return v0

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_8
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v1, :cond_9

    .line 92
    .line 93
    :goto_3
    return v0

    .line 94
    :cond_9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 95
    .line 96
    if-eqz v1, :cond_a

    .line 97
    .line 98
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_b

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_a
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 108
    .line 109
    if-eqz v1, :cond_b

    .line 110
    .line 111
    :goto_4
    return v0

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 113
    .line 114
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 115
    .line 116
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1

    .line 121
    :cond_c
    :goto_5
    return v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :cond_4
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 65
    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v0, v1

    .line 71
    return v0
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 2
    .line 3
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "contentType"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "contentEncoding"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "statusCode"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "reasonPhrase"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "headers"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "data"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WebResourceResponseExt{contentType=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", contentEncoding=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->contentEncoding:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", statusCode="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->statusCode:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", reasonPhrase=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->reasonPhrase:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", headers="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->headers:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", data="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/WebResourceResponseExt;->data:[B

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x7d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method
