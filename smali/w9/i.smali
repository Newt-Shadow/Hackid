.class abstract Lw9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Lv9/a;->b:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    filled-new-array {v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [[F

    .line 17
    .line 18
    sput-object v0, Lw9/i;->a:[[F

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move v2, v0

    .line 22
    :goto_0
    sget-object v3, Lv9/a;->b:[I

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    if-ge v2, v4, :cond_2

    .line 26
    .line 27
    aget v3, v3, v2

    .line 28
    .line 29
    and-int/lit8 v4, v3, 0x1

    .line 30
    .line 31
    move v5, v0

    .line 32
    :goto_1
    if-ge v5, v1, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_2
    and-int/lit8 v7, v3, 0x1

    .line 36
    .line 37
    if-ne v7, v4, :cond_0

    .line 38
    .line 39
    const/high16 v7, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr v6, v7

    .line 42
    shr-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    sget-object v4, Lw9/i;->a:[[F

    .line 46
    .line 47
    aget-object v4, v4, v2

    .line 48
    .line 49
    rsub-int/lit8 v8, v5, 0x8

    .line 50
    .line 51
    add-int/lit8 v8, v8, -0x1

    .line 52
    .line 53
    const/high16 v9, 0x41880000    # 17.0f

    .line 54
    .line 55
    div-float/2addr v6, v9

    .line 56
    aput v6, v4, v8

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    move v4, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method private static a([I)I
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    array-length v4, p0

    .line 6
    if-ge v3, v4, :cond_2

    .line 7
    .line 8
    move v4, v2

    .line 9
    :goto_1
    aget v5, p0, v3

    .line 10
    .line 11
    if-ge v4, v5, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    shl-long/2addr v0, v5

    .line 15
    rem-int/lit8 v6, v3, 0x2

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    move v5, v2

    .line 21
    :goto_2
    int-to-long v5, v5

    .line 22
    or-long/2addr v0, v5

    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    long-to-int p0, v0

    .line 30
    return p0
.end method

.method private static b([I)I
    .locals 10

    .line 1
    invoke-static {p0}, Lk9/a;->d([I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    new-array v2, v1, [F

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-le v0, v3, :cond_0

    .line 12
    .line 13
    move v3, v4

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    aget v5, p0, v3

    .line 17
    .line 18
    int-to-float v5, v5

    .line 19
    int-to-float v6, v0

    .line 20
    div-float/2addr v5, v6

    .line 21
    aput v5, v2, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    move v3, v4

    .line 31
    :goto_1
    sget-object v5, Lw9/i;->a:[[F

    .line 32
    .line 33
    array-length v6, v5

    .line 34
    if-ge v3, v6, :cond_4

    .line 35
    .line 36
    aget-object v5, v5, v3

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    move v7, v4

    .line 40
    :goto_2
    if-ge v7, v1, :cond_2

    .line 41
    .line 42
    aget v8, v5, v7

    .line 43
    .line 44
    aget v9, v2, v7

    .line 45
    .line 46
    sub-float/2addr v8, v9

    .line 47
    mul-float/2addr v8, v8

    .line 48
    add-float/2addr v6, v8

    .line 49
    cmpl-float v8, v6, p0

    .line 50
    .line 51
    if-ltz v8, :cond_1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_3
    cmpg-float v5, v6, p0

    .line 58
    .line 59
    if-gez v5, :cond_3

    .line 60
    .line 61
    sget-object p0, Lv9/a;->b:[I

    .line 62
    .line 63
    aget p0, p0, v3

    .line 64
    .line 65
    move v0, p0

    .line 66
    move p0, v6

    .line 67
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    return v0
.end method

.method private static c([I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lw9/i;->a([I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lv9/a;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    move p0, v1

    .line 13
    :cond_0
    return p0
.end method

.method static d([I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lw9/i;->e([I)[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lw9/i;->c([I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p0}, Lw9/i;->b([I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private static e([I)[I
    .locals 8

    .line 1
    invoke-static {p0}, Lk9/a;->d([I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    :goto_0
    const/16 v5, 0x11

    .line 14
    .line 15
    if-ge v2, v5, :cond_1

    .line 16
    .line 17
    const/high16 v5, 0x42080000    # 34.0f

    .line 18
    .line 19
    div-float v5, v0, v5

    .line 20
    .line 21
    int-to-float v6, v2

    .line 22
    mul-float/2addr v6, v0

    .line 23
    const/high16 v7, 0x41880000    # 17.0f

    .line 24
    .line 25
    div-float/2addr v6, v7

    .line 26
    add-float/2addr v5, v6

    .line 27
    aget v6, p0, v4

    .line 28
    .line 29
    add-int v7, v3, v6

    .line 30
    .line 31
    int-to-float v7, v7

    .line 32
    cmpg-float v5, v7, v5

    .line 33
    .line 34
    if-gtz v5, :cond_0

    .line 35
    .line 36
    add-int/2addr v3, v6

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    :cond_0
    aget v5, v1, v4

    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    aput v5, v1, v4

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v1
.end method
