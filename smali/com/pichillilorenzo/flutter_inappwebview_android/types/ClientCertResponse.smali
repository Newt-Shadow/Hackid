.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Ljava/lang/Integer;

.field private certificatePassword:Ljava/lang/String;

.field private certificatePath:Ljava/lang/String;

.field private keyStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;"
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
    const-string v0, "certificatePath"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "certificatePassword"

    .line 14
    .line 15
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "keyStoreType"

    .line 22
    .line 23
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "action"

    .line 30
    .line 31
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Integer;

    .line 36
    .line 37
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;

    .line 38
    .line 39
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    return-object v3
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
    if-eqz p1, :cond_8

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
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    :goto_0
    return v1

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    return v1

    .line 61
    :cond_5
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    if-nez p1, :cond_7

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_7
    move v0, v1

    .line 76
    :goto_1
    return v0

    .line 77
    :cond_8
    :goto_2
    return v1
.end method

.method public getAction()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCertificatePassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCertificatePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :cond_1
    add-int/2addr v0, v2

    .line 41
    return v0
.end method

.method public setAction(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCertificatePassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCertificatePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    const-string v1, "ClientCertResponse{certificatePath=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePath:Ljava/lang/String;

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
    const-string v2, ", certificatePassword=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->certificatePassword:Ljava/lang/String;

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
    const-string v2, ", keyStoreType=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->keyStoreType:Ljava/lang/String;

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
    const-string v1, ", action="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/ClientCertResponse;->action:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x7d

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
