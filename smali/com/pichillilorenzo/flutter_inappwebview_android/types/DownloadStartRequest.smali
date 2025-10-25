.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentDisposition:Ljava/lang/String;

.field private contentLength:J

.field private mimeType:Ljava/lang/String;

.field private suggestedFilename:Ljava/lang/String;

.field private textEncodingName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 13
    .line 14
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_b

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 22
    .line 23
    iget-wide v4, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_5

    .line 61
    .line 62
    return v1

    .line 63
    :cond_5
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_6

    .line 72
    .line 73
    return v1

    .line 74
    :cond_6
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v2, :cond_8

    .line 90
    .line 91
    :goto_0
    return v1

    .line 92
    :cond_8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_9

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    goto :goto_1

    .line 103
    :cond_9
    if-nez p1, :cond_a

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_a
    move v0, v1

    .line 107
    :goto_1
    return v0

    .line 108
    :cond_b
    :goto_2
    return v1
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSuggestedFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    ushr-long v3, v1, v3

    .line 41
    .line 42
    xor-long/2addr v1, v3

    .line 43
    long-to-int v1, v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v1, v2

    .line 58
    :goto_0
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :cond_1
    add-int/2addr v0, v2

    .line 70
    return v0
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 2
    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSuggestedFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextEncodingName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

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
    const-string v1, "url"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "userAgent"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "contentDisposition"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "mimeType"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "contentLength"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v1, "suggestedFilename"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v1, "textEncodingName"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DownloadStartRequest{url=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->url:Ljava/lang/String;

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
    const-string v2, ", userAgent=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->userAgent:Ljava/lang/String;

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
    const-string v2, ", contentDisposition=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentDisposition:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", mimeType=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->mimeType:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", contentLength="

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->contentLength:J

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", suggestedFilename=\'"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->suggestedFilename:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", textEncodingName=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/DownloadStartRequest;->textEncodingName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x7d

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
