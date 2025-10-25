.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;
.super Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;
.source "SourceFile"


# instance fields
.field private previousFailureCount:I

.field proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;ILcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    if-eqz p1, :cond_6

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
    goto :goto_1

    .line 19
    :cond_1
    invoke-super {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;

    .line 27
    .line 28
    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 29
    .line 30
    iget v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    if-nez p1, :cond_5

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 51
    :cond_6
    :goto_1
    return v1
.end method

.method public getPreviousFailureCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getProposedCredential()Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public setPreviousFailureCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setProposedCredential(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 2
    .line 3
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
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
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->toMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "previousFailureCount"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->toMap()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const-string v3, "proposedCredential"

    .line 28
    .line 29
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v1, "failureResponse"

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string v1, "error"

    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpAuthenticationChallenge{previousFailureCount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->previousFailureCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", proposedCredential="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/HttpAuthenticationChallenge;->proposedCredential:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "} "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
