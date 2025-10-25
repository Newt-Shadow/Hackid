.class abstract Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b$f;,
        Lo3/b$e;,
        Lo3/b$c;,
        Lo3/b$b;,
        Lo3/b$d;,
        Lo3/b$g;,
        Lo3/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Ly4/q0;->l0(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lo3/b;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static A(Lo3/a$a;Lg3/v;JLf3/m;ZZLn6/g;)Ljava/util/List;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, v0, Lo3/a$a;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Lo3/a$a;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lo3/a$a;

    .line 23
    .line 24
    iget v4, v3, Lo3/a;->a:I

    .line 25
    .line 26
    const v5, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    move-object/from16 v5, p7

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const v4, 0x6d766864

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Lo3/a$b;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move-wide v6, p2

    .line 51
    move-object v8, p4

    .line 52
    move/from16 v9, p5

    .line 53
    .line 54
    move/from16 v10, p6

    .line 55
    .line 56
    invoke-static/range {v4 .. v10}, Lo3/b;->z(Lo3/a$a;Lo3/a$b;JLf3/m;ZZ)Lo3/o;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object/from16 v5, p7

    .line 61
    .line 62
    invoke-interface {v5, v4}, Ln6/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lo3/o;

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    move-object v6, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v6, 0x6d646961

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lo3/a$a;

    .line 84
    .line 85
    const v6, 0x6d696e66

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lo3/a$a;

    .line 97
    .line 98
    const v6, 0x7374626c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lo3/a$a;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    invoke-static {v4, v3, p1}, Lo3/b;->v(Lo3/o;Lo3/a$a;Lg3/v;)Lo3/r;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v1
.end method

.method public static B(Lo3/a$b;)Landroid/util/Pair;
    .locals 7

    .line 1
    iget-object p0, p0, Lo3/a$b;->b:Ly4/e0;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v2, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Ly4/e0;->a()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lt v3, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const v6, 0x6d657461

    .line 29
    .line 30
    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ly4/e0;->T(I)V

    .line 34
    .line 35
    .line 36
    add-int v1, v3, v4

    .line 37
    .line 38
    invoke-static {p0, v1}, Lo3/b;->C(Ly4/e0;I)Lt3/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const v6, 0x736d7461

    .line 44
    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ly4/e0;->T(I)V

    .line 49
    .line 50
    .line 51
    add-int v2, v3, v4

    .line 52
    .line 53
    invoke-static {p0, v2}, Lo3/b;->u(Ly4/e0;I)Lt3/a;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_1
    :goto_1
    add-int/2addr v3, v4

    .line 58
    invoke-virtual {p0, v3}, Ly4/e0;->T(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method private static C(Ly4/e0;I)Lt3/a;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lo3/b;->e(Ly4/e0;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x696c7374

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-static {p0, v0}, Lo3/b;->l(Ly4/e0;I)Lt3/a;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static D(Ly4/e0;IIIIILf3/m;Lo3/b$d;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    add-int/lit8 v5, v1, 0x8

    .line 12
    .line 13
    add-int/lit8 v5, v5, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v5}, Ly4/e0;->T(I)V

    .line 16
    .line 17
    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Ly4/e0;->U(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/16 v7, 0x32

    .line 32
    .line 33
    invoke-virtual {v0, v7}, Ly4/e0;->U(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const v8, 0x656e6376

    .line 41
    .line 42
    .line 43
    move/from16 v10, p1

    .line 44
    .line 45
    if-ne v10, v8, :cond_2

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Lo3/b;->s(Ly4/e0;II)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-eqz v8, :cond_1

    .line 52
    .line 53
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v10, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-nez v3, :cond_0

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v11, Lo3/p;

    .line 68
    .line 69
    iget-object v11, v11, Lo3/p;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v11}, Lf3/m;->c(Ljava/lang/String;)Lf3/m;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :goto_0
    iget-object v11, v4, Lo3/b$d;->a:[Lo3/p;

    .line 76
    .line 77
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v8, Lo3/p;

    .line 80
    .line 81
    aput-object v8, v11, p8

    .line 82
    .line 83
    :cond_1
    invoke-virtual {v0, v7}, Ly4/e0;->T(I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    const v8, 0x6d317620

    .line 87
    .line 88
    .line 89
    const-string v11, "video/3gpp"

    .line 90
    .line 91
    if-ne v10, v8, :cond_3

    .line 92
    .line 93
    const-string v8, "video/mpeg"

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const v8, 0x48323633

    .line 97
    .line 98
    .line 99
    if-ne v10, v8, :cond_4

    .line 100
    .line 101
    move-object v8, v11

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const/4 v8, 0x0

    .line 104
    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    .line 105
    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v15, 0x0

    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    const/16 v17, -0x1

    .line 111
    .line 112
    const/16 v18, -0x1

    .line 113
    .line 114
    const/16 v19, -0x1

    .line 115
    .line 116
    const/16 v20, -0x1

    .line 117
    .line 118
    const/16 v21, 0x0

    .line 119
    .line 120
    const/16 v22, 0x0

    .line 121
    .line 122
    const/16 v23, 0x0

    .line 123
    .line 124
    :goto_2
    sub-int v12, v7, v1

    .line 125
    .line 126
    if-ge v12, v2, :cond_2f

    .line 127
    .line 128
    invoke-virtual {v0, v7}, Ly4/e0;->T(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_5

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 142
    .line 143
    .line 144
    move-result v24

    .line 145
    move-object/from16 p8, v11

    .line 146
    .line 147
    sub-int v11, v24, v1

    .line 148
    .line 149
    if-ne v11, v2, :cond_6

    .line 150
    .line 151
    goto/16 :goto_1b

    .line 152
    .line 153
    :cond_5
    move-object/from16 p8, v11

    .line 154
    .line 155
    :cond_6
    if-lez v9, :cond_7

    .line 156
    .line 157
    const/4 v11, 0x1

    .line 158
    goto :goto_3

    .line 159
    :cond_7
    const/4 v11, 0x0

    .line 160
    :goto_3
    const-string v1, "childAtomSize must be positive"

    .line 161
    .line 162
    invoke-static {v11, v1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const v11, 0x61766343

    .line 170
    .line 171
    .line 172
    if-ne v1, v11, :cond_a

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    if-nez v8, :cond_8

    .line 176
    .line 177
    const/4 v11, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_8
    const/4 v11, 0x0

    .line 180
    :goto_4
    invoke-static {v11, v1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v12, v12, 0x8

    .line 184
    .line 185
    invoke-virtual {v0, v12}, Ly4/e0;->T(I)V

    .line 186
    .line 187
    .line 188
    invoke-static/range {p0 .. p0}, Lz4/a;->b(Ly4/e0;)Lz4/a;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v15, v1, Lz4/a;->a:Ljava/util/List;

    .line 193
    .line 194
    iget v8, v1, Lz4/a;->b:I

    .line 195
    .line 196
    iput v8, v4, Lo3/b$d;->c:I

    .line 197
    .line 198
    if-nez v23, :cond_9

    .line 199
    .line 200
    iget v14, v1, Lz4/a;->e:F

    .line 201
    .line 202
    :cond_9
    iget-object v13, v1, Lz4/a;->f:Ljava/lang/String;

    .line 203
    .line 204
    const-string v1, "video/avc"

    .line 205
    .line 206
    :goto_5
    move-object v8, v1

    .line 207
    :goto_6
    move-object/from16 v26, v3

    .line 208
    .line 209
    move/from16 v33, v6

    .line 210
    .line 211
    move/from16 v25, v10

    .line 212
    .line 213
    :goto_7
    const/4 v3, 0x0

    .line 214
    goto/16 :goto_1a

    .line 215
    .line 216
    :cond_a
    const v11, 0x68766343

    .line 217
    .line 218
    .line 219
    if-ne v1, v11, :cond_d

    .line 220
    .line 221
    const/4 v1, 0x0

    .line 222
    if-nez v8, :cond_b

    .line 223
    .line 224
    const/4 v11, 0x1

    .line 225
    goto :goto_8

    .line 226
    :cond_b
    const/4 v11, 0x0

    .line 227
    :goto_8
    invoke-static {v11, v1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v12, v12, 0x8

    .line 231
    .line 232
    invoke-virtual {v0, v12}, Ly4/e0;->T(I)V

    .line 233
    .line 234
    .line 235
    invoke-static/range {p0 .. p0}, Lz4/f;->a(Ly4/e0;)Lz4/f;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v15, v1, Lz4/f;->a:Ljava/util/List;

    .line 240
    .line 241
    iget v8, v1, Lz4/f;->b:I

    .line 242
    .line 243
    iput v8, v4, Lo3/b$d;->c:I

    .line 244
    .line 245
    if-nez v23, :cond_c

    .line 246
    .line 247
    iget v14, v1, Lz4/f;->e:F

    .line 248
    .line 249
    :cond_c
    iget-object v13, v1, Lz4/f;->i:Ljava/lang/String;

    .line 250
    .line 251
    iget v8, v1, Lz4/f;->f:I

    .line 252
    .line 253
    iget v11, v1, Lz4/f;->g:I

    .line 254
    .line 255
    iget v1, v1, Lz4/f;->h:I

    .line 256
    .line 257
    const-string v12, "video/hevc"

    .line 258
    .line 259
    move/from16 v20, v1

    .line 260
    .line 261
    move-object/from16 v26, v3

    .line 262
    .line 263
    move/from16 v33, v6

    .line 264
    .line 265
    move/from16 v18, v8

    .line 266
    .line 267
    move/from16 v25, v10

    .line 268
    .line 269
    move/from16 v19, v11

    .line 270
    .line 271
    move-object v8, v12

    .line 272
    goto :goto_7

    .line 273
    :cond_d
    const v11, 0x64766343

    .line 274
    .line 275
    .line 276
    if-eq v1, v11, :cond_2c

    .line 277
    .line 278
    const v11, 0x64767643

    .line 279
    .line 280
    .line 281
    if-ne v1, v11, :cond_e

    .line 282
    .line 283
    goto/16 :goto_16

    .line 284
    .line 285
    :cond_e
    const v11, 0x76706343

    .line 286
    .line 287
    .line 288
    const/4 v2, 0x2

    .line 289
    if-ne v1, v11, :cond_13

    .line 290
    .line 291
    if-nez v8, :cond_f

    .line 292
    .line 293
    const/4 v1, 0x1

    .line 294
    goto :goto_9

    .line 295
    :cond_f
    const/4 v1, 0x0

    .line 296
    :goto_9
    const/4 v8, 0x0

    .line 297
    invoke-static {v1, v8}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const v1, 0x76703038

    .line 301
    .line 302
    .line 303
    if-ne v10, v1, :cond_10

    .line 304
    .line 305
    const-string v1, "video/x-vnd.on2.vp8"

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_10
    const-string v1, "video/x-vnd.on2.vp9"

    .line 309
    .line 310
    :goto_a
    add-int/lit8 v12, v12, 0xc

    .line 311
    .line 312
    invoke-virtual {v0, v12}, Ly4/e0;->T(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ly4/e0;->U(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    const/4 v11, 0x1

    .line 323
    and-int/2addr v8, v11

    .line 324
    if-eqz v8, :cond_11

    .line 325
    .line 326
    const/4 v8, 0x1

    .line 327
    goto :goto_b

    .line 328
    :cond_11
    const/4 v8, 0x0

    .line 329
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 334
    .line 335
    .line 336
    move-result v12

    .line 337
    invoke-static {v11}, Lz4/c;->b(I)I

    .line 338
    .line 339
    .line 340
    move-result v18

    .line 341
    if-eqz v8, :cond_12

    .line 342
    .line 343
    const/16 v19, 0x1

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_12
    move/from16 v19, v2

    .line 347
    .line 348
    :goto_c
    invoke-static {v12}, Lz4/c;->c(I)I

    .line 349
    .line 350
    .line 351
    move-result v20

    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_13
    const v11, 0x61763143

    .line 355
    .line 356
    .line 357
    if-ne v1, v11, :cond_15

    .line 358
    .line 359
    const/4 v1, 0x0

    .line 360
    if-nez v8, :cond_14

    .line 361
    .line 362
    const/4 v11, 0x1

    .line 363
    goto :goto_d

    .line 364
    :cond_14
    const/4 v11, 0x0

    .line 365
    :goto_d
    invoke-static {v11, v1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const-string v1, "video/av01"

    .line 369
    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :cond_15
    const v11, 0x636c6c69

    .line 373
    .line 374
    .line 375
    if-ne v1, v11, :cond_17

    .line 376
    .line 377
    if-nez v21, :cond_16

    .line 378
    .line 379
    invoke-static {}, Lo3/b;->a()Ljava/nio/ByteBuffer;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    goto :goto_e

    .line 384
    :cond_16
    move-object/from16 v1, v21

    .line 385
    .line 386
    :goto_e
    const/16 v2, 0x15

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 403
    .line 404
    .line 405
    move-object/from16 v21, v1

    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :cond_17
    const v11, 0x6d646376

    .line 410
    .line 411
    .line 412
    if-ne v1, v11, :cond_19

    .line 413
    .line 414
    if-nez v21, :cond_18

    .line 415
    .line 416
    invoke-static {}, Lo3/b;->a()Ljava/nio/ByteBuffer;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    goto :goto_f

    .line 421
    :cond_18
    move-object/from16 v1, v21

    .line 422
    .line 423
    :goto_f
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    move/from16 v25, v10

    .line 436
    .line 437
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    move-object/from16 v26, v3

    .line 446
    .line 447
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    move-object/from16 v27, v15

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 454
    .line 455
    .line 456
    move-result v15

    .line 457
    move/from16 v28, v14

    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->C()S

    .line 460
    .line 461
    .line 462
    move-result v14

    .line 463
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->I()J

    .line 464
    .line 465
    .line 466
    move-result-wide v29

    .line 467
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->I()J

    .line 468
    .line 469
    .line 470
    move-result-wide v31

    .line 471
    move/from16 v33, v6

    .line 472
    .line 473
    const/4 v6, 0x1

    .line 474
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 499
    .line 500
    .line 501
    const-wide/16 v2, 0x2710

    .line 502
    .line 503
    div-long v10, v29, v2

    .line 504
    .line 505
    long-to-int v4, v10

    .line 506
    int-to-short v4, v4

    .line 507
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 508
    .line 509
    .line 510
    div-long v2, v31, v2

    .line 511
    .line 512
    long-to-int v2, v2

    .line 513
    int-to-short v2, v2

    .line 514
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 515
    .line 516
    .line 517
    move-object/from16 v21, v1

    .line 518
    .line 519
    move-object/from16 v15, v27

    .line 520
    .line 521
    move/from16 v14, v28

    .line 522
    .line 523
    goto/16 :goto_7

    .line 524
    .line 525
    :cond_19
    move-object/from16 v26, v3

    .line 526
    .line 527
    move/from16 v33, v6

    .line 528
    .line 529
    move/from16 v25, v10

    .line 530
    .line 531
    move/from16 v28, v14

    .line 532
    .line 533
    move-object/from16 v27, v15

    .line 534
    .line 535
    const v3, 0x64323633

    .line 536
    .line 537
    .line 538
    if-ne v1, v3, :cond_1b

    .line 539
    .line 540
    const/4 v3, 0x0

    .line 541
    if-nez v8, :cond_1a

    .line 542
    .line 543
    const/4 v11, 0x1

    .line 544
    goto :goto_10

    .line 545
    :cond_1a
    const/4 v11, 0x0

    .line 546
    :goto_10
    invoke-static {v11, v3}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v8, p8

    .line 550
    .line 551
    goto/16 :goto_18

    .line 552
    .line 553
    :cond_1b
    const/4 v3, 0x0

    .line 554
    const v4, 0x65736473

    .line 555
    .line 556
    .line 557
    if-ne v1, v4, :cond_1e

    .line 558
    .line 559
    if-nez v8, :cond_1c

    .line 560
    .line 561
    const/4 v11, 0x1

    .line 562
    goto :goto_11

    .line 563
    :cond_1c
    const/4 v11, 0x0

    .line 564
    :goto_11
    invoke-static {v11, v3}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-static {v0, v12}, Lo3/b;->i(Ly4/e0;I)Lo3/b$b;

    .line 568
    .line 569
    .line 570
    move-result-object v22

    .line 571
    invoke-static/range {v22 .. v22}, Lo3/b$b;->a(Lo3/b$b;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-static/range {v22 .. v22}, Lo3/b$b;->b(Lo3/b$b;)[B

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    if-eqz v2, :cond_1d

    .line 580
    .line 581
    invoke-static {v2}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    .line 582
    .line 583
    .line 584
    move-result-object v15

    .line 585
    goto :goto_12

    .line 586
    :cond_1d
    move-object/from16 v15, v27

    .line 587
    .line 588
    :goto_12
    move-object v8, v1

    .line 589
    goto/16 :goto_19

    .line 590
    .line 591
    :cond_1e
    const v4, 0x70617370

    .line 592
    .line 593
    .line 594
    if-ne v1, v4, :cond_1f

    .line 595
    .line 596
    invoke-static {v0, v12}, Lo3/b;->q(Ly4/e0;I)F

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    move v14, v1

    .line 601
    move-object/from16 v15, v27

    .line 602
    .line 603
    const/16 v23, 0x1

    .line 604
    .line 605
    goto/16 :goto_1a

    .line 606
    .line 607
    :cond_1f
    const v4, 0x73763364

    .line 608
    .line 609
    .line 610
    if-ne v1, v4, :cond_20

    .line 611
    .line 612
    invoke-static {v0, v12, v9}, Lo3/b;->r(Ly4/e0;II)[B

    .line 613
    .line 614
    .line 615
    move-result-object v16

    .line 616
    goto/16 :goto_18

    .line 617
    .line 618
    :cond_20
    const v4, 0x73743364

    .line 619
    .line 620
    .line 621
    if-ne v1, v4, :cond_25

    .line 622
    .line 623
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    const/4 v4, 0x3

    .line 628
    invoke-virtual {v0, v4}, Ly4/e0;->U(I)V

    .line 629
    .line 630
    .line 631
    if-nez v1, :cond_2e

    .line 632
    .line 633
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_24

    .line 638
    .line 639
    const/4 v11, 0x1

    .line 640
    if-eq v1, v11, :cond_23

    .line 641
    .line 642
    if-eq v1, v2, :cond_22

    .line 643
    .line 644
    if-eq v1, v4, :cond_21

    .line 645
    .line 646
    goto/16 :goto_18

    .line 647
    .line 648
    :cond_21
    move/from16 v17, v4

    .line 649
    .line 650
    goto/16 :goto_18

    .line 651
    .line 652
    :cond_22
    move/from16 v17, v2

    .line 653
    .line 654
    goto/16 :goto_18

    .line 655
    .line 656
    :cond_23
    move/from16 v17, v11

    .line 657
    .line 658
    goto/16 :goto_18

    .line 659
    .line 660
    :cond_24
    const/16 v17, 0x0

    .line 661
    .line 662
    goto/16 :goto_18

    .line 663
    .line 664
    :cond_25
    const/4 v11, 0x1

    .line 665
    const v4, 0x636f6c72

    .line 666
    .line 667
    .line 668
    move/from16 v12, v18

    .line 669
    .line 670
    if-ne v1, v4, :cond_2a

    .line 671
    .line 672
    const/4 v1, -0x1

    .line 673
    move/from16 v4, v19

    .line 674
    .line 675
    if-ne v12, v1, :cond_2b

    .line 676
    .line 677
    move/from16 v6, v20

    .line 678
    .line 679
    if-ne v4, v1, :cond_2d

    .line 680
    .line 681
    if-ne v6, v1, :cond_2d

    .line 682
    .line 683
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    const v10, 0x6e636c78

    .line 688
    .line 689
    .line 690
    if-eq v1, v10, :cond_27

    .line 691
    .line 692
    const v10, 0x6e636c63

    .line 693
    .line 694
    .line 695
    if-ne v1, v10, :cond_26

    .line 696
    .line 697
    goto :goto_13

    .line 698
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v10, "Unsupported color type: "

    .line 704
    .line 705
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-static {v1}, Lo3/a;->a(I)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    const-string v2, "AtomParsers"

    .line 720
    .line 721
    invoke-static {v2, v1}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    goto :goto_17

    .line 725
    :cond_27
    :goto_13
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    invoke-virtual {v0, v2}, Ly4/e0;->U(I)V

    .line 734
    .line 735
    .line 736
    const/16 v6, 0x13

    .line 737
    .line 738
    if-ne v9, v6, :cond_28

    .line 739
    .line 740
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    and-int/lit16 v6, v6, 0x80

    .line 745
    .line 746
    if-eqz v6, :cond_28

    .line 747
    .line 748
    move v6, v11

    .line 749
    goto :goto_14

    .line 750
    :cond_28
    const/4 v6, 0x0

    .line 751
    :goto_14
    invoke-static {v1}, Lz4/c;->b(I)I

    .line 752
    .line 753
    .line 754
    move-result v18

    .line 755
    if-eqz v6, :cond_29

    .line 756
    .line 757
    move/from16 v19, v11

    .line 758
    .line 759
    goto :goto_15

    .line 760
    :cond_29
    move/from16 v19, v2

    .line 761
    .line 762
    :goto_15
    invoke-static {v4}, Lz4/c;->c(I)I

    .line 763
    .line 764
    .line 765
    move-result v20

    .line 766
    goto :goto_18

    .line 767
    :cond_2a
    move/from16 v4, v19

    .line 768
    .line 769
    :cond_2b
    move/from16 v6, v20

    .line 770
    .line 771
    goto :goto_17

    .line 772
    :cond_2c
    :goto_16
    move-object/from16 v26, v3

    .line 773
    .line 774
    move/from16 v33, v6

    .line 775
    .line 776
    move/from16 v25, v10

    .line 777
    .line 778
    move/from16 v28, v14

    .line 779
    .line 780
    move-object/from16 v27, v15

    .line 781
    .line 782
    move/from16 v12, v18

    .line 783
    .line 784
    move/from16 v4, v19

    .line 785
    .line 786
    move/from16 v6, v20

    .line 787
    .line 788
    const/4 v3, 0x0

    .line 789
    invoke-static/range {p0 .. p0}, Lz4/d;->a(Ly4/e0;)Lz4/d;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    if-eqz v1, :cond_2d

    .line 794
    .line 795
    iget-object v13, v1, Lz4/d;->c:Ljava/lang/String;

    .line 796
    .line 797
    const-string v8, "video/dolby-vision"

    .line 798
    .line 799
    :cond_2d
    :goto_17
    move/from16 v19, v4

    .line 800
    .line 801
    move/from16 v20, v6

    .line 802
    .line 803
    move/from16 v18, v12

    .line 804
    .line 805
    :cond_2e
    :goto_18
    move-object/from16 v15, v27

    .line 806
    .line 807
    :goto_19
    move/from16 v14, v28

    .line 808
    .line 809
    :goto_1a
    add-int/2addr v7, v9

    .line 810
    move/from16 v1, p2

    .line 811
    .line 812
    move/from16 v2, p3

    .line 813
    .line 814
    move-object/from16 v4, p7

    .line 815
    .line 816
    move-object/from16 v11, p8

    .line 817
    .line 818
    move/from16 v10, v25

    .line 819
    .line 820
    move-object/from16 v3, v26

    .line 821
    .line 822
    move/from16 v6, v33

    .line 823
    .line 824
    goto/16 :goto_2

    .line 825
    .line 826
    :cond_2f
    :goto_1b
    move-object/from16 v26, v3

    .line 827
    .line 828
    move/from16 v33, v6

    .line 829
    .line 830
    move/from16 v28, v14

    .line 831
    .line 832
    move-object/from16 v27, v15

    .line 833
    .line 834
    move/from16 v12, v18

    .line 835
    .line 836
    move/from16 v4, v19

    .line 837
    .line 838
    move/from16 v6, v20

    .line 839
    .line 840
    const/4 v3, 0x0

    .line 841
    if-nez v8, :cond_30

    .line 842
    .line 843
    return-void

    .line 844
    :cond_30
    new-instance v0, Lb3/x1$b;

    .line 845
    .line 846
    invoke-direct {v0}, Lb3/x1$b;-><init>()V

    .line 847
    .line 848
    .line 849
    move/from16 v1, p4

    .line 850
    .line 851
    invoke-virtual {v0, v1}, Lb3/x1$b;->T(I)Lb3/x1$b;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {v0, v8}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v0, v13}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {v0, v5}, Lb3/x1$b;->n0(I)Lb3/x1$b;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    move/from16 v1, v33

    .line 868
    .line 869
    invoke-virtual {v0, v1}, Lb3/x1$b;->S(I)Lb3/x1$b;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    move/from16 v14, v28

    .line 874
    .line 875
    invoke-virtual {v0, v14}, Lb3/x1$b;->c0(F)Lb3/x1$b;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    move/from16 v1, p5

    .line 880
    .line 881
    invoke-virtual {v0, v1}, Lb3/x1$b;->f0(I)Lb3/x1$b;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    move-object/from16 v9, v16

    .line 886
    .line 887
    invoke-virtual {v0, v9}, Lb3/x1$b;->d0([B)Lb3/x1$b;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    move/from16 v1, v17

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Lb3/x1$b;->j0(I)Lb3/x1$b;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    move-object/from16 v9, v27

    .line 898
    .line 899
    invoke-virtual {v0, v9}, Lb3/x1$b;->V(Ljava/util/List;)Lb3/x1$b;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    move-object/from16 v1, v26

    .line 904
    .line 905
    invoke-virtual {v0, v1}, Lb3/x1$b;->O(Lf3/m;)Lb3/x1$b;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    const/4 v1, -0x1

    .line 910
    if-ne v12, v1, :cond_31

    .line 911
    .line 912
    if-ne v4, v1, :cond_31

    .line 913
    .line 914
    if-ne v6, v1, :cond_31

    .line 915
    .line 916
    if-eqz v21, :cond_33

    .line 917
    .line 918
    :cond_31
    new-instance v1, Lz4/c;

    .line 919
    .line 920
    if-eqz v21, :cond_32

    .line 921
    .line 922
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    .line 923
    .line 924
    .line 925
    move-result-object v9

    .line 926
    goto :goto_1c

    .line 927
    :cond_32
    move-object v9, v3

    .line 928
    :goto_1c
    invoke-direct {v1, v12, v4, v6, v9}, Lz4/c;-><init>(III[B)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v1}, Lb3/x1$b;->L(Lz4/c;)Lb3/x1$b;

    .line 932
    .line 933
    .line 934
    :cond_33
    if-eqz v22, :cond_34

    .line 935
    .line 936
    invoke-static/range {v22 .. v22}, Lo3/b$b;->d(Lo3/b$b;)J

    .line 937
    .line 938
    .line 939
    move-result-wide v1

    .line 940
    invoke-static {v1, v2}, Lq6/e;->j(J)I

    .line 941
    .line 942
    .line 943
    move-result v1

    .line 944
    invoke-virtual {v0, v1}, Lb3/x1$b;->I(I)Lb3/x1$b;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    invoke-static/range {v22 .. v22}, Lo3/b$b;->c(Lo3/b$b;)J

    .line 949
    .line 950
    .line 951
    move-result-wide v2

    .line 952
    invoke-static {v2, v3}, Lq6/e;->j(J)I

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    invoke-virtual {v1, v2}, Lb3/x1$b;->b0(I)Lb3/x1$b;

    .line 957
    .line 958
    .line 959
    :cond_34
    invoke-virtual {v0}, Lb3/x1$b;->G()Lb3/x1;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    move-object/from16 v1, p7

    .line 964
    .line 965
    iput-object v0, v1, Lo3/b$d;->b:Lb3/x1;

    .line 966
    .line 967
    return-void
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Ly4/q0;->q(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Ly4/q0;->q(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static c(Ly4/e0;III)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lt v0, p2, :cond_0

    .line 8
    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_1
    sub-int v3, v0, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v4, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v2

    .line 32
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static d(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static e(Ly4/e0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Ly4/e0;->U(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static f(Ly4/e0;IIIILjava/lang/String;ZLf3/m;Lo3/b$d;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    add-int/2addr v7, v8

    .line 1
    invoke-virtual {v0, v7}, Ly4/e0;->T(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    move-result v8

    .line 3
    invoke-virtual {v0, v7}, Ly4/e0;->U(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v8}, Ly4/e0;->U(I)V

    const/4 v8, 0x0

    :goto_0
    const/16 v10, 0x10

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_3

    if-ne v8, v13, :cond_1

    goto :goto_1

    :cond_1
    if-ne v8, v12, :cond_2

    .line 5
    invoke-virtual {v0, v10}, Ly4/e0;->U(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->o()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->K()I

    move-result v8

    const/16 v10, 0x14

    .line 8
    invoke-virtual {v0, v10}, Ly4/e0;->U(I)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    move-result v14

    .line 10
    invoke-virtual {v0, v7}, Ly4/e0;->U(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->H()I

    move-result v7

    .line 12
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v0, v15}, Ly4/e0;->T(I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    move-result v15

    if-ne v8, v13, :cond_4

    .line 14
    invoke-virtual {v0, v10}, Ly4/e0;->U(I)V

    :cond_4
    move v8, v14

    .line 15
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    move-result v10

    const v14, 0x656e6361

    move/from16 v12, p1

    if-ne v12, v14, :cond_7

    .line 16
    invoke-static {v0, v1, v2}, Lo3/b;->s(Ly4/e0;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 17
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 18
    :cond_5
    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lo3/p;

    iget-object v13, v13, Lo3/p;->b:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lf3/m;->c(Ljava/lang/String;)Lf3/m;

    move-result-object v5

    .line 19
    :goto_3
    iget-object v13, v6, Lo3/b$d;->a:[Lo3/p;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lo3/p;

    aput-object v14, v13, p9

    .line 20
    :cond_6
    invoke-virtual {v0, v10}, Ly4/e0;->T(I)V

    :cond_7
    const v13, 0x61632d33

    const v14, 0x616c6163

    if-ne v12, v13, :cond_8

    const-string v12, "audio/ac3"

    :goto_4
    move-object/from16 v19, v12

    const/4 v12, -0x1

    goto/16 :goto_8

    :cond_8
    const v13, 0x65632d33

    if-ne v12, v13, :cond_9

    const-string v12, "audio/eac3"

    goto :goto_4

    :cond_9
    const v13, 0x61632d34

    if-ne v12, v13, :cond_a

    const-string v12, "audio/ac4"

    goto :goto_4

    :cond_a
    const v13, 0x64747363

    if-ne v12, v13, :cond_b

    const-string v12, "audio/vnd.dts"

    goto :goto_4

    :cond_b
    const v13, 0x64747368

    if-eq v12, v13, :cond_1e

    const v13, 0x6474736c

    if-ne v12, v13, :cond_c

    goto/16 :goto_7

    :cond_c
    const v13, 0x64747365

    if-ne v12, v13, :cond_d

    const-string v12, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_4

    :cond_d
    const v13, 0x64747378

    if-ne v12, v13, :cond_e

    const-string v12, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_4

    :cond_e
    const v13, 0x73616d72

    if-ne v12, v13, :cond_f

    const-string v12, "audio/3gpp"

    goto :goto_4

    :cond_f
    const v13, 0x73617762

    if-ne v12, v13, :cond_10

    const-string v12, "audio/amr-wb"

    goto :goto_4

    :cond_10
    const v13, 0x6c70636d

    const-string v19, "audio/raw"

    if-eq v12, v13, :cond_1d

    const v13, 0x736f7774

    if-ne v12, v13, :cond_11

    goto :goto_6

    :cond_11
    const v13, 0x74776f73

    if-ne v12, v13, :cond_12

    const/high16 v12, 0x10000000

    goto :goto_8

    :cond_12
    const v13, 0x2e6d7032

    if-eq v12, v13, :cond_1c

    const v13, 0x2e6d7033

    if-ne v12, v13, :cond_13

    goto :goto_5

    :cond_13
    const v13, 0x6d686131

    if-ne v12, v13, :cond_14

    const-string v12, "audio/mha1"

    goto :goto_4

    :cond_14
    const v13, 0x6d686d31

    if-ne v12, v13, :cond_15

    const-string v12, "audio/mhm1"

    goto :goto_4

    :cond_15
    if-ne v12, v14, :cond_16

    const-string v12, "audio/alac"

    goto :goto_4

    :cond_16
    const v13, 0x616c6177

    if-ne v12, v13, :cond_17

    const-string v12, "audio/g711-alaw"

    goto/16 :goto_4

    :cond_17
    const v13, 0x756c6177

    if-ne v12, v13, :cond_18

    const-string v12, "audio/g711-mlaw"

    goto/16 :goto_4

    :cond_18
    const v13, 0x4f707573

    if-ne v12, v13, :cond_19

    const-string v12, "audio/opus"

    goto/16 :goto_4

    :cond_19
    const v13, 0x664c6143

    if-ne v12, v13, :cond_1a

    const-string v12, "audio/flac"

    goto/16 :goto_4

    :cond_1a
    const v13, 0x6d6c7061

    if-ne v12, v13, :cond_1b

    const-string v12, "audio/true-hd"

    goto/16 :goto_4

    :cond_1b
    const/4 v12, -0x1

    const/16 v19, 0x0

    goto :goto_8

    :cond_1c
    :goto_5
    const-string v12, "audio/mpeg"

    goto/16 :goto_4

    :cond_1d
    :goto_6
    const/4 v12, 0x2

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v12, "audio/vnd.dts.hd"

    goto/16 :goto_4

    :goto_8
    move-object/from16 v13, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_9
    sub-int v11, v10, v1

    if-ge v11, v2, :cond_30

    .line 21
    invoke-virtual {v0, v10}, Ly4/e0;->T(I)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    move-result v11

    if-lez v11, :cond_1f

    const/4 v14, 0x1

    goto :goto_a

    :cond_1f
    const/4 v14, 0x0

    :goto_a
    const-string v9, "childAtomSize must be positive"

    .line 23
    invoke-static {v14, v9}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    move-result v9

    const v14, 0x6d686143

    if-ne v9, v14, :cond_20

    add-int/lit8 v9, v11, -0xd

    .line 25
    new-array v14, v9, [B

    add-int/lit8 v1, v10, 0xd

    .line 26
    invoke-virtual {v0, v1}, Ly4/e0;->T(I)V

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v14, v1, v9}, Ly4/e0;->l([BII)V

    .line 28
    invoke-static {v14}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    move-result-object v21

    :goto_b
    const/4 v9, -0x1

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    :goto_c
    const/16 v18, 0x0

    goto/16 :goto_12

    :cond_20
    const v1, 0x65736473

    if-eq v9, v1, :cond_2c

    if-eqz p6, :cond_21

    const v14, 0x77617665

    if-ne v9, v14, :cond_21

    goto/16 :goto_10

    :cond_21
    const v1, 0x64616333

    if-ne v9, v1, :cond_22

    add-int/lit8 v1, v10, 0x8

    .line 29
    invoke-virtual {v0, v1}, Ly4/e0;->T(I)V

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Ld3/b;->d(Ly4/e0;Ljava/lang/String;Ljava/lang/String;Lf3/m;)Lb3/x1;

    move-result-object v1

    iput-object v1, v6, Lo3/b$d;->b:Lb3/x1;

    :goto_d
    const v2, 0x616c6163

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    goto/16 :goto_f

    :cond_22
    const v1, 0x64656333

    if-ne v9, v1, :cond_23

    add-int/lit8 v1, v10, 0x8

    .line 31
    invoke-virtual {v0, v1}, Ly4/e0;->T(I)V

    .line 32
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Ld3/b;->h(Ly4/e0;Ljava/lang/String;Ljava/lang/String;Lf3/m;)Lb3/x1;

    move-result-object v1

    iput-object v1, v6, Lo3/b$d;->b:Lb3/x1;

    goto :goto_d

    :cond_23
    const v1, 0x64616334

    if-ne v9, v1, :cond_24

    add-int/lit8 v1, v10, 0x8

    .line 33
    invoke-virtual {v0, v1}, Ly4/e0;->T(I)V

    .line 34
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Ld3/c;->b(Ly4/e0;Ljava/lang/String;Ljava/lang/String;Lf3/m;)Lb3/x1;

    move-result-object v1

    iput-object v1, v6, Lo3/b$d;->b:Lb3/x1;

    goto :goto_d

    :cond_24
    const v1, 0x646d6c70

    if-ne v9, v1, :cond_26

    if-lez v15, :cond_25

    move v7, v15

    const/4 v8, 0x2

    goto :goto_b

    .line 35
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    move-result-object v0

    throw v0

    :cond_26
    const/4 v14, 0x0

    const v1, 0x64647473

    if-eq v9, v1, :cond_2b

    const v1, 0x75647473

    if-ne v9, v1, :cond_27

    goto/16 :goto_e

    :cond_27
    const v1, 0x644f7073

    if-ne v9, v1, :cond_28

    add-int/lit8 v1, v11, -0x8

    .line 36
    sget-object v9, Lo3/b;->a:[B

    array-length v14, v9

    add-int/2addr v14, v1

    invoke-static {v9, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v2, v10, 0x8

    .line 37
    invoke-virtual {v0, v2}, Ly4/e0;->T(I)V

    .line 38
    array-length v2, v9

    invoke-virtual {v0, v14, v2, v1}, Ly4/e0;->l([BII)V

    .line 39
    invoke-static {v14}, Ld3/u0;->a([B)Ljava/util/List;

    move-result-object v21

    goto/16 :goto_b

    :cond_28
    const v1, 0x64664c61

    if-ne v9, v1, :cond_29

    add-int/lit8 v1, v11, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 40
    new-array v2, v2, [B

    const/16 v9, 0x66

    const/4 v14, 0x0

    .line 41
    aput-byte v9, v2, v14

    const/16 v9, 0x4c

    const/4 v14, 0x1

    .line 42
    aput-byte v9, v2, v14

    const/16 v9, 0x61

    const/16 v17, 0x2

    .line 43
    aput-byte v9, v2, v17

    const/4 v9, 0x3

    const/16 v18, 0x43

    .line 44
    aput-byte v18, v2, v9

    add-int/lit8 v9, v10, 0xc

    .line 45
    invoke-virtual {v0, v9}, Ly4/e0;->T(I)V

    const/4 v9, 0x4

    .line 46
    invoke-virtual {v0, v2, v9, v1}, Ly4/e0;->l([BII)V

    .line 47
    invoke-static {v2}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    move-result-object v21

    move/from16 v16, v9

    const/4 v9, -0x1

    goto/16 :goto_c

    :cond_29
    const v2, 0x616c6163

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-ne v9, v2, :cond_2a

    add-int/lit8 v1, v11, -0xc

    .line 48
    new-array v7, v1, [B

    add-int/lit8 v8, v10, 0xc

    .line 49
    invoke-virtual {v0, v8}, Ly4/e0;->T(I)V

    const/4 v9, 0x0

    .line 50
    invoke-virtual {v0, v7, v9, v1}, Ly4/e0;->l([BII)V

    .line 51
    invoke-static {v7}, Ly4/e;->g([B)Landroid/util/Pair;

    move-result-object v1

    .line 52
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 53
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 54
    invoke-static {v7}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    move-result-object v21

    move v7, v8

    move/from16 v18, v9

    const/4 v9, -0x1

    move v8, v1

    goto :goto_12

    :cond_2a
    const/4 v9, 0x0

    goto :goto_f

    :cond_2b
    :goto_e
    const v2, 0x616c6163

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    .line 55
    new-instance v1, Lb3/x1$b;

    invoke-direct {v1}, Lb3/x1$b;-><init>()V

    .line 56
    invoke-virtual {v1, v3}, Lb3/x1$b;->T(I)Lb3/x1$b;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v13}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v8}, Lb3/x1$b;->J(I)Lb3/x1$b;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v7}, Lb3/x1$b;->h0(I)Lb3/x1$b;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v5}, Lb3/x1$b;->O(Lf3/m;)Lb3/x1$b;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v4}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lb3/x1$b;->G()Lb3/x1;

    move-result-object v1

    iput-object v1, v6, Lo3/b$d;->b:Lb3/x1;

    :goto_f
    move/from16 v18, v9

    const/4 v9, -0x1

    goto :goto_12

    :cond_2c
    :goto_10
    const v2, 0x616c6163

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x0

    if-ne v9, v1, :cond_2d

    move v1, v10

    goto :goto_11

    .line 63
    :cond_2d
    invoke-static {v0, v1, v10, v11}, Lo3/b;->c(Ly4/e0;III)I

    move-result v1

    :goto_11
    const/4 v9, -0x1

    if-eq v1, v9, :cond_2f

    .line 64
    invoke-static {v0, v1}, Lo3/b;->i(Ly4/e0;I)Lo3/b$b;

    move-result-object v19

    .line 65
    invoke-static/range {v19 .. v19}, Lo3/b$b;->a(Lo3/b$b;)Ljava/lang/String;

    move-result-object v13

    .line 66
    invoke-static/range {v19 .. v19}, Lo3/b$b;->b(Lo3/b$b;)[B

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v2, "audio/mp4a-latm"

    .line 67
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 68
    invoke-static {v1}, Ld3/a;->f([B)Ld3/a$b;

    move-result-object v2

    .line 69
    iget v7, v2, Ld3/a$b;->a:I

    .line 70
    iget v8, v2, Ld3/a$b;->b:I

    .line 71
    iget-object v2, v2, Ld3/a$b;->c:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 72
    :cond_2e
    invoke-static {v1}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    move-result-object v21

    :cond_2f
    :goto_12
    add-int/2addr v10, v11

    move/from16 v1, p2

    move/from16 v2, p3

    const v14, 0x616c6163

    goto/16 :goto_9

    .line 73
    :cond_30
    iget-object v0, v6, Lo3/b$d;->b:Lb3/x1;

    if-nez v0, :cond_32

    if-eqz v13, :cond_32

    .line 74
    new-instance v0, Lb3/x1$b;

    invoke-direct {v0}, Lb3/x1$b;-><init>()V

    .line 75
    invoke-virtual {v0, v3}, Lb3/x1$b;->T(I)Lb3/x1$b;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v13}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v0

    move-object/from16 v1, v20

    .line 77
    invoke-virtual {v0, v1}, Lb3/x1$b;->K(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v8}, Lb3/x1$b;->J(I)Lb3/x1$b;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v7}, Lb3/x1$b;->h0(I)Lb3/x1$b;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v12}, Lb3/x1$b;->a0(I)Lb3/x1$b;

    move-result-object v0

    move-object/from16 v1, v21

    .line 81
    invoke-virtual {v0, v1}, Lb3/x1$b;->V(Ljava/util/List;)Lb3/x1$b;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v5}, Lb3/x1$b;->O(Lf3/m;)Lb3/x1$b;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v4}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    move-result-object v0

    if-eqz v19, :cond_31

    .line 84
    invoke-static/range {v19 .. v19}, Lo3/b$b;->d(Lo3/b$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lq6/e;->j(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lb3/x1$b;->I(I)Lb3/x1$b;

    move-result-object v1

    .line 85
    invoke-static/range {v19 .. v19}, Lo3/b$b;->c(Lo3/b$b;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lq6/e;->j(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lb3/x1$b;->b0(I)Lb3/x1$b;

    .line 86
    :cond_31
    invoke-virtual {v0}, Lb3/x1$b;->G()Lb3/x1;

    move-result-object v0

    iput-object v0, v6, Lo3/b$d;->b:Lb3/x1;

    :cond_32
    return-void
.end method

.method static g(Ly4/e0;II)Landroid/util/Pair;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x66726d61

    .line 26
    .line 27
    .line 28
    if-ne v9, v10, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const v10, 0x7363686d

    .line 40
    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {p0, v4}, Ly4/e0;->U(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Ly4/e0;->D(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const v10, 0x73636869

    .line 54
    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "cenc"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    const-string p1, "cbc1"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    const-string p1, "cens"

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    const-string p1, "cbcs"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 103
    .line 104
    invoke-static {p2, v0}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eq v5, v1, :cond_7

    .line 108
    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v7, v4}, Lo3/b;->t(Ly4/e0;IILjava/lang/String;)Lo3/p;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    move v2, p1

    .line 124
    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 125
    .line 126
    invoke-static {v2, p1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lo3/p;

    .line 134
    .line 135
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method private static h(Lo3/a$a;)Landroid/util/Pair;
    .locals 8

    .line 1
    const v0, 0x656c7374

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lo3/a$b;->b:Ly4/e0;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lo3/a;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Ly4/e0;->K()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v2, v1, [J

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v1, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v0, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Ly4/e0;->L()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    aput-wide v6, v2, v4

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Ly4/e0;->z()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    :goto_2
    aput-wide v6, v3, v4

    .line 65
    .line 66
    invoke-virtual {p0}, Ly4/e0;->C()S

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v5, :cond_3

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {p0, v5}, Ly4/e0;->U(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Unsupported media rate."

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static i(Ly4/e0;I)Lo3/b$b;
    .locals 13

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    add-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Ly4/e0;->T(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ly4/e0;->U(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lo3/b;->j(Ly4/e0;)I

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Ly4/e0;->U(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    and-int/lit16 v3, v2, 0x80

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ly4/e0;->U(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    and-int/lit8 v3, v2, 0x40

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {p0, v3}, Ly4/e0;->U(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    and-int/lit8 v2, v2, 0x20

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ly4/e0;->U(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0, p1}, Ly4/e0;->U(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lo3/b;->j(Ly4/e0;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ly4/v;->h(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v1, "audio/mpeg"

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_6

    .line 69
    .line 70
    const-string v1, "audio/vnd.dts"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_6

    .line 77
    .line 78
    const-string v1, "audio/vnd.dts.hd"

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-virtual {p0, p1}, Ly4/e0;->U(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Lo3/b;->j(Ly4/e0;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    new-array v6, p1, [B

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, v6, v2, p1}, Ly4/e0;->l([BII)V

    .line 109
    .line 110
    .line 111
    new-instance p0, Lo3/b$b;

    .line 112
    .line 113
    const-wide/16 v7, 0x0

    .line 114
    .line 115
    cmp-long p1, v4, v7

    .line 116
    .line 117
    const-wide/16 v9, -0x1

    .line 118
    .line 119
    if-lez p1, :cond_4

    .line 120
    .line 121
    move-wide v11, v4

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    move-wide v11, v9

    .line 124
    :goto_0
    cmp-long p1, v0, v7

    .line 125
    .line 126
    if-lez p1, :cond_5

    .line 127
    .line 128
    move-wide v7, v0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-wide v7, v9

    .line 131
    :goto_1
    move-object v2, p0

    .line 132
    move-object v4, v6

    .line 133
    move-wide v5, v11

    .line 134
    invoke-direct/range {v2 .. v8}, Lo3/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 135
    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_6
    :goto_2
    new-instance p0, Lo3/b$b;

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    const-wide/16 v5, -0x1

    .line 142
    .line 143
    const-wide/16 v7, -0x1

    .line 144
    .line 145
    move-object v2, p0

    .line 146
    invoke-direct/range {v2 .. v8}, Lo3/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 147
    .line 148
    .line 149
    return-object p0
.end method

.method private static j(Ly4/e0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static k(Ly4/e0;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static l(Ly4/e0;I)Lt3/a;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lo3/h;->c(Ly4/e0;)Lt3/a$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lt3/a;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lt3/a;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method private static m(Ly4/e0;)Landroid/util/Pair;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lo3/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Ly4/e0;->U(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ly4/e0;->M()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    shr-int/lit8 v1, p0, 0xa

    .line 48
    .line 49
    and-int/lit8 v1, v1, 0x1f

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x60

    .line 52
    .line 53
    int-to-char v1, v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    shr-int/lit8 v1, p0, 0x5

    .line 58
    .line 59
    and-int/lit8 v1, v1, 0x1f

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x60

    .line 62
    .line 63
    int-to-char v1, v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    and-int/lit8 p0, p0, 0x1f

    .line 68
    .line 69
    add-int/lit8 p0, p0, 0x60

    .line 70
    .line 71
    int-to-char p0, p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public static n(Lo3/a$a;)Lt3/a;
    .locals 10

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    iget-object v0, v0, Lo3/a$b;->b:Ly4/e0;

    .line 30
    .line 31
    invoke-static {v0}, Lo3/b;->k(Ly4/e0;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Lo3/a$b;->b:Ly4/e0;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ly4/e0;->T(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ly4/e0;->p()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_0
    const/16 v5, 0x8

    .line 57
    .line 58
    if-ge v4, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ly4/e0;->p()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x4

    .line 65
    invoke-virtual {v0, v7}, Ly4/e0;->U(I)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v6, v5

    .line 69
    invoke-virtual {v0, v6}, Ly4/e0;->D(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lo3/a$b;->b:Ly4/e0;

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Ly4/e0;->T(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Ly4/e0;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-le v4, v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/lit8 v7, v7, -0x1

    .line 107
    .line 108
    if-ltz v7, :cond_2

    .line 109
    .line 110
    if-ge v7, v1, :cond_2

    .line 111
    .line 112
    aget-object v7, v3, v7

    .line 113
    .line 114
    add-int v8, v4, v6

    .line 115
    .line 116
    invoke-static {p0, v8, v7}, Lo3/h;->f(Ly4/e0;ILjava/lang/String;)Lz3/a;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v9, "Skipped metadata with unknown key index: "

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "AtomParsers"

    .line 144
    .line 145
    invoke-static {v8, v7}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 149
    invoke-virtual {p0, v4}, Ly4/e0;->T(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance v2, Lt3/a;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lt3/a;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static o(Ly4/e0;IIILo3/b$d;)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    add-int/lit8 p2, p2, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ly4/e0;->T(I)V

    .line 6
    .line 7
    .line 8
    const p2, 0x6d657474

    .line 9
    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ly4/e0;->A()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ly4/e0;->A()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lb3/x1$b;

    .line 23
    .line 24
    invoke-direct {p1}, Lb3/x1$b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lb3/x1$b;->T(I)Lb3/x1$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lb3/x1$b;->G()Lb3/x1;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iput-object p0, p4, Lo3/b$d;->b:Lb3/x1;

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private static p(Ly4/e0;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lo3/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x10

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method private static q(Ly4/e0;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->K()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Ly4/e0;->K()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static r(Ly4/e0;II)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x70726f6a

    .line 19
    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ly4/e0;->e()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static s(Ly4/e0;II)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x73696e66

    .line 31
    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lo3/b;->g(Ly4/e0;II)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static t(Ly4/e0;IILjava/lang/String;)Lo3/p;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x74656e63

    .line 20
    .line 21
    .line 22
    if-ne v3, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Lo3/a;->c(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Ly4/e0;->U(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Ly4/e0;->U(I)V

    .line 40
    .line 41
    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 v1, p1, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0xf

    .line 54
    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    :goto_2
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    new-array v7, p1, [B

    .line 73
    .line 74
    invoke-virtual {p0, v7, v0, p1}, Ly4/e0;->l([BII)V

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-array v2, p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0, p1}, Ly4/e0;->l([BII)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    new-instance p0, Lo3/p;

    .line 92
    .line 93
    move-object v3, p0

    .line 94
    move-object v5, p3

    .line 95
    invoke-direct/range {v3 .. v10}, Lo3/p;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method

.method private static u(Ly4/e0;I)Lt3/a;
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge v1, p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const v5, 0x73617574

    .line 26
    .line 27
    .line 28
    if-ne v4, v5, :cond_3

    .line 29
    .line 30
    const/16 p1, 0xe

    .line 31
    .line 32
    if-ge v3, p1, :cond_0

    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    const/4 p1, 0x5

    .line 36
    invoke-virtual {p0, p1}, Ly4/e0;->U(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v1, 0xd

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_1
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    const/high16 p1, 0x43700000    # 240.0f

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    .line 56
    .line 57
    :goto_1
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ly4/e0;->G()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    new-instance v1, Lt3/a;

    .line 66
    .line 67
    new-array v0, v0, [Lt3/a$b;

    .line 68
    .line 69
    new-instance v2, Lz3/e;

    .line 70
    .line 71
    invoke-direct {v2, p1, p0}, Lz3/e;-><init>(FI)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    aput-object v2, v0, p0

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    add-int/2addr v1, v3

    .line 82
    invoke-virtual {p0, v1}, Ly4/e0;->T(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-object v2
.end method

.method private static v(Lo3/o;Lo3/a$a;Lg3/v;)Lo3/r;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v5, Lo3/b$e;

    iget-object v6, v1, Lo3/o;->f:Lb3/x1;

    invoke-direct {v5, v3, v6}, Lo3/b$e;-><init>(Lo3/a$b;Lb3/x1;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 4
    new-instance v5, Lo3/b$f;

    invoke-direct {v5, v3}, Lo3/b$f;-><init>(Lo3/a$b;)V

    .line 5
    :goto_0
    invoke-interface {v5}, Lo3/b$c;->b()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lo3/r;

    new-array v2, v6, [J

    new-array v3, v6, [I

    const/4 v4, 0x0

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lo3/r;-><init>(Lo3/o;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v7, 0x7374636f

    .line 7
    invoke-virtual {v0, v7}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const v7, 0x636f3634

    .line 8
    invoke-virtual {v0, v7}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v7

    invoke-static {v7}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo3/a$b;

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v6

    .line 9
    :goto_1
    iget-object v7, v7, Lo3/a$b;->b:Ly4/e0;

    const v10, 0x73747363

    .line 10
    invoke-virtual {v0, v10}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v10

    invoke-static {v10}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo3/a$b;

    iget-object v10, v10, Lo3/a$b;->b:Ly4/e0;

    const v11, 0x73747473

    .line 11
    invoke-virtual {v0, v11}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v11

    invoke-static {v11}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo3/a$b;

    iget-object v11, v11, Lo3/a$b;->b:Ly4/e0;

    const v12, 0x73747373

    .line 12
    invoke-virtual {v0, v12}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 13
    iget-object v12, v12, Lo3/a$b;->b:Ly4/e0;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const v13, 0x63747473

    .line 14
    invoke-virtual {v0, v13}, Lo3/a$a;->g(I)Lo3/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lo3/a$b;->b:Ly4/e0;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 16
    :goto_3
    new-instance v13, Lo3/b$a;

    invoke-direct {v13, v10, v7, v9}, Lo3/b$a;-><init>(Ly4/e0;Ly4/e0;Z)V

    const/16 v7, 0xc

    .line 17
    invoke-virtual {v11, v7}, Ly4/e0;->T(I)V

    .line 18
    invoke-virtual {v11}, Ly4/e0;->K()I

    move-result v9

    sub-int/2addr v9, v8

    .line 19
    invoke-virtual {v11}, Ly4/e0;->K()I

    move-result v10

    .line 20
    invoke-virtual {v11}, Ly4/e0;->K()I

    move-result v14

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, v7}, Ly4/e0;->T(I)V

    .line 22
    invoke-virtual {v0}, Ly4/e0;->K()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    const/4 v4, -0x1

    if-eqz v12, :cond_7

    .line 23
    invoke-virtual {v12, v7}, Ly4/e0;->T(I)V

    .line 24
    invoke-virtual {v12}, Ly4/e0;->K()I

    move-result v7

    if-lez v7, :cond_6

    .line 25
    invoke-virtual {v12}, Ly4/e0;->K()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    move v7, v6

    .line 26
    :goto_5
    invoke-interface {v5}, Lo3/b$c;->a()I

    move-result v6

    .line 27
    iget-object v8, v1, Lo3/o;->f:Lb3/x1;

    iget-object v8, v8, Lb3/x1;->l:Ljava/lang/String;

    if-eq v6, v4, :cond_9

    const-string v4, "audio/raw"

    .line 28
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-mlaw"

    .line 29
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-alaw"

    .line 30
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v9, :cond_9

    if-nez v15, :cond_9

    if-nez v7, :cond_9

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    .line 31
    iget v0, v13, Lo3/b$a;->a:I

    new-array v4, v0, [J

    .line 32
    new-array v0, v0, [I

    .line 33
    :goto_7
    invoke-virtual {v13}, Lo3/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 34
    iget v5, v13, Lo3/b$a;->b:I

    iget-wide v9, v13, Lo3/b$a;->d:J

    aput-wide v9, v4, v5

    .line 35
    iget v9, v13, Lo3/b$a;->c:I

    aput v9, v0, v5

    goto :goto_7

    :cond_a
    int-to-long v9, v14

    .line 36
    invoke-static {v6, v4, v0, v9, v10}, Lo3/d;->a(I[J[IJ)Lo3/d$b;

    move-result-object v0

    .line 37
    iget-object v4, v0, Lo3/d$b;->a:[J

    .line 38
    iget-object v5, v0, Lo3/d$b;->b:[I

    .line 39
    iget v6, v0, Lo3/d$b;->c:I

    .line 40
    iget-object v9, v0, Lo3/d$b;->d:[J

    .line 41
    iget-object v10, v0, Lo3/d$b;->e:[I

    .line 42
    iget-wide v11, v0, Lo3/d$b;->f:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_13

    .line 43
    :cond_b
    new-array v4, v3, [J

    .line 44
    new-array v6, v3, [I

    .line 45
    new-array v7, v3, [J

    .line 46
    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v37, v9

    move/from16 v9, p1

    :goto_8
    move/from16 p1, v37

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_14

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_9
    if-nez v27, :cond_c

    .line 47
    invoke-virtual {v13}, Lo3/b$a;->a()Z

    move-result v22

    if-eqz v22, :cond_c

    move/from16 v30, v14

    move/from16 v31, v15

    .line 48
    iget-wide v14, v13, Lo3/b$a;->d:J

    move/from16 v32, v3

    .line 49
    iget v3, v13, Lo3/b$a;->c:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_9

    :cond_c
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_d

    const-string v2, "Unexpected end of chunk data"

    .line 50
    invoke-static {v10, v2}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 52
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 53
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 54
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_d

    :cond_d
    if-eqz v0, :cond_f

    :goto_a
    if-nez v23, :cond_e

    if-lez v16, :cond_e

    .line 55
    invoke-virtual {v0}, Ly4/e0;->K()I

    move-result v23

    .line 56
    invoke-virtual {v0}, Ly4/e0;->p()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v23, v23, -0x1

    :cond_f
    move/from16 v3, v21

    .line 57
    aput-wide v28, v4, v1

    .line 58
    invoke-interface {v5}, Lo3/b$c;->c()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_10

    move v11, v10

    :cond_10
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 59
    aput-wide v14, v7, v1

    if-nez v12, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 60
    :goto_b
    aput v10, v8, v1

    if-ne v1, v2, :cond_12

    const/4 v10, 0x1

    .line 61
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_12

    .line 62
    invoke-static {v12}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/e0;

    invoke-virtual {v2}, Ly4/e0;->K()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_12
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_13

    if-lez p1, :cond_13

    .line 63
    invoke-virtual/range {v24 .. v24}, Ly4/e0;->K()I

    move-result v2

    .line 64
    invoke-virtual/range {v24 .. v24}, Ly4/e0;->p()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_c

    :cond_13
    move v3, v14

    move/from16 v14, p1

    :goto_c
    move/from16 p1, v2

    .line 65
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v10

    move/from16 v37, v14

    move/from16 v14, p1

    goto/16 :goto_8

    :cond_14
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_d
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_16

    :goto_e
    if-lez v16, :cond_16

    .line 66
    invoke-virtual {v0}, Ly4/e0;->K()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x0

    goto :goto_f

    .line 67
    :cond_15
    invoke-virtual {v0}, Ly4/e0;->p()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_e

    :cond_16
    const/4 v0, 0x1

    :goto_f
    if-nez v9, :cond_18

    if-nez v30, :cond_18

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    move/from16 v2, v23

    if-nez v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    move-object/from16 v14, p0

    goto :goto_12

    :cond_18
    move/from16 v2, v23

    .line 68
    :cond_19
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p0

    iget v15, v14, Lo3/o;->a:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1a

    const-string v0, ", ctts invalid"

    goto :goto_11

    :cond_1a
    const-string v0, ""

    .line 69
    :goto_11
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v10, v0}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_13
    const-wide/32 v7, 0xf4240

    .line 71
    iget-wide v9, v14, Lo3/o;->c:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Ly4/q0;->M0(JJJ)J

    move-result-wide v7

    .line 72
    iget-object v1, v14, Lo3/o;->h:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_1b

    .line 73
    iget-wide v0, v14, Lo3/o;->c:J

    invoke-static {v12, v10, v11, v0, v1}, Ly4/q0;->O0([JJJ)V

    .line 74
    new-instance v9, Lo3/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo3/r;-><init>(Lo3/o;[J[II[J[IJ)V

    return-object v9

    .line 75
    :cond_1b
    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1d

    iget v1, v14, Lo3/o;->b:I

    if-ne v1, v5, :cond_1d

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1d

    .line 76
    iget-object v1, v14, Lo3/o;->i:[J

    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    .line 77
    iget-object v1, v14, Lo3/o;->h:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Lo3/o;->c:J

    iget-wide v7, v14, Lo3/o;->d:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 78
    invoke-static/range {v23 .. v28}, Ly4/q0;->M0(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    .line 79
    invoke-static/range {v5 .. v11}, Lo3/b;->b([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_1e

    sub-long v6, v15, v23

    const/4 v5, 0x0

    .line 80
    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Lo3/o;->f:Lb3/x1;

    iget v5, v5, Lb3/x1;->z:I

    int-to-long v8, v5

    iget-wide v10, v14, Lo3/o;->c:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 81
    invoke-static/range {v26 .. v31}, Ly4/q0;->M0(JJJ)J

    move-result-wide v10

    .line 82
    iget-object v5, v14, Lo3/o;->f:Lb3/x1;

    iget v5, v5, Lb3/x1;->z:I

    int-to-long v8, v5

    iget-wide v0, v14, Lo3/o;->c:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    .line 83
    invoke-static/range {v6 .. v11}, Ly4/q0;->M0(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1f

    :cond_1c
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    cmp-long v6, v0, v6

    if-gtz v6, :cond_1f

    long-to-int v4, v4

    move-object/from16 v5, p2

    .line 84
    iput v4, v5, Lg3/v;->a:I

    long-to-int v0, v0

    .line 85
    iput v0, v5, Lg3/v;->b:I

    .line 86
    iget-wide v0, v14, Lo3/o;->c:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Ly4/q0;->O0([JJJ)V

    .line 87
    iget-object v0, v14, Lo3/o;->h:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Lo3/o;->d:J

    .line 88
    invoke-static/range {v4 .. v9}, Ly4/q0;->M0(JJJ)J

    move-result-wide v7

    .line 89
    new-instance v9, Lo3/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo3/r;-><init>(Lo3/o;[J[II[J[IJ)V

    return-object v9

    :cond_1d
    move/from16 v25, v0

    :cond_1e
    move/from16 p1, v4

    .line 90
    :cond_1f
    iget-object v0, v14, Lo3/o;->h:[J

    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_21

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_21

    .line 91
    iget-object v0, v14, Lo3/o;->i:[J

    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    .line 92
    :goto_14
    array-length v0, v12

    if-ge v6, v0, :cond_20

    .line 93
    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lo3/o;->c:J

    move-wide/from16 v21, v0

    .line 94
    invoke-static/range {v17 .. v22}, Ly4/q0;->M0(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_20
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    .line 95
    iget-wide v0, v14, Lo3/o;->c:J

    move-wide/from16 v21, v0

    .line 96
    invoke-static/range {v17 .. v22}, Ly4/q0;->M0(JJJ)J

    move-result-wide v7

    .line 97
    new-instance v9, Lo3/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo3/r;-><init>(Lo3/o;[J[II[J[IJ)V

    return-object v9

    .line 98
    :cond_21
    iget v1, v14, Lo3/o;->b:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    const/4 v10, 0x1

    goto :goto_15

    :cond_22
    const/4 v10, 0x0

    .line 99
    :goto_15
    array-length v1, v0

    new-array v1, v1, [I

    .line 100
    array-length v0, v0

    new-array v0, v0, [I

    .line 101
    iget-object v4, v14, Lo3/o;->i:[J

    invoke-static {v4}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 102
    :goto_16
    iget-object v9, v14, Lo3/o;->h:[J

    array-length v11, v9

    if-ge v5, v11, :cond_26

    move-object v11, v2

    move-object v15, v3

    .line 103
    aget-wide v2, v4, v5

    const-wide/16 v21, -0x1

    cmp-long v16, v2, v21

    if-eqz v16, :cond_25

    .line 104
    aget-wide v26, v9, v5

    move/from16 v16, v8

    iget-wide v8, v14, Lo3/o;->c:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Lo3/o;->d:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    .line 105
    invoke-static/range {v26 .. v31}, Ly4/q0;->M0(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 106
    invoke-static {v12, v2, v3, v8, v8}, Ly4/q0;->i([JJZZ)I

    move-result v9

    aput v9, v1, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    .line 107
    invoke-static {v12, v2, v3, v10, v6}, Ly4/q0;->e([JJZZ)I

    move-result v2

    aput v2, v0, v5

    .line 108
    :goto_17
    aget v2, v1, v5

    aget v3, v0, v5

    if-ge v2, v3, :cond_23

    aget v7, v13, v2

    and-int/2addr v7, v8

    if-nez v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    .line 109
    aput v2, v1, v5

    goto :goto_17

    :cond_23
    sub-int v7, v3, v2

    add-int v7, v21, v7

    move/from16 v9, v16

    if-eq v9, v2, :cond_24

    move v2, v8

    goto :goto_18

    :cond_24
    move v2, v6

    :goto_18
    or-int v2, p2, v2

    goto :goto_19

    :cond_25
    move/from16 p2, v6

    move/from16 v21, v7

    move v9, v8

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p2

    move v3, v9

    :goto_19
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v2, v11

    move-object v3, v15

    goto :goto_16

    :cond_26
    move-object v11, v2

    move-object v15, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_27

    goto :goto_1a

    :cond_27
    move v8, v6

    :goto_1a
    or-int v2, p2, v8

    if-eqz v2, :cond_28

    .line 110
    new-array v3, v7, [J

    goto :goto_1b

    :cond_28
    move-object v3, v11

    :goto_1b
    if-eqz v2, :cond_29

    .line 111
    new-array v4, v7, [I

    goto :goto_1c

    :cond_29
    move-object v4, v15

    :goto_1c
    if-eqz v2, :cond_2a

    move v5, v6

    goto :goto_1d

    :cond_2a
    move/from16 v5, p1

    :goto_1d
    if-eqz v2, :cond_2b

    .line 112
    new-array v8, v7, [I

    goto :goto_1e

    :cond_2b
    move-object v8, v13

    .line 113
    :goto_1e
    new-array v7, v7, [J

    move/from16 p2, v5

    move-object/from16 p1, v15

    const-wide/16 v9, 0x0

    move v15, v6

    .line 114
    :goto_1f
    iget-object v5, v14, Lo3/o;->h:[J

    array-length v5, v5

    if-ge v6, v5, :cond_30

    .line 115
    iget-object v5, v14, Lo3/o;->i:[J

    aget-wide v16, v5, v6

    .line 116
    aget v5, v1, v6

    move-object/from16 v18, v1

    .line 117
    aget v1, v0, v6

    move-object/from16 v27, v0

    if-eqz v2, :cond_2c

    sub-int v0, v1, v5

    .line 118
    invoke-static {v11, v5, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v28, v11

    move-object/from16 v11, p1

    .line 119
    invoke-static {v11, v5, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {v13, v5, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_2c
    move-object/from16 v28, v11

    move-object/from16 v11, p1

    :goto_20
    move/from16 v0, p2

    :goto_21
    if-ge v5, v1, :cond_2f

    const-wide/32 v23, 0xf4240

    move/from16 v29, v0

    move/from16 p1, v1

    .line 121
    iget-wide v0, v14, Lo3/o;->d:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Ly4/q0;->M0(JJJ)J

    move-result-wide v0

    .line 122
    aget-wide v21, v12, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    sub-long v12, v21, v16

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/16 v8, 0x0

    .line 123
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    const-wide/32 v33, 0xf4240

    iget-wide v12, v14, Lo3/o;->c:J

    move-wide/from16 v35, v12

    .line 124
    invoke-static/range {v31 .. v36}, Ly4/q0;->M0(JJJ)J

    move-result-wide v12

    add-long/2addr v0, v12

    .line 125
    aput-wide v0, v7, v15

    if-eqz v2, :cond_2d

    .line 126
    aget v0, v4, v15

    move/from16 v1, v29

    if-le v0, v1, :cond_2e

    .line 127
    aget v0, v11, v5

    goto :goto_22

    :cond_2d
    move/from16 v1, v29

    :cond_2e
    move v0, v1

    :goto_22
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move-wide/from16 v9, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    goto :goto_21

    :cond_2f
    move v1, v0

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const-wide/16 v8, 0x0

    .line 128
    iget-object v0, v14, Lo3/o;->h:[J

    aget-wide v12, v0, v6

    add-long v12, v21, v12

    add-int/lit8 v6, v6, 0x1

    move/from16 p2, v1

    move-object/from16 p1, v11

    move-wide v9, v12

    move-object/from16 v1, v18

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v0, v27

    move-object/from16 v11, v28

    move-object/from16 v8, v30

    goto/16 :goto_1f

    :cond_30
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/32 v23, 0xf4240

    .line 129
    iget-wide v0, v14, Lo3/o;->d:J

    move-wide/from16 v25, v0

    .line 130
    invoke-static/range {v21 .. v26}, Ly4/q0;->M0(JJJ)J

    move-result-wide v8

    .line 131
    new-instance v10, Lo3/r;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move-object v5, v7

    move-object/from16 v6, v30

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lo3/r;-><init>(Lo3/o;[J[II[J[IJ)V

    return-object v10

    :cond_31
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 132
    invoke-static {v0, v1}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    move-result-object v0

    throw v0
.end method

.method private static w(Ly4/e0;IILjava/lang/String;Lf3/m;Z)Lo3/b$d;
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {v10, v0}, Ly4/e0;->T(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 11
    .line 12
    .line 13
    move-result v12

    .line 14
    new-instance v13, Lo3/b$d;

    .line 15
    .line 16
    invoke-direct {v13, v12}, Lo3/b$d;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    move v15, v14

    .line 21
    :goto_0
    if-ge v15, v12, :cond_9

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    if-lez v16, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v0, v14

    .line 36
    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lg3/n;->a(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->p()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const v0, 0x61766331

    .line 46
    .line 47
    .line 48
    if-eq v1, v0, :cond_8

    .line 49
    .line 50
    const v0, 0x61766333

    .line 51
    .line 52
    .line 53
    if-eq v1, v0, :cond_8

    .line 54
    .line 55
    const v0, 0x656e6376

    .line 56
    .line 57
    .line 58
    if-eq v1, v0, :cond_8

    .line 59
    .line 60
    const v0, 0x6d317620

    .line 61
    .line 62
    .line 63
    if-eq v1, v0, :cond_8

    .line 64
    .line 65
    const v0, 0x6d703476

    .line 66
    .line 67
    .line 68
    if-eq v1, v0, :cond_8

    .line 69
    .line 70
    const v0, 0x68766331

    .line 71
    .line 72
    .line 73
    if-eq v1, v0, :cond_8

    .line 74
    .line 75
    const v0, 0x68657631

    .line 76
    .line 77
    .line 78
    if-eq v1, v0, :cond_8

    .line 79
    .line 80
    const v0, 0x73323633

    .line 81
    .line 82
    .line 83
    if-eq v1, v0, :cond_8

    .line 84
    .line 85
    const v0, 0x48323633

    .line 86
    .line 87
    .line 88
    if-eq v1, v0, :cond_8

    .line 89
    .line 90
    const v0, 0x76703038

    .line 91
    .line 92
    .line 93
    if-eq v1, v0, :cond_8

    .line 94
    .line 95
    const v0, 0x76703039

    .line 96
    .line 97
    .line 98
    if-eq v1, v0, :cond_8

    .line 99
    .line 100
    const v0, 0x61763031

    .line 101
    .line 102
    .line 103
    if-eq v1, v0, :cond_8

    .line 104
    .line 105
    const v0, 0x64766176

    .line 106
    .line 107
    .line 108
    if-eq v1, v0, :cond_8

    .line 109
    .line 110
    const v0, 0x64766131

    .line 111
    .line 112
    .line 113
    if-eq v1, v0, :cond_8

    .line 114
    .line 115
    const v0, 0x64766865

    .line 116
    .line 117
    .line 118
    if-eq v1, v0, :cond_8

    .line 119
    .line 120
    const v0, 0x64766831

    .line 121
    .line 122
    .line 123
    if-ne v1, v0, :cond_1

    .line 124
    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :cond_1
    const v0, 0x6d703461

    .line 128
    .line 129
    .line 130
    if-eq v1, v0, :cond_7

    .line 131
    .line 132
    const v0, 0x656e6361

    .line 133
    .line 134
    .line 135
    if-eq v1, v0, :cond_7

    .line 136
    .line 137
    const v0, 0x61632d33

    .line 138
    .line 139
    .line 140
    if-eq v1, v0, :cond_7

    .line 141
    .line 142
    const v0, 0x65632d33

    .line 143
    .line 144
    .line 145
    if-eq v1, v0, :cond_7

    .line 146
    .line 147
    const v0, 0x61632d34

    .line 148
    .line 149
    .line 150
    if-eq v1, v0, :cond_7

    .line 151
    .line 152
    const v0, 0x6d6c7061

    .line 153
    .line 154
    .line 155
    if-eq v1, v0, :cond_7

    .line 156
    .line 157
    const v0, 0x64747363

    .line 158
    .line 159
    .line 160
    if-eq v1, v0, :cond_7

    .line 161
    .line 162
    const v0, 0x64747365

    .line 163
    .line 164
    .line 165
    if-eq v1, v0, :cond_7

    .line 166
    .line 167
    const v0, 0x64747368

    .line 168
    .line 169
    .line 170
    if-eq v1, v0, :cond_7

    .line 171
    .line 172
    const v0, 0x6474736c

    .line 173
    .line 174
    .line 175
    if-eq v1, v0, :cond_7

    .line 176
    .line 177
    const v0, 0x64747378

    .line 178
    .line 179
    .line 180
    if-eq v1, v0, :cond_7

    .line 181
    .line 182
    const v0, 0x73616d72

    .line 183
    .line 184
    .line 185
    if-eq v1, v0, :cond_7

    .line 186
    .line 187
    const v0, 0x73617762

    .line 188
    .line 189
    .line 190
    if-eq v1, v0, :cond_7

    .line 191
    .line 192
    const v0, 0x6c70636d

    .line 193
    .line 194
    .line 195
    if-eq v1, v0, :cond_7

    .line 196
    .line 197
    const v0, 0x736f7774

    .line 198
    .line 199
    .line 200
    if-eq v1, v0, :cond_7

    .line 201
    .line 202
    const v0, 0x74776f73

    .line 203
    .line 204
    .line 205
    if-eq v1, v0, :cond_7

    .line 206
    .line 207
    const v0, 0x2e6d7032

    .line 208
    .line 209
    .line 210
    if-eq v1, v0, :cond_7

    .line 211
    .line 212
    const v0, 0x2e6d7033

    .line 213
    .line 214
    .line 215
    if-eq v1, v0, :cond_7

    .line 216
    .line 217
    const v0, 0x6d686131

    .line 218
    .line 219
    .line 220
    if-eq v1, v0, :cond_7

    .line 221
    .line 222
    const v0, 0x6d686d31

    .line 223
    .line 224
    .line 225
    if-eq v1, v0, :cond_7

    .line 226
    .line 227
    const v0, 0x616c6163

    .line 228
    .line 229
    .line 230
    if-eq v1, v0, :cond_7

    .line 231
    .line 232
    const v0, 0x616c6177

    .line 233
    .line 234
    .line 235
    if-eq v1, v0, :cond_7

    .line 236
    .line 237
    const v0, 0x756c6177

    .line 238
    .line 239
    .line 240
    if-eq v1, v0, :cond_7

    .line 241
    .line 242
    const v0, 0x4f707573

    .line 243
    .line 244
    .line 245
    if-eq v1, v0, :cond_7

    .line 246
    .line 247
    const v0, 0x664c6143

    .line 248
    .line 249
    .line 250
    if-ne v1, v0, :cond_2

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_2
    const v0, 0x54544d4c

    .line 254
    .line 255
    .line 256
    if-eq v1, v0, :cond_5

    .line 257
    .line 258
    const v0, 0x74783367

    .line 259
    .line 260
    .line 261
    if-eq v1, v0, :cond_5

    .line 262
    .line 263
    const v0, 0x77767474

    .line 264
    .line 265
    .line 266
    if-eq v1, v0, :cond_5

    .line 267
    .line 268
    const v0, 0x73747070

    .line 269
    .line 270
    .line 271
    if-eq v1, v0, :cond_5

    .line 272
    .line 273
    const v0, 0x63363038

    .line 274
    .line 275
    .line 276
    if-ne v1, v0, :cond_3

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_3
    const v0, 0x6d657474

    .line 280
    .line 281
    .line 282
    if-ne v1, v0, :cond_4

    .line 283
    .line 284
    invoke-static {v10, v1, v9, v11, v13}, Lo3/b;->o(Ly4/e0;IIILo3/b$d;)V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_4
    const v0, 0x63616d6d

    .line 289
    .line 290
    .line 291
    if-ne v1, v0, :cond_6

    .line 292
    .line 293
    new-instance v0, Lb3/x1$b;

    .line 294
    .line 295
    invoke-direct {v0}, Lb3/x1$b;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v11}, Lb3/x1$b;->T(I)Lb3/x1$b;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v1, "application/x-camera-motion"

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lb3/x1$b;->G()Lb3/x1;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iput-object v0, v13, Lo3/b$d;->b:Lb3/x1;

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    .line 316
    .line 317
    move v2, v9

    .line 318
    move/from16 v3, v16

    .line 319
    .line 320
    move/from16 v4, p1

    .line 321
    .line 322
    move-object/from16 v5, p3

    .line 323
    .line 324
    move-object v6, v13

    .line 325
    invoke-static/range {v0 .. v6}, Lo3/b;->x(Ly4/e0;IIIILjava/lang/String;Lo3/b$d;)V

    .line 326
    .line 327
    .line 328
    :cond_6
    :goto_3
    move/from16 v17, v9

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    .line 332
    .line 333
    move v2, v9

    .line 334
    move/from16 v3, v16

    .line 335
    .line 336
    move/from16 v4, p1

    .line 337
    .line 338
    move-object/from16 v5, p3

    .line 339
    .line 340
    move/from16 v6, p5

    .line 341
    .line 342
    move-object/from16 v7, p4

    .line 343
    .line 344
    move-object v8, v13

    .line 345
    move/from16 v17, v9

    .line 346
    .line 347
    move v9, v15

    .line 348
    invoke-static/range {v0 .. v9}, Lo3/b;->f(Ly4/e0;IIIILjava/lang/String;ZLf3/m;Lo3/b$d;I)V

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_8
    :goto_5
    move/from16 v17, v9

    .line 353
    .line 354
    move-object/from16 v0, p0

    .line 355
    .line 356
    move/from16 v2, v17

    .line 357
    .line 358
    move/from16 v3, v16

    .line 359
    .line 360
    move/from16 v4, p1

    .line 361
    .line 362
    move/from16 v5, p2

    .line 363
    .line 364
    move-object/from16 v6, p4

    .line 365
    .line 366
    move-object v7, v13

    .line 367
    move v8, v15

    .line 368
    invoke-static/range {v0 .. v8}, Lo3/b;->D(Ly4/e0;IIIIILf3/m;Lo3/b$d;I)V

    .line 369
    .line 370
    .line 371
    :goto_6
    add-int v9, v17, v16

    .line 372
    .line 373
    invoke-virtual {v10, v9}, Ly4/e0;->T(I)V

    .line 374
    .line 375
    .line 376
    add-int/lit8 v15, v15, 0x1

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_9
    return-object v13
.end method

.method private static x(Ly4/e0;IIIILjava/lang/String;Lo3/b$d;)V
    .locals 4

    .line 1
    add-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    add-int/lit8 p2, p2, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ly4/e0;->T(I)V

    .line 6
    .line 7
    .line 8
    const p2, 0x54544d4c

    .line 9
    .line 10
    .line 11
    const-string v0, "application/ttml+xml"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const p2, 0x74783367

    .line 23
    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    add-int/lit8 p3, p3, -0x8

    .line 28
    .line 29
    add-int/lit8 p3, p3, -0x8

    .line 30
    .line 31
    new-array p1, p3, [B

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Ly4/e0;->l([BII)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lo6/q;->F(Ljava/lang/Object;)Lo6/q;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v0, "application/x-quicktime-tx3g"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const p0, 0x77767474

    .line 45
    .line 46
    .line 47
    if-ne p1, p0, :cond_2

    .line 48
    .line 49
    const-string v0, "application/x-mp4-vtt"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const p0, 0x73747070

    .line 53
    .line 54
    .line 55
    if-ne p1, p0, :cond_3

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const p0, 0x63363038

    .line 61
    .line 62
    .line 63
    if-ne p1, p0, :cond_4

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    iput p0, p6, Lo3/b$d;->d:I

    .line 67
    .line 68
    const-string v0, "application/x-mp4-cea-608"

    .line 69
    .line 70
    :goto_0
    new-instance p0, Lb3/x1$b;

    .line 71
    .line 72
    invoke-direct {p0}, Lb3/x1$b;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p4}, Lb3/x1$b;->T(I)Lb3/x1$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v0}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, p5}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v2, v3}, Lb3/x1$b;->k0(J)Lb3/x1$b;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v1}, Lb3/x1$b;->V(Ljava/util/List;)Lb3/x1$b;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lb3/x1$b;->G()Lb3/x1;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iput-object p0, p6, Lo3/b$d;->b:Lb3/x1;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method private static y(Ly4/e0;)Lo3/b$g;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly4/e0;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lo3/a;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {p0, v3}, Ly4/e0;->U(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-virtual {p0, v4}, Ly4/e0;->U(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ly4/e0;->f()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move v0, v4

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_1
    if-ge v7, v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Ly4/e0;->e()[B

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    add-int v9, v5, v7

    .line 48
    .line 49
    aget-byte v8, v8, v9

    .line 50
    .line 51
    const/4 v9, -0x1

    .line 52
    if-eq v8, v9, :cond_2

    .line 53
    .line 54
    move v5, v6

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 v5, 0x1

    .line 60
    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ly4/e0;->U(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    if-nez v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Ly4/e0;->I()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {p0}, Ly4/e0;->L()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    :goto_3
    const-wide/16 v9, 0x0

    .line 83
    .line 84
    cmp-long v5, v0, v9

    .line 85
    .line 86
    if-nez v5, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move-wide v7, v0

    .line 90
    :goto_4
    invoke-virtual {p0, v2}, Ly4/e0;->U(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p0, v4}, Ly4/e0;->U(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p0}, Ly4/e0;->p()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/high16 v4, -0x10000

    .line 113
    .line 114
    const/high16 v5, 0x10000

    .line 115
    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    if-ne v1, v5, :cond_7

    .line 119
    .line 120
    if-ne v2, v4, :cond_7

    .line 121
    .line 122
    if-nez p0, :cond_7

    .line 123
    .line 124
    const/16 v6, 0x5a

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_7
    if-nez v0, :cond_8

    .line 128
    .line 129
    if-ne v1, v4, :cond_8

    .line 130
    .line 131
    if-ne v2, v5, :cond_8

    .line 132
    .line 133
    if-nez p0, :cond_8

    .line 134
    .line 135
    const/16 v6, 0x10e

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    if-ne v0, v4, :cond_9

    .line 139
    .line 140
    if-nez v1, :cond_9

    .line 141
    .line 142
    if-nez v2, :cond_9

    .line 143
    .line 144
    if-ne p0, v4, :cond_9

    .line 145
    .line 146
    const/16 v6, 0xb4

    .line 147
    .line 148
    :cond_9
    :goto_5
    new-instance p0, Lo3/b$g;

    .line 149
    .line 150
    invoke-direct {p0, v3, v7, v8, v6}, Lo3/b$g;-><init>(IJI)V

    .line 151
    .line 152
    .line 153
    return-object p0
.end method

.method private static z(Lo3/a$a;Lo3/a$b;JLf3/m;ZZ)Lo3/o;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v1, 0x6d646961

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lo3/a$a;

    .line 15
    .line 16
    const v2, 0x68646c72    # 4.3148E24f

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lo3/a$b;

    .line 28
    .line 29
    iget-object v2, v2, Lo3/a$b;->b:Ly4/e0;

    .line 30
    .line 31
    invoke-static {v2}, Lo3/b;->k(Ly4/e0;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Lo3/b;->d(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-ne v5, v2, :cond_0

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_0
    const v2, 0x746b6864

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lo3/a$b;

    .line 56
    .line 57
    iget-object v2, v2, Lo3/a$b;->b:Ly4/e0;

    .line 58
    .line 59
    invoke-static {v2}, Lo3/b;->y(Ly4/e0;)Lo3/b$g;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long v4, p2, v6

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-static {v2}, Lo3/b$g;->a(Lo3/b$g;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    move-object/from16 v4, p1

    .line 77
    .line 78
    move-wide v10, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object/from16 v4, p1

    .line 81
    .line 82
    move-wide/from16 v10, p2

    .line 83
    .line 84
    :goto_0
    iget-object v4, v4, Lo3/a$b;->b:Ly4/e0;

    .line 85
    .line 86
    invoke-static {v4}, Lo3/b;->p(Ly4/e0;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    cmp-long v4, v10, v6

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-wide/32 v12, 0xf4240

    .line 96
    .line 97
    .line 98
    move-wide v14, v8

    .line 99
    invoke-static/range {v10 .. v15}, Ly4/q0;->M0(JJJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    :goto_1
    move-wide v10, v6

    .line 104
    const v4, 0x6d696e66

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v4}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v4}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lo3/a$a;

    .line 116
    .line 117
    const v6, 0x7374626c

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v6}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lo3/a$a;

    .line 129
    .line 130
    const v6, 0x6d646864

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v6}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lo3/a$b;

    .line 142
    .line 143
    iget-object v1, v1, Lo3/a$b;->b:Ly4/e0;

    .line 144
    .line 145
    invoke-static {v1}, Lo3/b;->m(Ly4/e0;)Landroid/util/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const v6, 0x73747364

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v6}, Lo3/a$a;->g(I)Lo3/a$b;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_5

    .line 157
    .line 158
    iget-object v12, v4, Lo3/a$b;->b:Ly4/e0;

    .line 159
    .line 160
    invoke-static {v2}, Lo3/b$g;->b(Lo3/b$g;)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    invoke-static {v2}, Lo3/b$g;->c(Lo3/b$g;)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 169
    .line 170
    move-object v15, v4

    .line 171
    check-cast v15, Ljava/lang/String;

    .line 172
    .line 173
    move-object/from16 v16, p4

    .line 174
    .line 175
    move/from16 v17, p6

    .line 176
    .line 177
    invoke-static/range {v12 .. v17}, Lo3/b;->w(Ly4/e0;IILjava/lang/String;Lf3/m;Z)Lo3/b$d;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-nez p5, :cond_3

    .line 182
    .line 183
    const v6, 0x65647473

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v6}, Lo3/a$a;->f(I)Lo3/a$a;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    invoke-static {v0}, Lo3/b;->h(Lo3/a$a;)Landroid/util/Pair;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    .line 198
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v6, [J

    .line 201
    .line 202
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, [J

    .line 205
    .line 206
    move-object/from16 v17, v0

    .line 207
    .line 208
    move-object/from16 v16, v6

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_3
    move-object/from16 v16, v3

    .line 212
    .line 213
    move-object/from16 v17, v16

    .line 214
    .line 215
    :goto_2
    iget-object v0, v4, Lo3/b$d;->b:Lb3/x1;

    .line 216
    .line 217
    if-nez v0, :cond_4

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_4
    new-instance v0, Lo3/o;

    .line 221
    .line 222
    invoke-static {v2}, Lo3/b$g;->b(Lo3/b$g;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Ljava/lang/Long;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    iget-object v12, v4, Lo3/b$d;->b:Lb3/x1;

    .line 235
    .line 236
    iget v13, v4, Lo3/b$d;->d:I

    .line 237
    .line 238
    iget-object v14, v4, Lo3/b$d;->a:[Lo3/p;

    .line 239
    .line 240
    iget v15, v4, Lo3/b$d;->c:I

    .line 241
    .line 242
    move-object v3, v0

    .line 243
    move v4, v2

    .line 244
    invoke-direct/range {v3 .. v17}, Lo3/o;-><init>(IIJJJLb3/x1;I[Lo3/p;I[J[J)V

    .line 245
    .line 246
    .line 247
    :goto_3
    return-object v3

    .line 248
    :cond_5
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 249
    .line 250
    invoke-static {v0, v3}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    throw v0
.end method
