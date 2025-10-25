.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private icon:Ljava/lang/Object;

.field private iconColor:Ljava/lang/String;

.field private id:I

.field private order:Ljava/lang/Integer;

.field private showAsAction:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 15
    .line 16
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;"
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
    const-string v1, "id"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v1, "title"

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "order"

    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    check-cast v5, Ljava/lang/Integer;

    .line 34
    .line 35
    const-string v1, "icon"

    .line 36
    .line 37
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v6, v2, Ljava/util/Map;

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/AndroidResource;->fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/AndroidResource;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    move-object v6, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    instance-of v1, v2, [B

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v6, v2

    .line 63
    :goto_1
    const-string v0, "iconColor"

    .line 64
    .line 65
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v7, v0

    .line 70
    check-cast v7, Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "showAsAction"

    .line 73
    .line 74
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-static {p0, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/Util;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;

    .line 87
    .line 88
    move-object v2, p0

    .line 89
    invoke-direct/range {v2 .. v8}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-object p0
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
    if-eqz p1, :cond_7

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
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;

    .line 20
    .line 21
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 22
    .line 23
    iget v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 24
    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    iget-boolean v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 29
    .line 30
    iget-boolean v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v0

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v0

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_7
    :goto_0
    return v0
.end method

.method public getIcon()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrder()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_1
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_2
    add-int/2addr v0, v2

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public isShowAsAction()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIcon(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setIconColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setOrder(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowAsAction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

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
    const-string v1, "InAppBrowserMenuItem{id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->id:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", title=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->title:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", order="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->order:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", icon="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->icon:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", iconColor=\'"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->iconColor:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", showAsAction="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/InAppBrowserMenuItem;->showAsAction:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x7d

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
