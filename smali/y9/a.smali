.class public abstract Ly9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x4

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ly9/a;->a:[I

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v3, 0x6

    .line 14
    const/4 v4, 0x2

    .line 15
    filled-new-array {v3, v4, v0, v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ly9/a;->b:[I

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    fill-array-data v0, :array_0

    .line 26
    .line 27
    .line 28
    sput-object v0, Ly9/a;->c:[I

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    new-array v0, v0, [I

    .line 33
    .line 34
    fill-array-data v0, :array_1

    .line 35
    .line 36
    .line 37
    sput-object v0, Ly9/a;->d:[I

    .line 38
    .line 39
    const/16 v0, 0x10e

    .line 40
    .line 41
    const/16 v1, 0x5a

    .line 42
    .line 43
    const/16 v3, 0xb4

    .line 44
    .line 45
    filled-new-array {v2, v3, v0, v1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Ly9/a;->e:[I

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private static a(Lj9/b;I)Lj9/b;
    .locals 1

    .line 1
    rem-int/lit16 v0, p1, 0x168

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lj9/b;->b()Lj9/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lj9/b;->n(I)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method private static b([Ld9/p;[Ld9/p;[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget v1, p2, v0

    .line 6
    .line 7
    aget-object v2, p1, v0

    .line 8
    .line 9
    aput-object v2, p0, v1

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method private static c(ZLj9/b;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    move v4, v3

    .line 10
    :goto_1
    invoke-virtual {p1}, Lj9/b;->j()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-ge v2, v5, :cond_7

    .line 15
    .line 16
    invoke-static {p1, v2, v3}, Ly9/a;->g(Lj9/b;II)[Ld9/p;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    aget-object v5, v3, v1

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    if-nez v5, :cond_4

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    aget-object v7, v3, v5

    .line 27
    .line 28
    if-nez v7, :cond_4

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, [Ld9/p;

    .line 48
    .line 49
    aget-object v7, v4, v6

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    invoke-virtual {v7}, Ld9/p;->d()F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    float-to-int v2, v2

    .line 63
    :cond_2
    aget-object v4, v4, v5

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v4}, Ld9/p;->d()F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    float-to-int v4, v4

    .line 72
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x5

    .line 78
    .line 79
    move v3, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/4 v2, 0x2

    .line 88
    aget-object v4, v3, v2

    .line 89
    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    invoke-virtual {v4}, Ld9/p;->c()F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    float-to-int v4, v4

    .line 97
    aget-object v2, v3, v2

    .line 98
    .line 99
    invoke-virtual {v2}, Ld9/p;->d()F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    const/4 v2, 0x4

    .line 105
    aget-object v4, v3, v2

    .line 106
    .line 107
    invoke-virtual {v4}, Ld9/p;->c()F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    float-to-int v4, v4

    .line 112
    aget-object v2, v3, v2

    .line 113
    .line 114
    invoke-virtual {v2}, Ld9/p;->d()F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    :goto_3
    float-to-int v2, v2

    .line 119
    move v3, v4

    .line 120
    move v4, v6

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static d(Ld9/c;Ljava/util/Map;Z)Ly9/b;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ld9/c;->a()Lj9/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Ly9/a;->e:[I

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    invoke-static {p0, v3}, Ly9/a;->a(Lj9/b;I)Lj9/b;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {p2, v4}, Ly9/a;->c(ZLj9/b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    new-instance p0, Ly9/b;

    .line 29
    .line 30
    invoke-direct {p0, v4, v5, v3}, Ly9/b;-><init>(Lj9/b;Ljava/util/List;I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ly9/b;

    .line 38
    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0, p2, v1}, Ly9/b;-><init>(Lj9/b;Ljava/util/List;I)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method private static e(Lj9/b;III[I[I)[I
    .locals 8

    .line 1
    array-length v0, p5

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    move v0, v1

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lj9/b;->e(II)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-ge v0, v3, :cond_0

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    array-length v0, p4

    .line 25
    move v2, p1

    .line 26
    move v3, v1

    .line 27
    move v4, v3

    .line 28
    :goto_1
    const v5, 0x3ed70a3d    # 0.42f

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ge p1, p3, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lj9/b;->e(II)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eq v7, v4, :cond_1

    .line 39
    .line 40
    aget v5, p5, v3

    .line 41
    .line 42
    add-int/2addr v5, v6

    .line 43
    aput v5, p5, v3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    add-int/lit8 v7, v0, -0x1

    .line 47
    .line 48
    if-ne v3, v7, :cond_3

    .line 49
    .line 50
    invoke-static {p5, p4}, Ly9/a;->h([I[I)F

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    cmpg-float v5, v7, v5

    .line 55
    .line 56
    if-gez v5, :cond_2

    .line 57
    .line 58
    filled-new-array {v2, p1}, [I

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_2
    aget v5, p5, v1

    .line 64
    .line 65
    aget v7, p5, v6

    .line 66
    .line 67
    add-int/2addr v5, v7

    .line 68
    add-int/2addr v2, v5

    .line 69
    add-int/lit8 v5, v3, -0x1

    .line 70
    .line 71
    const/4 v7, 0x2

    .line 72
    invoke-static {p5, v7, p5, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    aput v1, p5, v5

    .line 76
    .line 77
    aput v1, p5, v3

    .line 78
    .line 79
    add-int/lit8 v3, v3, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    :goto_2
    aput v6, p5, v3

    .line 85
    .line 86
    xor-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    sub-int/2addr v0, v6

    .line 92
    if-ne v3, v0, :cond_5

    .line 93
    .line 94
    invoke-static {p5, p4}, Ly9/a;->h([I[I)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    cmpg-float p0, p0, v5

    .line 99
    .line 100
    if-gez p0, :cond_5

    .line 101
    .line 102
    sub-int/2addr p1, v6

    .line 103
    filled-new-array {v2, p1}, [I

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_5
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method private static f(Lj9/b;IIIII[I)[Ld9/p;
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ld9/p;

    .line 5
    .line 6
    move-object/from16 v8, p6

    .line 7
    .line 8
    array-length v2, v8

    .line 9
    new-array v9, v2, [I

    .line 10
    .line 11
    move/from16 v10, p3

    .line 12
    .line 13
    :goto_0
    const/4 v11, 0x1

    .line 14
    const/4 v12, 0x0

    .line 15
    if-ge v10, v0, :cond_3

    .line 16
    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    move/from16 v3, p4

    .line 20
    .line 21
    move v4, v10

    .line 22
    move/from16 v5, p2

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    move-object v7, v9

    .line 27
    invoke-static/range {v2 .. v7}, Ly9/a;->e(Lj9/b;III[I[I)[I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    move/from16 v16, v10

    .line 34
    .line 35
    move-object v10, v2

    .line 36
    move/from16 v2, v16

    .line 37
    .line 38
    :goto_1
    if-lez v2, :cond_1

    .line 39
    .line 40
    add-int/lit8 v13, v2, -0x1

    .line 41
    .line 42
    move-object/from16 v2, p0

    .line 43
    .line 44
    move/from16 v3, p4

    .line 45
    .line 46
    move v4, v13

    .line 47
    move/from16 v5, p2

    .line 48
    .line 49
    move-object/from16 v6, p6

    .line 50
    .line 51
    move-object v7, v9

    .line 52
    invoke-static/range {v2 .. v7}, Ly9/a;->e(Lj9/b;III[I[I)[I

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    move-object v10, v2

    .line 59
    move v2, v13

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/2addr v13, v11

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v13, v2

    .line 64
    :goto_2
    new-instance v2, Ld9/p;

    .line 65
    .line 66
    aget v3, v10, v12

    .line 67
    .line 68
    int-to-float v3, v3

    .line 69
    int-to-float v4, v13

    .line 70
    invoke-direct {v2, v3, v4}, Ld9/p;-><init>(FF)V

    .line 71
    .line 72
    .line 73
    aput-object v2, v1, v12

    .line 74
    .line 75
    new-instance v2, Ld9/p;

    .line 76
    .line 77
    aget v3, v10, v11

    .line 78
    .line 79
    int-to-float v3, v3

    .line 80
    invoke-direct {v2, v3, v4}, Ld9/p;-><init>(FF)V

    .line 81
    .line 82
    .line 83
    aput-object v2, v1, v11

    .line 84
    .line 85
    move v2, v11

    .line 86
    move v10, v13

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    add-int/lit8 v10, v10, 0x5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    move v2, v12

    .line 92
    :goto_3
    add-int/lit8 v3, v10, 0x1

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    aget-object v2, v1, v12

    .line 97
    .line 98
    invoke-virtual {v2}, Ld9/p;->c()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    float-to-int v2, v2

    .line 103
    aget-object v4, v1, v11

    .line 104
    .line 105
    invoke-virtual {v4}, Ld9/p;->c()F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    float-to-int v4, v4

    .line 110
    filled-new-array {v2, v4}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move-object v13, v2

    .line 115
    move v14, v3

    .line 116
    move v15, v12

    .line 117
    :goto_4
    if-ge v14, v0, :cond_6

    .line 118
    .line 119
    aget v3, v13, v12

    .line 120
    .line 121
    move-object/from16 v2, p0

    .line 122
    .line 123
    move v4, v14

    .line 124
    move/from16 v5, p2

    .line 125
    .line 126
    move-object/from16 v6, p6

    .line 127
    .line 128
    move-object v7, v9

    .line 129
    invoke-static/range {v2 .. v7}, Ly9/a;->e(Lj9/b;III[I[I)[I

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    aget v3, v13, v12

    .line 136
    .line 137
    aget v4, v2, v12

    .line 138
    .line 139
    sub-int/2addr v3, v4

    .line 140
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/4 v4, 0x5

    .line 145
    if-ge v3, v4, :cond_4

    .line 146
    .line 147
    aget v3, v13, v11

    .line 148
    .line 149
    aget v5, v2, v11

    .line 150
    .line 151
    sub-int/2addr v3, v5

    .line 152
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-ge v3, v4, :cond_4

    .line 157
    .line 158
    move-object v13, v2

    .line 159
    move v15, v12

    .line 160
    goto :goto_5

    .line 161
    :cond_4
    const/16 v2, 0x19

    .line 162
    .line 163
    if-le v15, v2, :cond_5

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 167
    .line 168
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    :goto_6
    add-int/2addr v15, v11

    .line 172
    sub-int v3, v14, v15

    .line 173
    .line 174
    new-instance v0, Ld9/p;

    .line 175
    .line 176
    aget v2, v13, v12

    .line 177
    .line 178
    int-to-float v2, v2

    .line 179
    int-to-float v4, v3

    .line 180
    invoke-direct {v0, v2, v4}, Ld9/p;-><init>(FF)V

    .line 181
    .line 182
    .line 183
    const/4 v2, 0x2

    .line 184
    aput-object v0, v1, v2

    .line 185
    .line 186
    new-instance v0, Ld9/p;

    .line 187
    .line 188
    aget v2, v13, v11

    .line 189
    .line 190
    int-to-float v2, v2

    .line 191
    invoke-direct {v0, v2, v4}, Ld9/p;-><init>(FF)V

    .line 192
    .line 193
    .line 194
    const/4 v2, 0x3

    .line 195
    aput-object v0, v1, v2

    .line 196
    .line 197
    :cond_7
    sub-int/2addr v3, v10

    .line 198
    move/from16 v0, p5

    .line 199
    .line 200
    if-ge v3, v0, :cond_8

    .line 201
    .line 202
    const/4 v0, 0x0

    .line 203
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    return-object v1
.end method

.method private static g(Lj9/b;II)[Ld9/p;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lj9/b;->j()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-virtual {p0}, Lj9/b;->m()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v9, v0, [Ld9/p;

    .line 12
    .line 13
    const/16 v10, 0xa

    .line 14
    .line 15
    sget-object v6, Ly9/a;->c:[I

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move v1, v7

    .line 19
    move v2, v8

    .line 20
    move v3, p1

    .line 21
    move v4, p2

    .line 22
    move v5, v10

    .line 23
    invoke-static/range {v0 .. v6}, Ly9/a;->f(Lj9/b;IIIII[I)[Ld9/p;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ly9/a;->a:[I

    .line 28
    .line 29
    invoke-static {v9, v0, v1}, Ly9/a;->b([Ld9/p;[Ld9/p;[I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    aget-object v1, v9, v0

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ld9/p;->c()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    float-to-int p2, p1

    .line 42
    aget-object p1, v9, v0

    .line 43
    .line 44
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    float-to-int p1, p1

    .line 49
    const/4 v0, 0x5

    .line 50
    aget-object v0, v9, v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Ld9/p;->d()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    float-to-int v0, v0

    .line 59
    sub-int/2addr v0, p1

    .line 60
    int-to-float v0, v0

    .line 61
    const/high16 v1, 0x3f000000    # 0.5f

    .line 62
    .line 63
    mul-float/2addr v0, v1

    .line 64
    const/high16 v1, 0x41200000    # 10.0f

    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    float-to-int v0, v0

    .line 71
    move v3, p1

    .line 72
    move v4, p2

    .line 73
    move v5, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v3, p1

    .line 76
    move v4, p2

    .line 77
    move v5, v10

    .line 78
    :goto_0
    sget-object v6, Ly9/a;->d:[I

    .line 79
    .line 80
    move-object v0, p0

    .line 81
    move v1, v7

    .line 82
    move v2, v8

    .line 83
    invoke-static/range {v0 .. v6}, Ly9/a;->f(Lj9/b;IIIII[I)[Ld9/p;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object p1, Ly9/a;->b:[I

    .line 88
    .line 89
    invoke-static {v9, p0, p1}, Ly9/a;->b([Ld9/p;[Ld9/p;[I)V

    .line 90
    .line 91
    .line 92
    return-object v9
.end method

.method private static h([I[I)F
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    add-int/2addr v3, v5

    .line 11
    aget v5, p1, v2

    .line 12
    .line 13
    add-int/2addr v4, v5

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    int-to-float v3, v3

    .line 23
    int-to-float v4, v4

    .line 24
    div-float v4, v3, v4

    .line 25
    .line 26
    const v5, 0x3f4ccccd    # 0.8f

    .line 27
    .line 28
    .line 29
    mul-float/2addr v5, v4

    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_1
    if-ge v1, v0, :cond_4

    .line 32
    .line 33
    aget v7, p0, v1

    .line 34
    .line 35
    aget v8, p1, v1

    .line 36
    .line 37
    int-to-float v8, v8

    .line 38
    mul-float/2addr v8, v4

    .line 39
    int-to-float v7, v7

    .line 40
    cmpl-float v9, v7, v8

    .line 41
    .line 42
    if-lez v9, :cond_2

    .line 43
    .line 44
    sub-float/2addr v7, v8

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sub-float v7, v8, v7

    .line 47
    .line 48
    :goto_2
    cmpl-float v8, v7, v5

    .line 49
    .line 50
    if-lez v8, :cond_3

    .line 51
    .line 52
    return v2

    .line 53
    :cond_3
    add-float/2addr v6, v7

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    div-float/2addr v6, v3

    .line 58
    return v6
.end method
