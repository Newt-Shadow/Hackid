.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public getProtectionSpace()Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setProtectionSpace(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

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
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->toMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "protectionSpace"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
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
    const-string v1, "URLAuthenticationChallenge{protectionSpace="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLAuthenticationChallenge;->protectionSpace:Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
