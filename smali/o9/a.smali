.class public final Lo9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lj9/b;

.field private final b:Lk9/b;


# direct methods
.method public constructor <init>(Lj9/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo9/a;->a:Lj9/b;

    .line 5
    .line 6
    new-instance v0, Lk9/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lk9/b;-><init>(Lj9/b;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo9/a;->b:Lk9/b;

    .line 12
    .line 13
    return-void
.end method

.method private a([Ld9/p;)Ld9/p;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    aget-object v3, p1, v3

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    aget-object p1, p1, v4

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v2, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    add-int/2addr v5, v1

    .line 22
    mul-int/lit8 v5, v5, 0x4

    .line 23
    .line 24
    invoke-static {v0, v2, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    add-int/2addr v4, v1

    .line 29
    mul-int/lit8 v4, v4, 0x4

    .line 30
    .line 31
    invoke-static {v3, v2, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {p0, v5, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-direct {p0, v4, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    new-instance v8, Ld9/p;

    .line 44
    .line 45
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-virtual {v3}, Ld9/p;->c()F

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    invoke-virtual {v2}, Ld9/p;->c()F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    sub-float/2addr v10, v11

    .line 58
    add-int/2addr v6, v1

    .line 59
    int-to-float v6, v6

    .line 60
    div-float/2addr v10, v6

    .line 61
    add-float/2addr v9, v10

    .line 62
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-virtual {v3}, Ld9/p;->d()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2}, Ld9/p;->d()F

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    sub-float/2addr v3, v11

    .line 75
    div-float/2addr v3, v6

    .line 76
    add-float/2addr v10, v3

    .line 77
    invoke-direct {v8, v9, v10}, Ld9/p;-><init>(FF)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Ld9/p;

    .line 81
    .line 82
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v0}, Ld9/p;->c()F

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v2}, Ld9/p;->c()F

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    sub-float/2addr v9, v10

    .line 95
    add-int/2addr v7, v1

    .line 96
    int-to-float v1, v7

    .line 97
    div-float/2addr v9, v1

    .line 98
    add-float/2addr v6, v9

    .line 99
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v0}, Ld9/p;->d()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v2}, Ld9/p;->d()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    sub-float/2addr v0, v2

    .line 112
    div-float/2addr v0, v1

    .line 113
    add-float/2addr p1, v0

    .line 114
    invoke-direct {v3, v6, p1}, Ld9/p;-><init>(FF)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v8}, Lo9/a;->e(Ld9/p;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_1

    .line 122
    .line 123
    invoke-direct {p0, v3}, Lo9/a;->e(Ld9/p;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    return-object v3

    .line 130
    :cond_0
    const/4 p1, 0x0

    .line 131
    return-object p1

    .line 132
    :cond_1
    invoke-direct {p0, v3}, Lo9/a;->e(Ld9/p;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    return-object v8

    .line 139
    :cond_2
    invoke-direct {p0, v5, v8}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-direct {p0, v4, v8}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr p1, v0

    .line 148
    invoke-direct {p0, v5, v3}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-direct {p0, v4, v3}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    if-le p1, v0, :cond_3

    .line 158
    .line 159
    return-object v8

    .line 160
    :cond_3
    return-object v3
.end method

.method private c([Ld9/p;)[Ld9/p;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    aget-object v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x2

    .line 11
    aget-object p1, p1, v6

    .line 12
    .line 13
    invoke-direct {p0, v1, v3}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-direct {p0, v3, v5}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-direct {p0, v5, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    invoke-direct {p0, p1, v1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    filled-new-array {p1, v1, v3, v5}, [Ld9/p;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    if-le v7, v8, :cond_0

    .line 34
    .line 35
    aput-object v1, v11, v0

    .line 36
    .line 37
    aput-object v3, v11, v2

    .line 38
    .line 39
    aput-object v5, v11, v6

    .line 40
    .line 41
    aput-object p1, v11, v4

    .line 42
    .line 43
    move v7, v8

    .line 44
    :cond_0
    if-le v7, v9, :cond_1

    .line 45
    .line 46
    aput-object v3, v11, v0

    .line 47
    .line 48
    aput-object v5, v11, v2

    .line 49
    .line 50
    aput-object p1, v11, v6

    .line 51
    .line 52
    aput-object v1, v11, v4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v9, v7

    .line 56
    :goto_0
    if-le v9, v10, :cond_2

    .line 57
    .line 58
    aput-object v5, v11, v0

    .line 59
    .line 60
    aput-object p1, v11, v2

    .line 61
    .line 62
    aput-object v1, v11, v6

    .line 63
    .line 64
    aput-object v3, v11, v4

    .line 65
    .line 66
    :cond_2
    return-object v11
.end method

.method private d([Ld9/p;)[Ld9/p;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget-object v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget-object v7, p1, v6

    .line 12
    .line 13
    invoke-direct {p0, v1, v7}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    add-int/2addr v8, v2

    .line 18
    mul-int/lit8 v8, v8, 0x4

    .line 19
    .line 20
    invoke-static {v3, v5, v8}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-static {v5, v3, v8}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-direct {p0, v9, v1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-direct {p0, v8, v7}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-ge v9, v8, :cond_0

    .line 37
    .line 38
    aput-object v1, p1, v0

    .line 39
    .line 40
    aput-object v3, p1, v2

    .line 41
    .line 42
    aput-object v5, p1, v4

    .line 43
    .line 44
    aput-object v7, p1, v6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    aput-object v3, p1, v0

    .line 48
    .line 49
    aput-object v5, p1, v2

    .line 50
    .line 51
    aput-object v7, p1, v4

    .line 52
    .line 53
    aput-object v1, p1, v6

    .line 54
    .line 55
    :goto_0
    return-object p1
.end method

.method private e(Ld9/p;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lo9/a;->a:Lj9/b;

    .line 15
    .line 16
    invoke-virtual {v2}, Lj9/b;->m()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    int-to-float v2, v2

    .line 23
    cmpg-float v0, v0, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    cmpl-float v0, v0, v1

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v0, p0, Lo9/a;->a:Lj9/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lj9/b;->j()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sub-int/2addr v0, v3

    .line 46
    int-to-float v0, v0

    .line 47
    cmpg-float p1, p1, v0

    .line 48
    .line 49
    if-gtz p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    :goto_0
    return v3
.end method

.method private static f(Ld9/p;FF)Ld9/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld9/p;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ld9/p;->d()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    cmpg-float p1, v0, p1

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    sub-float/2addr v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    add-float/2addr v0, v1

    .line 18
    :goto_0
    cmpg-float p1, p0, p2

    .line 19
    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    sub-float/2addr p0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-float/2addr p0, v1

    .line 25
    :goto_1
    new-instance p1, Ld9/p;

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Ld9/p;-><init>(FF)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method private static g(Lj9/b;Ld9/p;Ld9/p;Ld9/p;Ld9/p;II)Lj9/b;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p6

    .line 6
    .line 7
    invoke-static {}, Lj9/j;->b()Lj9/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    const/high16 v5, 0x3f000000    # 0.5f

    .line 14
    .line 15
    move/from16 v6, p5

    .line 16
    .line 17
    int-to-float v6, v6

    .line 18
    const/high16 v9, 0x3f000000    # 0.5f

    .line 19
    .line 20
    sub-float/2addr v6, v9

    .line 21
    move v8, v6

    .line 22
    const/high16 v7, 0x3f000000    # 0.5f

    .line 23
    .line 24
    move/from16 v10, p6

    .line 25
    .line 26
    int-to-float v10, v10

    .line 27
    sub-float v11, v10, v9

    .line 28
    .line 29
    move v9, v11

    .line 30
    const/high16 v10, 0x3f000000    # 0.5f

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Ld9/p;->c()F

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-virtual/range {p1 .. p1}, Ld9/p;->d()F

    .line 37
    .line 38
    .line 39
    move-result v13

    .line 40
    invoke-virtual/range {p4 .. p4}, Ld9/p;->c()F

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    invoke-virtual/range {p4 .. p4}, Ld9/p;->d()F

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-virtual/range {p3 .. p3}, Ld9/p;->c()F

    .line 49
    .line 50
    .line 51
    move-result v16

    .line 52
    invoke-virtual/range {p3 .. p3}, Ld9/p;->d()F

    .line 53
    .line 54
    .line 55
    move-result v17

    .line 56
    invoke-virtual/range {p2 .. p2}, Ld9/p;->c()F

    .line 57
    .line 58
    .line 59
    move-result v18

    .line 60
    invoke-virtual/range {p2 .. p2}, Ld9/p;->d()F

    .line 61
    .line 62
    .line 63
    move-result v19

    .line 64
    invoke-virtual/range {v0 .. v19}, Lj9/j;->c(Lj9/b;IIFFFFFFFFFFFFFFFF)Lj9/b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method private static h(Ld9/p;Ld9/p;I)Ld9/p;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ld9/p;->c()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    int-to-float p2, p2

    .line 13
    div-float/2addr v0, p2

    .line 14
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Ld9/p;->d()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-float/2addr p1, v1

    .line 23
    div-float/2addr p1, p2

    .line 24
    new-instance p2, Ld9/p;

    .line 25
    .line 26
    invoke-virtual {p0}, Ld9/p;->c()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    invoke-virtual {p0}, Ld9/p;->d()F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-float/2addr p0, p1

    .line 36
    invoke-direct {p2, v1, p0}, Ld9/p;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method private i([Ld9/p;)[Ld9/p;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    aget-object v3, p1, v3

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    aget-object p1, p1, v4

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    add-int/2addr v4, v1

    .line 18
    invoke-direct {p0, v3, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    add-int/2addr v5, v1

    .line 23
    mul-int/lit8 v5, v5, 0x4

    .line 24
    .line 25
    invoke-static {v0, v2, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    mul-int/lit8 v4, v4, 0x4

    .line 30
    .line 31
    invoke-static {v3, v2, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {p0, v5, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    add-int/2addr v5, v1

    .line 40
    invoke-direct {p0, v4, p1}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v1

    .line 45
    and-int/lit8 v6, v5, 0x1

    .line 46
    .line 47
    if-ne v6, v1, :cond_0

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    :cond_0
    and-int/lit8 v6, v4, 0x1

    .line 52
    .line 53
    if-ne v6, v1, :cond_1

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0}, Ld9/p;->c()F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v2}, Ld9/p;->c()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-float/2addr v1, v6

    .line 66
    invoke-virtual {v3}, Ld9/p;->c()F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    add-float/2addr v1, v6

    .line 71
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    add-float/2addr v1, v6

    .line 76
    const/high16 v6, 0x40800000    # 4.0f

    .line 77
    .line 78
    div-float/2addr v1, v6

    .line 79
    invoke-virtual {v0}, Ld9/p;->d()F

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {v2}, Ld9/p;->d()F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    add-float/2addr v7, v8

    .line 88
    invoke-virtual {v3}, Ld9/p;->d()F

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    add-float/2addr v7, v8

    .line 93
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    add-float/2addr v7, v8

    .line 98
    div-float/2addr v7, v6

    .line 99
    invoke-static {v0, v1, v7}, Lo9/a;->f(Ld9/p;FF)Ld9/p;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v2, v1, v7}, Lo9/a;->f(Ld9/p;FF)Ld9/p;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v3, v1, v7}, Lo9/a;->f(Ld9/p;FF)Ld9/p;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {p1, v1, v7}, Lo9/a;->f(Ld9/p;FF)Ld9/p;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    mul-int/lit8 v4, v4, 0x4

    .line 116
    .line 117
    invoke-static {v0, v2, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    mul-int/lit8 v5, v5, 0x4

    .line 122
    .line 123
    invoke-static {v1, p1, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v2, v0, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6, v3, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v3, p1, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {v7, v2, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {p1, v3, v4}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1, v0, v5}, Lo9/a;->h(Ld9/p;Ld9/p;I)Ld9/p;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    filled-new-array {v1, v6, v2, p1}, [Ld9/p;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1
.end method

.method private j(Ld9/p;Ld9/p;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ld9/p;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Ld9/p;->d()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-virtual/range {p2 .. p2}, Ld9/p;->c()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    iget-object v4, v0, Lo9/a;->a:Lj9/b;

    .line 19
    .line 20
    invoke-virtual {v4}, Lj9/b;->j()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    sub-int/2addr v4, v5

    .line 26
    invoke-virtual/range {p2 .. p2}, Ld9/p;->d()F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    float-to-int v6, v6

    .line 31
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int v6, v4, v2

    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int v7, v3, v1

    .line 42
    .line 43
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/4 v8, 0x0

    .line 48
    if-le v6, v7, :cond_0

    .line 49
    .line 50
    move v6, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v6, v8

    .line 53
    :goto_0
    if-eqz v6, :cond_1

    .line 54
    .line 55
    move/from16 v16, v2

    .line 56
    .line 57
    move v2, v1

    .line 58
    move/from16 v1, v16

    .line 59
    .line 60
    move/from16 v17, v4

    .line 61
    .line 62
    move v4, v3

    .line 63
    move/from16 v3, v17

    .line 64
    .line 65
    :cond_1
    sub-int v7, v3, v1

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    sub-int v9, v4, v2

    .line 72
    .line 73
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    neg-int v10, v7

    .line 78
    div-int/lit8 v10, v10, 0x2

    .line 79
    .line 80
    const/4 v11, -0x1

    .line 81
    if-ge v2, v4, :cond_2

    .line 82
    .line 83
    move v12, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v12, v11

    .line 86
    :goto_1
    if-ge v1, v3, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v5, v11

    .line 90
    :goto_2
    iget-object v11, v0, Lo9/a;->a:Lj9/b;

    .line 91
    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    move v13, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v13, v1

    .line 97
    :goto_3
    if-eqz v6, :cond_5

    .line 98
    .line 99
    move v14, v1

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    move v14, v2

    .line 102
    :goto_4
    invoke-virtual {v11, v13, v14}, Lj9/b;->e(II)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    :goto_5
    if-eq v1, v3, :cond_b

    .line 107
    .line 108
    iget-object v13, v0, Lo9/a;->a:Lj9/b;

    .line 109
    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    move v14, v2

    .line 113
    goto :goto_6

    .line 114
    :cond_6
    move v14, v1

    .line 115
    :goto_6
    if-eqz v6, :cond_7

    .line 116
    .line 117
    move v15, v1

    .line 118
    goto :goto_7

    .line 119
    :cond_7
    move v15, v2

    .line 120
    :goto_7
    invoke-virtual {v13, v14, v15}, Lj9/b;->e(II)Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eq v13, v11, :cond_8

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    move v11, v13

    .line 129
    :cond_8
    add-int/2addr v10, v9

    .line 130
    if-lez v10, :cond_a

    .line 131
    .line 132
    if-ne v2, v4, :cond_9

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_9
    add-int/2addr v2, v12

    .line 136
    sub-int/2addr v10, v7

    .line 137
    :cond_a
    add-int/2addr v1, v5

    .line 138
    goto :goto_5

    .line 139
    :cond_b
    :goto_8
    return v8
.end method


# virtual methods
.method public b()Lj9/g;
    .locals 12

    .line 1
    iget-object v0, p0, Lo9/a;->b:Lk9/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk9/b;->c()[Ld9/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lo9/a;->c([Ld9/p;)[Ld9/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lo9/a;->d([Ld9/p;)[Ld9/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lo9/a;->a([Ld9/p;)Ld9/p;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x3

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lo9/a;->i([Ld9/p;)[Ld9/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    aget-object v1, v0, v1

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    aget-object v10, v0, v3

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    aget-object v11, v0, v4

    .line 36
    .line 37
    aget-object v0, v0, v2

    .line 38
    .line 39
    invoke-direct {p0, v1, v0}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/2addr v2, v3

    .line 44
    invoke-direct {p0, v11, v0}, Lo9/a;->j(Ld9/p;Ld9/p;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v4, v3

    .line 49
    and-int/lit8 v5, v2, 0x1

    .line 50
    .line 51
    if-ne v5, v3, :cond_0

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    :cond_0
    and-int/lit8 v5, v4, 0x1

    .line 56
    .line 57
    if-ne v5, v3, :cond_1

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    :cond_1
    mul-int/lit8 v3, v2, 0x4

    .line 62
    .line 63
    mul-int/lit8 v5, v4, 0x6

    .line 64
    .line 65
    if-ge v3, v5, :cond_2

    .line 66
    .line 67
    mul-int/lit8 v3, v4, 0x4

    .line 68
    .line 69
    mul-int/lit8 v5, v2, 0x6

    .line 70
    .line 71
    if-ge v3, v5, :cond_2

    .line 72
    .line 73
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    move v8, v2

    .line 78
    move v9, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v8, v2

    .line 81
    move v9, v4

    .line 82
    :goto_0
    iget-object v3, p0, Lo9/a;->a:Lj9/b;

    .line 83
    .line 84
    move-object v4, v1

    .line 85
    move-object v5, v10

    .line 86
    move-object v6, v11

    .line 87
    move-object v7, v0

    .line 88
    invoke-static/range {v3 .. v9}, Lo9/a;->g(Lj9/b;Ld9/p;Ld9/p;Ld9/p;Ld9/p;II)Lj9/b;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Lj9/g;

    .line 93
    .line 94
    filled-new-array {v1, v10, v11, v0}, [Ld9/p;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {v3, v2, v0}, Lj9/g;-><init>(Lj9/b;[Ld9/p;)V

    .line 99
    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_3
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    throw v0
.end method
