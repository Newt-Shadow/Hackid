.class public final Lne/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lne/p;

.field private final b:Ljavax/net/SocketFactory;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;

.field private final e:Lne/f;

.field private final f:Lne/b;

.field private final g:Ljava/net/Proxy;

.field private final h:Ljava/net/ProxySelector;

.field private final i:Lne/t;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILne/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lne/f;Lne/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 1

    .line 1
    const-string v0, "uriHost"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dns"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "socketFactory"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "proxyAuthenticator"

    .line 17
    .line 18
    invoke-static {p8, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "protocols"

    .line 22
    .line 23
    invoke-static {p10, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "connectionSpecs"

    .line 27
    .line 28
    invoke-static {p11, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "proxySelector"

    .line 32
    .line 33
    invoke-static {p12, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lne/a;->a:Lne/p;

    .line 40
    .line 41
    iput-object p4, p0, Lne/a;->b:Ljavax/net/SocketFactory;

    .line 42
    .line 43
    iput-object p5, p0, Lne/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 44
    .line 45
    iput-object p6, p0, Lne/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 46
    .line 47
    iput-object p7, p0, Lne/a;->e:Lne/f;

    .line 48
    .line 49
    iput-object p8, p0, Lne/a;->f:Lne/b;

    .line 50
    .line 51
    iput-object p9, p0, Lne/a;->g:Ljava/net/Proxy;

    .line 52
    .line 53
    iput-object p12, p0, Lne/a;->h:Ljava/net/ProxySelector;

    .line 54
    .line 55
    new-instance p3, Lne/t$a;

    .line 56
    .line 57
    invoke-direct {p3}, Lne/t$a;-><init>()V

    .line 58
    .line 59
    .line 60
    if-eqz p5, :cond_0

    .line 61
    .line 62
    const-string p4, "https"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string p4, "http"

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p3, p4}, Lne/t$a;->v(Ljava/lang/String;)Lne/t$a;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3, p1}, Lne/t$a;->l(Ljava/lang/String;)Lne/t$a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lne/t$a;->r(I)Lne/t$a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lne/t$a;->a()Lne/t;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lne/a;->i:Lne/t;

    .line 84
    .line 85
    invoke-static {p10}, Loe/d;->R(Ljava/util/List;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lne/a;->j:Ljava/util/List;

    .line 90
    .line 91
    invoke-static {p11}, Loe/d;->R(Ljava/util/List;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lne/a;->k:Ljava/util/List;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final a()Lne/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->e:Lne/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lne/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->a:Lne/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Lne/a;)Z
    .locals 2

    .line 1
    const-string v0, "that"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lne/a;->a:Lne/p;

    .line 7
    .line 8
    iget-object v1, p1, Lne/a;->a:Lne/p;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lne/a;->f:Lne/b;

    .line 17
    .line 18
    iget-object v1, p1, Lne/a;->f:Lne/b;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lne/a;->j:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, p1, Lne/a;->j:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lne/a;->k:Ljava/util/List;

    .line 37
    .line 38
    iget-object v1, p1, Lne/a;->k:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lne/a;->h:Ljava/net/ProxySelector;

    .line 47
    .line 48
    iget-object v1, p1, Lne/a;->h:Ljava/net/ProxySelector;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lne/a;->g:Ljava/net/Proxy;

    .line 57
    .line 58
    iget-object v1, p1, Lne/a;->g:Ljava/net/Proxy;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lne/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    .line 68
    iget-object v1, p1, Lne/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lne/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 77
    .line 78
    iget-object v1, p1, Lne/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    iget-object v0, p0, Lne/a;->e:Lne/f;

    .line 87
    .line 88
    iget-object v1, p1, Lne/a;->e:Lne/f;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lne/a;->i:Lne/t;

    .line 97
    .line 98
    invoke-virtual {v0}, Lne/t;->l()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object p1, p1, Lne/a;->i:Lne/t;

    .line 103
    .line 104
    invoke-virtual {p1}, Lne/t;->l()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-ne v0, p1, :cond_0

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    return p1
.end method

.method public final e()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lne/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lne/a;->i:Lne/t;

    .line 6
    .line 7
    check-cast p1, Lne/a;

    .line 8
    .line 9
    iget-object v1, p1, Lne/a;->i:Lne/t;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lne/a;->d(Lne/a;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->g:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lne/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->f:Lne/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lne/a;->i:Lne/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/t;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20f

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget-object v0, p0, Lne/a;->a:Lne/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Lne/a;->f:Lne/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    .line 30
    iget-object v0, p0, Lne/a;->j:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    mul-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    iget-object v0, p0, Lne/a;->k:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    iget-object v0, p0, Lne/a;->h:Ljava/net/ProxySelector;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    mul-int/lit8 v1, v1, 0x1f

    .line 56
    .line 57
    iget-object v0, p0, Lne/a;->g:Ljava/net/Proxy;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    mul-int/lit8 v1, v1, 0x1f

    .line 65
    .line 66
    iget-object v0, p0, Lne/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x1f

    .line 74
    .line 75
    iget-object v0, p0, Lne/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 76
    .line 77
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr v1, v0

    .line 82
    mul-int/lit8 v1, v1, 0x1f

    .line 83
    .line 84
    iget-object v0, p0, Lne/a;->e:Lne/f;

    .line 85
    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v1, v0

    .line 91
    return v1
.end method

.method public final i()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->h:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->b:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lne/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a;->i:Lne/t;

    .line 2
    .line 3
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
    const-string v1, "Address{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lne/a;->i:Lne/t;

    .line 12
    .line 13
    invoke-virtual {v1}, Lne/t;->h()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3a

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lne/a;->i:Lne/t;

    .line 26
    .line 27
    invoke-virtual {v1}, Lne/t;->l()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lne/a;->g:Ljava/net/Proxy;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v2, "proxy="

    .line 44
    .line 45
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "proxySelector="

    .line 51
    .line 52
    iget-object v2, p0, Lne/a;->h:Ljava/net/ProxySelector;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x7d

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
