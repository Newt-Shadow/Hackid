.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/SslCertificateExt;
.super Landroid/net/http/SslCertificate;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslCertificate;",
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
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "UName"

    .line 10
    .line 11
    const-string v3, "OName"

    .line 12
    .line 13
    const-string v4, "DName"

    .line 14
    .line 15
    const-string v5, "CName"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v6, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v6, v0

    .line 54
    :goto_0
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v7, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move-object v7, v0

    .line 95
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v2, 0x1d

    .line 98
    .line 99
    if-lt v1, v2, :cond_3

    .line 100
    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/a;->a(Landroid/net/http/SslCertificate;)Ljava/security/cert/X509Certificate;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 108
    .line 109
    .line 110
    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->getX509CertFromSslCertHack(Landroid/net/http/SslCertificate;)Ljava/security/cert/X509Certificate;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 122
    .line 123
    .line 124
    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_2

    .line 126
    :catch_1
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    new-instance p0, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v5, "issuedBy"

    .line 152
    .line 153
    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v5, "issuedTo"

    .line 157
    .line 158
    invoke-interface {p0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const-string v5, "validNotAfterDate"

    .line 162
    .line 163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string v1, "validNotBeforeDate"

    .line 171
    .line 172
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const-string v1, "x509Certificate"

    .line 180
    .line 181
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    return-object p0
.end method
