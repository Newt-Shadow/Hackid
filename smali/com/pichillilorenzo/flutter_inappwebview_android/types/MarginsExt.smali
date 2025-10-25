.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 3
    iput-wide p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 4
    iput-wide p5, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 5
    iput-wide p7, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;"
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
    new-instance v9, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;

    .line 6
    .line 7
    const-string v0, "top"

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-string v0, "right"

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Double;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-string v0, "bottom"

    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Double;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    const-string v0, "left"

    .line 44
    .line 45
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/Double;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    move-object v0, v9

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;-><init>(DDDD)V

    .line 57
    .line 58
    .line 59
    return-object v9
.end method

.method public static fromMargins(Landroid/print/PrintAttributes$Margins;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->milsToPixels(I)D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->milsToPixels(I)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->milsToPixels(I)D

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->milsToPixels(I)D

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 49
    .line 50
    return-object v0
.end method

.method private static milsToPixels(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3fb89374f05c8744L    # 0.09600001209449

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pixelsToMils(D)I
    .locals 2

    .line 1
    const-wide v0, 0x4024d555294c74afL    # 10.416665354331

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double/2addr p0, v0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    long-to-int p0, p0

    .line 12
    return p0
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
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;

    .line 20
    .line 21
    iget-wide v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 22
    .line 23
    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 24
    .line 25
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-wide v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 33
    .line 34
    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 35
    .line 36
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    iget-wide v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 44
    .line 45
    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 46
    .line 47
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    iget-wide v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 55
    .line 56
    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 57
    .line 58
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 67
    :cond_6
    :goto_1
    return v1
.end method

.method public getBottom()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRight()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    ushr-long v3, v0, v2

    .line 10
    .line 11
    xor-long/2addr v0, v3

    .line 12
    long-to-int v0, v0

    .line 13
    iget-wide v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    ushr-long v5, v3, v2

    .line 22
    .line 23
    xor-long/2addr v3, v5

    .line 24
    long-to-int v1, v3

    .line 25
    add-int/2addr v0, v1

    .line 26
    iget-wide v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    ushr-long v5, v3, v2

    .line 35
    .line 36
    xor-long/2addr v3, v5

    .line 37
    long-to-int v1, v3

    .line 38
    add-int/2addr v0, v1

    .line 39
    iget-wide v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    ushr-long v1, v3, v2

    .line 48
    .line 49
    xor-long/2addr v1, v3

    .line 50
    long-to-int v1, v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public setBottom(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 2
    .line 3
    return-void
.end method

.method public setLeft(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 2
    .line 3
    return-void
.end method

.method public setRight(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 2
    .line 3
    return-void
.end method

.method public setTop(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

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
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "top"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "right"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "bottom"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "left"

    .line 46
    .line 47
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public toMargins()Landroid/print/PrintAttributes$Margins;
    .locals 6

    .line 1
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 4
    .line 5
    invoke-static {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->pixelsToMils(D)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->pixelsToMils(D)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-wide v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 16
    .line 17
    invoke-static {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->pixelsToMils(D)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-wide v4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 22
    .line 23
    invoke-static {v4, v5}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->pixelsToMils(D)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
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
    const-string v1, "MarginsExt{top="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->top:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", right="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->right:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", bottom="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->bottom:D

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", left="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/MarginsExt;->left:D

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
