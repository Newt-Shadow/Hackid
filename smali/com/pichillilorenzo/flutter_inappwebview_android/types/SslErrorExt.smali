.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/SslErrorExt;
.super Landroid/net/http/SslError;
.source "SourceFile"


# direct methods
.method private constructor <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toMap(Landroid/net/http/SslError;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p0, v1, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq p0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p0, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq p0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-eq p0, v1, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "A generic error occurred"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "The date of the certificate is invalid"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string v1, "The certificate authority is not trusted"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const-string v1, "Hostname mismatch"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    const-string v1, "The certificate has expired"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_6
    const-string v1, "The certificate is not yet valid"

    .line 44
    .line 45
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    if-ltz p0, :cond_7

    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_7
    const-string p0, "code"

    .line 57
    .line 58
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string p0, "message"

    .line 62
    .line 63
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v2
.end method
