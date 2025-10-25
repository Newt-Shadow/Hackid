.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private host:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private sslCertificate:Landroid/net/http/SslCertificate;

.field private sslError:Landroid/net/http/SslError;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->id:Ljava/lang/Long;

    .line 10
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 13
    iput p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 6
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 7
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

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
    goto :goto_3

    .line 19
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 20
    .line 21
    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 22
    .line 23
    iget v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    return v1

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    :goto_0
    return v1

    .line 68
    :cond_6
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_8

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    :goto_1
    return v1

    .line 86
    :cond_8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 89
    .line 90
    if-eqz v2, :cond_9

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    goto :goto_2

    .line 97
    :cond_9
    if-nez p1, :cond_a

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_a
    move v0, v1

    .line 101
    :goto_2
    return v0

    .line 102
    :cond_b
    :goto_3
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSslCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSslError()Landroid/net/http/SslError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v1, v2

    .line 47
    :goto_1
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :cond_2
    add-int/2addr v0, v2

    .line 59
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSslCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 2
    .line 3
    return-void
.end method

.method public setSslError(Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

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
    const-string v1, "host"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "protocol"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "realm"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "port"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/SslCertificateExt;->toMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "sslCertificate"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/SslErrorExt;->toMap(Landroid/net/http/SslError;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "sslError"

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v1, "authenticationMethod"

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v1, "distinguishedNames"

    .line 67
    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v1, "receivesCredentialSecurely"

    .line 72
    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v1, "isProxy"

    .line 77
    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v1, "proxyType"

    .line 82
    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
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
    const-string v1, "URLProtectionSpace{host=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->host:Ljava/lang/String;

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
    const-string v2, ", protocol=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->protocol:Ljava/lang/String;

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
    const-string v2, ", realm=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->realm:Ljava/lang/String;

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
    const-string v1, ", port="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->port:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", sslCertificate="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslCertificate:Landroid/net/http/SslCertificate;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", sslError="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->sslError:Landroid/net/http/SslError;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x7d

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
