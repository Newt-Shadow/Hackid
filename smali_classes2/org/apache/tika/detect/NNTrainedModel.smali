.class public Lorg/apache/tika/detect/NNTrainedModel;
.super Lorg/apache/tika/detect/TrainedModel;
.source "SourceFile"


# instance fields
.field private final Theta1:[[F

.field private final Theta2:[[F

.field private final numOfHidden:I

.field private final numOfInputs:I

.field private final numOfOutputs:I


# direct methods
.method public constructor <init>(III[F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/detect/TrainedModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/tika/detect/NNTrainedModel;->numOfInputs:I

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/tika/detect/NNTrainedModel;->numOfHidden:I

    .line 7
    .line 8
    iput p3, p0, Lorg/apache/tika/detect/NNTrainedModel;->numOfOutputs:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    filled-new-array {p2, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [[F

    .line 23
    .line 24
    iput-object p1, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta1:[[F

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    filled-new-array {p3, p2}, [I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, [[F

    .line 37
    .line 38
    iput-object p1, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta2:[[F

    .line 39
    .line 40
    invoke-direct {p0, p4}, Lorg/apache/tika/detect/NNTrainedModel;->populateThetas([F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private populateThetas([F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta1:[[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    aget-object v0, v0, v2

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v0, :cond_1

    .line 11
    .line 12
    move v5, v2

    .line 13
    :goto_1
    if-ge v5, v1, :cond_0

    .line 14
    .line 15
    iget-object v6, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta1:[[F

    .line 16
    .line 17
    aget-object v6, v6, v5

    .line 18
    .line 19
    aget v7, p1, v4

    .line 20
    .line 21
    aput v7, v6, v3

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta2:[[F

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    aget-object v0, v0, v2

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move v3, v2

    .line 38
    :goto_2
    if-ge v3, v0, :cond_3

    .line 39
    .line 40
    move v5, v2

    .line 41
    :goto_3
    if-ge v5, v1, :cond_2

    .line 42
    .line 43
    iget-object v6, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta2:[[F

    .line 44
    .line 45
    aget-object v6, v6, v5

    .line 46
    .line 47
    aget v7, p1, v4

    .line 48
    .line 49
    aput v7, v6, v3

    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    return-void
.end method


# virtual methods
.method public predict([D)D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public predict([F)F
    .locals 14

    .line 2
    iget-object v0, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta1:[[F

    array-length v1, v0

    const/4 v2, 0x0

    .line 3
    aget-object v0, v0, v2

    array-length v0, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 5
    aput v4, v3, v2

    move v4, v2

    :goto_0
    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ge v4, v1, :cond_1

    move v9, v2

    :goto_1
    if-ge v9, v0, :cond_0

    .line 6
    iget-object v10, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta1:[[F

    aget-object v10, v10, v4

    aget v10, v10, v9

    aget v11, p1, v9

    mul-float/2addr v10, v11

    float-to-double v10, v10

    add-double/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    neg-double v5, v5

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    add-double/2addr v5, v7

    div-double/2addr v7, v5

    add-int/lit8 v4, v4, 0x1

    double-to-float v5, v7

    .line 8
    aput v5, v3, v4

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta2:[[F

    array-length v0, p1

    .line 10
    aget-object p1, p1, v2

    array-length p1, p1

    .line 11
    new-array v1, v0, [F

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    move v9, v2

    move-wide v10, v5

    :goto_3
    if-ge v9, p1, :cond_2

    .line 12
    iget-object v12, p0, Lorg/apache/tika/detect/NNTrainedModel;->Theta2:[[F

    aget-object v12, v12, v4

    aget v12, v12, v9

    aget v13, v3, v9

    mul-float/2addr v12, v13

    float-to-double v12, v12

    add-double/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    neg-double v9, v10

    .line 13
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    add-double/2addr v9, v7

    div-double v9, v7, v9

    double-to-float v9, v9

    .line 14
    aput v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 15
    :cond_3
    aget p1, v1, v2

    return p1
.end method
