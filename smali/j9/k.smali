.class public final Lj9/k;
.super Lj9/i;
.source "SourceFile"


# instance fields
.field private e:Lj9/b;


# direct methods
.method public constructor <init>(Ld9/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj9/i;-><init>(Ld9/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static i([BIIII)[[I
    .locals 18

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    add-int/lit8 v3, p4, -0x8

    .line 8
    .line 9
    add-int/lit8 v4, p3, -0x8

    .line 10
    .line 11
    filled-new-array {v1, v0}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, [[I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    :goto_0
    if-ge v7, v1, :cond_a

    .line 25
    .line 26
    shl-int/lit8 v8, v7, 0x3

    .line 27
    .line 28
    if-le v8, v3, :cond_0

    .line 29
    .line 30
    move v8, v3

    .line 31
    :cond_0
    const/4 v9, 0x0

    .line 32
    :goto_1
    if-ge v9, v0, :cond_9

    .line 33
    .line 34
    shl-int/lit8 v10, v9, 0x3

    .line 35
    .line 36
    if-le v10, v4, :cond_1

    .line 37
    .line 38
    move v10, v4

    .line 39
    :cond_1
    mul-int v11, v8, p3

    .line 40
    .line 41
    add-int/2addr v11, v10

    .line 42
    const/16 v10, 0xff

    .line 43
    .line 44
    move v15, v10

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    :goto_2
    if-ge v12, v2, :cond_7

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    :goto_3
    if-ge v6, v2, :cond_4

    .line 52
    .line 53
    add-int v17, v11, v6

    .line 54
    .line 55
    aget-byte v2, p0, v17

    .line 56
    .line 57
    and-int/2addr v2, v10

    .line 58
    add-int/2addr v13, v2

    .line 59
    if-ge v2, v15, :cond_2

    .line 60
    .line 61
    move v15, v2

    .line 62
    :cond_2
    if-le v2, v14, :cond_3

    .line 63
    .line 64
    move v14, v2

    .line 65
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    sub-int v2, v14, v15

    .line 71
    .line 72
    const/16 v6, 0x18

    .line 73
    .line 74
    if-le v2, v6, :cond_6

    .line 75
    .line 76
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    add-int v11, v11, p3

    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    if-ge v12, v2, :cond_6

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    :goto_4
    if-ge v6, v2, :cond_5

    .line 86
    .line 87
    add-int v16, v11, v6

    .line 88
    .line 89
    aget-byte v2, p0, v16

    .line 90
    .line 91
    and-int/2addr v2, v10

    .line 92
    add-int/2addr v13, v2

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 99
    .line 100
    add-int v11, v11, p3

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    shr-int/lit8 v2, v13, 0x6

    .line 106
    .line 107
    sub-int/2addr v14, v15

    .line 108
    const/16 v6, 0x18

    .line 109
    .line 110
    if-gt v14, v6, :cond_8

    .line 111
    .line 112
    div-int/lit8 v2, v15, 0x2

    .line 113
    .line 114
    if-lez v7, :cond_8

    .line 115
    .line 116
    if-lez v9, :cond_8

    .line 117
    .line 118
    add-int/lit8 v6, v7, -0x1

    .line 119
    .line 120
    aget-object v6, v5, v6

    .line 121
    .line 122
    aget v10, v6, v9

    .line 123
    .line 124
    aget-object v11, v5, v7

    .line 125
    .line 126
    add-int/lit8 v12, v9, -0x1

    .line 127
    .line 128
    aget v11, v11, v12

    .line 129
    .line 130
    mul-int/lit8 v11, v11, 0x2

    .line 131
    .line 132
    add-int/2addr v10, v11

    .line 133
    aget v6, v6, v12

    .line 134
    .line 135
    add-int/2addr v10, v6

    .line 136
    div-int/lit8 v6, v10, 0x4

    .line 137
    .line 138
    if-ge v15, v6, :cond_8

    .line 139
    .line 140
    move v2, v6

    .line 141
    :cond_8
    aget-object v6, v5, v7

    .line 142
    .line 143
    aput v2, v6, v9

    .line 144
    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    .line 147
    const/16 v2, 0x8

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    const/16 v2, 0x8

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_a
    return-object v5
.end method

.method private static j([BIIII[[ILj9/b;)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int/lit8 v2, p4, -0x8

    .line 6
    .line 7
    add-int/lit8 v9, p3, -0x8

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    move v11, v10

    .line 11
    :goto_0
    if-ge v11, v1, :cond_4

    .line 12
    .line 13
    shl-int/lit8 v3, v11, 0x3

    .line 14
    .line 15
    if-le v3, v2, :cond_0

    .line 16
    .line 17
    move v12, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move v12, v3

    .line 20
    :goto_1
    add-int/lit8 v3, v1, -0x3

    .line 21
    .line 22
    invoke-static {v11, v3}, Lj9/k;->k(II)I

    .line 23
    .line 24
    .line 25
    move-result v13

    .line 26
    move v14, v10

    .line 27
    :goto_2
    if-ge v14, v0, :cond_3

    .line 28
    .line 29
    shl-int/lit8 v3, v14, 0x3

    .line 30
    .line 31
    if-le v3, v9, :cond_1

    .line 32
    .line 33
    move v4, v9

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    move v4, v3

    .line 36
    :goto_3
    add-int/lit8 v3, v0, -0x3

    .line 37
    .line 38
    invoke-static {v14, v3}, Lj9/k;->k(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v5, -0x2

    .line 43
    move v6, v10

    .line 44
    :goto_4
    const/4 v7, 0x2

    .line 45
    if-gt v5, v7, :cond_2

    .line 46
    .line 47
    add-int v8, v13, v5

    .line 48
    .line 49
    aget-object v8, p5, v8

    .line 50
    .line 51
    add-int/lit8 v15, v3, -0x2

    .line 52
    .line 53
    aget v15, v8, v15

    .line 54
    .line 55
    add-int/lit8 v16, v3, -0x1

    .line 56
    .line 57
    aget v16, v8, v16

    .line 58
    .line 59
    add-int v15, v15, v16

    .line 60
    .line 61
    aget v16, v8, v3

    .line 62
    .line 63
    add-int v15, v15, v16

    .line 64
    .line 65
    add-int/lit8 v16, v3, 0x1

    .line 66
    .line 67
    aget v16, v8, v16

    .line 68
    .line 69
    add-int v15, v15, v16

    .line 70
    .line 71
    add-int/2addr v7, v3

    .line 72
    aget v7, v8, v7

    .line 73
    .line 74
    add-int/2addr v15, v7

    .line 75
    add-int/2addr v6, v15

    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_2
    div-int/lit8 v6, v6, 0x19

    .line 80
    .line 81
    move-object/from16 v3, p0

    .line 82
    .line 83
    move v5, v12

    .line 84
    move/from16 v7, p3

    .line 85
    .line 86
    move-object/from16 v8, p6

    .line 87
    .line 88
    invoke-static/range {v3 .. v8}, Lj9/k;->l([BIIIILj9/b;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v14, v14, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    return-void
.end method

.method private static k(II)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    return v0
.end method

.method private static l([BIIIILj9/b;)V
    .locals 7

    .line 1
    mul-int v0, p2, p4

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/16 v3, 0x8

    .line 7
    .line 8
    if-ge v2, v3, :cond_2

    .line 9
    .line 10
    move v4, v1

    .line 11
    :goto_1
    if-ge v4, v3, :cond_1

    .line 12
    .line 13
    add-int v5, v0, v4

    .line 14
    .line 15
    aget-byte v5, p0, v5

    .line 16
    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    .line 19
    if-gt v5, p3, :cond_0

    .line 20
    .line 21
    add-int v5, p1, v4

    .line 22
    .line 23
    add-int v6, p2, v2

    .line 24
    .line 25
    invoke-virtual {p5, v5, v6}, Lj9/b;->q(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/2addr v0, p4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ld9/h;)Ld9/b;
    .locals 1

    .line 1
    new-instance v0, Lj9/k;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lj9/k;-><init>(Ld9/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b()Lj9/b;
    .locals 8

    .line 1
    iget-object v0, p0, Lj9/k;->e:Lj9/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ld9/b;->e()Ld9/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ld9/h;->d()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {v0}, Ld9/h;->a()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/16 v1, 0x28

    .line 19
    .line 20
    if-lt v4, v1, :cond_3

    .line 21
    .line 22
    if-lt v5, v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Ld9/h;->b()[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    shr-int/lit8 v0, v4, 0x3

    .line 29
    .line 30
    and-int/lit8 v2, v4, 0x7

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    :cond_1
    move v2, v0

    .line 37
    shr-int/lit8 v0, v5, 0x3

    .line 38
    .line 39
    and-int/lit8 v3, v5, 0x7

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    :cond_2
    move v3, v0

    .line 46
    invoke-static {v1, v2, v3, v4, v5}, Lj9/k;->i([BIIII)[[I

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    new-instance v0, Lj9/b;

    .line 51
    .line 52
    invoke-direct {v0, v4, v5}, Lj9/b;-><init>(II)V

    .line 53
    .line 54
    .line 55
    move-object v7, v0

    .line 56
    invoke-static/range {v1 .. v7}, Lj9/k;->j([BIIII[[ILj9/b;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lj9/k;->e:Lj9/b;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-super {p0}, Lj9/i;->b()Lj9/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lj9/k;->e:Lj9/b;

    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lj9/k;->e:Lj9/b;

    .line 69
    .line 70
    return-object v0
.end method
