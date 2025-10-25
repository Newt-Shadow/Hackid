.class public abstract Lr9/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Ld9/c;Ljava/util/Map;)Ld9/n;
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ld9/c;->d()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ld9/c;->c()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-instance v3, Lj9/a;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Lj9/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v6, Ld9/e;->e:Ld9/e;

    .line 21
    .line 22
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    move v6, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v6, v4

    .line 31
    :goto_0
    if-eqz v6, :cond_1

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v7, 0x5

    .line 37
    :goto_1
    shr-int v7, v2, v7

    .line 38
    .line 39
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    move v6, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v6, 0xf

    .line 48
    .line 49
    :goto_2
    div-int/lit8 v8, v2, 0x2

    .line 50
    .line 51
    move v9, v4

    .line 52
    :goto_3
    if-ge v9, v6, :cond_8

    .line 53
    .line 54
    add-int/lit8 v10, v9, 0x1

    .line 55
    .line 56
    div-int/lit8 v11, v10, 0x2

    .line 57
    .line 58
    and-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    if-nez v9, :cond_3

    .line 61
    .line 62
    move v9, v5

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    move v9, v4

    .line 65
    :goto_4
    if-eqz v9, :cond_4

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_4
    neg-int v11, v11

    .line 69
    :goto_5
    mul-int/2addr v11, v7

    .line 70
    add-int/2addr v11, v8

    .line 71
    if-ltz v11, :cond_8

    .line 72
    .line 73
    if-ge v11, v2, :cond_8

    .line 74
    .line 75
    move-object/from16 v9, p1

    .line 76
    .line 77
    :try_start_0
    invoke-virtual {v9, v11, v3}, Ld9/c;->b(ILj9/a;)Lj9/a;

    .line 78
    .line 79
    .line 80
    move-result-object v3
    :try_end_0
    .catch Ld9/j; {:try_start_0 .. :try_end_0} :catch_5

    .line 81
    move v12, v4

    .line 82
    :goto_6
    const/4 v13, 0x2

    .line 83
    if-ge v12, v13, :cond_7

    .line 84
    .line 85
    if-ne v12, v5, :cond_5

    .line 86
    .line 87
    invoke-virtual {v3}, Lj9/a;->l()V

    .line 88
    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    sget-object v13, Ld9/e;->k:Ld9/e;

    .line 93
    .line 94
    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-eqz v14, :cond_5

    .line 99
    .line 100
    new-instance v14, Ljava/util/EnumMap;

    .line 101
    .line 102
    const-class v15, Ld9/e;

    .line 103
    .line 104
    invoke-direct {v14, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v14, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v14, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-object/from16 v13, p0

    .line 114
    .line 115
    move-object v0, v14

    .line 116
    goto :goto_7

    .line 117
    :cond_5
    move-object/from16 v13, p0

    .line 118
    .line 119
    :goto_7
    :try_start_1
    invoke-virtual {v13, v11, v3, v0}, Lr9/k;->d(ILj9/a;Ljava/util/Map;)Ld9/n;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    if-ne v12, v5, :cond_6

    .line 124
    .line 125
    sget-object v15, Ld9/o;->b:Ld9/o;
    :try_end_1
    .catch Ld9/m; {:try_start_1 .. :try_end_1} :catch_3

    .line 126
    .line 127
    const/16 v16, 0xb4

    .line 128
    .line 129
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v14, v15, v5}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v14}, Ld9/n;->e()[Ld9/p;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    new-instance v15, Ld9/p;
    :try_end_2
    .catch Ld9/m; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    move-object/from16 v16, v0

    .line 145
    .line 146
    int-to-float v0, v1

    .line 147
    :try_start_3
    aget-object v18, v5, v4

    .line 148
    .line 149
    invoke-virtual/range {v18 .. v18}, Ld9/p;->c()F

    .line 150
    .line 151
    .line 152
    move-result v18
    :try_end_3
    .catch Ld9/m; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    sub-float v18, v0, v18

    .line 154
    .line 155
    const/high16 v19, 0x3f800000    # 1.0f

    .line 156
    .line 157
    move/from16 v20, v1

    .line 158
    .line 159
    sub-float v1, v18, v19

    .line 160
    .line 161
    :try_start_4
    aget-object v18, v5, v4

    .line 162
    .line 163
    invoke-virtual/range {v18 .. v18}, Ld9/p;->d()F

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-direct {v15, v1, v4}, Ld9/p;-><init>(FF)V

    .line 168
    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    aput-object v15, v5, v1

    .line 172
    .line 173
    new-instance v4, Ld9/p;
    :try_end_4
    .catch Ld9/m; {:try_start_4 .. :try_end_4} :catch_2

    .line 174
    .line 175
    const/4 v15, 0x1

    .line 176
    :try_start_5
    aget-object v17, v5, v15

    .line 177
    .line 178
    invoke-virtual/range {v17 .. v17}, Ld9/p;->c()F

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    sub-float v0, v0, v17

    .line 183
    .line 184
    sub-float v0, v0, v19

    .line 185
    .line 186
    aget-object v17, v5, v15

    .line 187
    .line 188
    invoke-virtual/range {v17 .. v17}, Ld9/p;->d()F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-direct {v4, v0, v1}, Ld9/p;-><init>(FF)V

    .line 193
    .line 194
    .line 195
    aput-object v4, v5, v15
    :try_end_5
    .catch Ld9/m; {:try_start_5 .. :try_end_5} :catch_4

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :catch_0
    move-object/from16 v16, v0

    .line 199
    .line 200
    :catch_1
    move/from16 v20, v1

    .line 201
    .line 202
    :catch_2
    const/4 v15, 0x1

    .line 203
    goto :goto_9

    .line 204
    :cond_6
    :goto_8
    return-object v14

    .line 205
    :catch_3
    move-object/from16 v16, v0

    .line 206
    .line 207
    move/from16 v20, v1

    .line 208
    .line 209
    move v15, v5

    .line 210
    :catch_4
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 211
    .line 212
    move v5, v15

    .line 213
    move-object/from16 v0, v16

    .line 214
    .line 215
    move/from16 v1, v20

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :catch_5
    :cond_7
    move-object/from16 v13, p0

    .line 221
    .line 222
    move/from16 v20, v1

    .line 223
    .line 224
    move v15, v5

    .line 225
    move v9, v10

    .line 226
    move v5, v15

    .line 227
    move/from16 v1, v20

    .line 228
    .line 229
    const/4 v4, 0x0

    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :cond_8
    move-object/from16 v13, p0

    .line 233
    .line 234
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    throw v0
.end method

.method protected static f([I[IF)F
    .locals 9

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
    mul-float/2addr p2, v4

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_1
    if-ge v1, v0, :cond_4

    .line 29
    .line 30
    aget v6, p0, v1

    .line 31
    .line 32
    aget v7, p1, v1

    .line 33
    .line 34
    int-to-float v7, v7

    .line 35
    mul-float/2addr v7, v4

    .line 36
    int-to-float v6, v6

    .line 37
    cmpl-float v8, v6, v7

    .line 38
    .line 39
    if-lez v8, :cond_2

    .line 40
    .line 41
    sub-float/2addr v6, v7

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    sub-float v6, v7, v6

    .line 44
    .line 45
    :goto_2
    cmpl-float v7, v6, p2

    .line 46
    .line 47
    if-lez v7, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    add-float/2addr v5, v6

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    div-float/2addr v5, v3

    .line 55
    return v5
.end method

.method protected static g(Lj9/a;I[I)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lj9/a;->i()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge p1, v2, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lj9/a;->c(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    xor-int/2addr v3, v4

    .line 18
    :goto_0
    if-ge p1, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lj9/a;->c(I)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eq v5, v3, :cond_0

    .line 25
    .line 26
    aget v5, p2, v1

    .line 27
    .line 28
    add-int/2addr v5, v4

    .line 29
    aput v5, p2, v1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    if-ne v1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    aput v4, p2, v1

    .line 38
    .line 39
    xor-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_4

    .line 45
    .line 46
    sub-int/2addr v0, v4

    .line 47
    if-ne v1, v0, :cond_3

    .line 48
    .line 49
    if-ne p1, v2, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    throw p0

    .line 57
    :cond_4
    :goto_3
    return-void

    .line 58
    :cond_5
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0
.end method

.method protected static h(Lj9/a;I[I)V
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    invoke-virtual {p0, p1}, Lj9/a;->c(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lj9/a;->c(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-gez v0, :cond_2

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    invoke-static {p0, p1, p2}, Lr9/k;->g(Lj9/a;I[I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ld9/c;Ljava/util/Map;)Ld9/n;
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lr9/k;->e(Ld9/c;Ljava/util/Map;)Ld9/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ld9/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    sget-object v2, Ld9/e;->e:Ld9/e;

    .line 11
    .line 12
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Ld9/c;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Ld9/c;->f()Ld9/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1, p2}, Lr9/k;->e(Ld9/c;Ljava/util/Map;)Ld9/n;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ld9/n;->d()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v2, 0x10e

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget-object v3, Ld9/o;->b:Ld9/o;

    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, v2

    .line 64
    rem-int/lit16 v2, v0, 0x168

    .line 65
    .line 66
    :cond_1
    sget-object v0, Ld9/o;->b:Ld9/o;

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p2, v0, v2}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ld9/n;->e()[Ld9/p;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Ld9/c;->c()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    :goto_1
    array-length v2, v0

    .line 86
    if-ge v1, v2, :cond_2

    .line 87
    .line 88
    new-instance v2, Ld9/p;

    .line 89
    .line 90
    int-to-float v3, p1

    .line 91
    aget-object v4, v0, v1

    .line 92
    .line 93
    invoke-virtual {v4}, Ld9/p;->d()F

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    sub-float/2addr v3, v4

    .line 98
    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    .line 100
    sub-float/2addr v3, v4

    .line 101
    aget-object v4, v0, v1

    .line 102
    .line 103
    invoke-virtual {v4}, Ld9/p;->c()F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-direct {v2, v3, v4}, Ld9/p;-><init>(FF)V

    .line 108
    .line 109
    .line 110
    aput-object v2, v0, v1

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    return-object p2

    .line 116
    :cond_3
    throw v0
.end method

.method public c(Ld9/c;)Ld9/n;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lr9/k;->b(Ld9/c;Ljava/util/Map;)Ld9/n;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract d(ILj9/a;Ljava/util/Map;)Ld9/n;
.end method
