.class public final Lz4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz4/f;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lz4/f;->b:I

    .line 7
    .line 8
    iput p3, p0, Lz4/f;->c:I

    .line 9
    .line 10
    iput p4, p0, Lz4/f;->d:I

    .line 11
    .line 12
    iput p5, p0, Lz4/f;->e:F

    .line 13
    .line 14
    iput-object p6, p0, Lz4/f;->i:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lz4/f;->f:I

    .line 17
    .line 18
    iput p8, p0, Lz4/f;->g:I

    .line 19
    .line 20
    iput p9, p0, Lz4/f;->h:I

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ly4/e0;)Lz4/f;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Ly4/e0;->U(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    and-int/lit8 v1, v1, 0x3

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    :goto_0
    const/4 v7, 0x1

    .line 26
    if-ge v5, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Ly4/e0;->U(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    move v8, v4

    .line 36
    :goto_1
    if-ge v8, v7, :cond_0

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    add-int/lit8 v10, v9, 0x4

    .line 43
    .line 44
    add-int/2addr v6, v10

    .line 45
    invoke-virtual {v0, v9}, Ly4/e0;->U(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0, v3}, Ly4/e0;->T(I)V

    .line 55
    .line 56
    .line 57
    new-array v3, v6, [B

    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    const/high16 v8, 0x3f800000    # 1.0f

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    move v13, v5

    .line 64
    move v14, v13

    .line 65
    move/from16 v17, v14

    .line 66
    .line 67
    move/from16 v18, v17

    .line 68
    .line 69
    move/from16 v19, v18

    .line 70
    .line 71
    move v15, v8

    .line 72
    move-object/from16 v16, v9

    .line 73
    .line 74
    move v5, v4

    .line 75
    move v8, v5

    .line 76
    :goto_2
    if-ge v5, v2, :cond_4

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->G()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    and-int/lit8 v9, v9, 0x3f

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    move v11, v4

    .line 89
    :goto_3
    if-ge v11, v10, :cond_3

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->M()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    sget-object v7, Ly4/w;->a:[B

    .line 96
    .line 97
    move/from16 v20, v2

    .line 98
    .line 99
    array-length v2, v7

    .line 100
    invoke-static {v7, v4, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    array-length v2, v7

    .line 104
    add-int/2addr v8, v2

    .line 105
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->e()[B

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual/range {p0 .. p0}, Ly4/e0;->f()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-static {v2, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    const/16 v2, 0x21

    .line 117
    .line 118
    if-ne v9, v2, :cond_2

    .line 119
    .line 120
    if-nez v11, :cond_2

    .line 121
    .line 122
    add-int v2, v8, v12

    .line 123
    .line 124
    invoke-static {v3, v8, v2}, Ly4/w;->h([BII)Ly4/w$a;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget v13, v2, Ly4/w$a;->h:I

    .line 129
    .line 130
    iget v14, v2, Ly4/w$a;->i:I

    .line 131
    .line 132
    iget v7, v2, Ly4/w$a;->k:I

    .line 133
    .line 134
    iget v15, v2, Ly4/w$a;->l:I

    .line 135
    .line 136
    iget v4, v2, Ly4/w$a;->m:I

    .line 137
    .line 138
    move/from16 v16, v4

    .line 139
    .line 140
    iget v4, v2, Ly4/w$a;->j:F

    .line 141
    .line 142
    move/from16 v17, v4

    .line 143
    .line 144
    iget v4, v2, Ly4/w$a;->a:I

    .line 145
    .line 146
    move/from16 v18, v7

    .line 147
    .line 148
    iget-boolean v7, v2, Ly4/w$a;->b:Z

    .line 149
    .line 150
    move/from16 v27, v9

    .line 151
    .line 152
    iget v9, v2, Ly4/w$a;->c:I

    .line 153
    .line 154
    move/from16 v28, v10

    .line 155
    .line 156
    iget v10, v2, Ly4/w$a;->d:I

    .line 157
    .line 158
    move/from16 v19, v13

    .line 159
    .line 160
    iget-object v13, v2, Ly4/w$a;->e:[I

    .line 161
    .line 162
    iget v2, v2, Ly4/w$a;->f:I

    .line 163
    .line 164
    move/from16 v21, v4

    .line 165
    .line 166
    move/from16 v22, v7

    .line 167
    .line 168
    move/from16 v23, v9

    .line 169
    .line 170
    move/from16 v24, v10

    .line 171
    .line 172
    move-object/from16 v25, v13

    .line 173
    .line 174
    move/from16 v26, v2

    .line 175
    .line 176
    invoke-static/range {v21 .. v26}, Ly4/e;->c(IZII[II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move/from16 v13, v19

    .line 181
    .line 182
    move/from16 v19, v16

    .line 183
    .line 184
    move-object/from16 v16, v2

    .line 185
    .line 186
    move/from16 v29, v18

    .line 187
    .line 188
    move/from16 v18, v15

    .line 189
    .line 190
    move/from16 v15, v17

    .line 191
    .line 192
    move/from16 v17, v29

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_2
    move/from16 v27, v9

    .line 196
    .line 197
    move/from16 v28, v10

    .line 198
    .line 199
    :goto_4
    add-int/2addr v8, v12

    .line 200
    invoke-virtual {v0, v12}, Ly4/e0;->U(I)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v11, v11, 0x1

    .line 204
    .line 205
    move/from16 v2, v20

    .line 206
    .line 207
    move/from16 v9, v27

    .line 208
    .line 209
    move/from16 v10, v28

    .line 210
    .line 211
    const/4 v4, 0x0

    .line 212
    const/4 v7, 0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_3
    move/from16 v20, v2

    .line 215
    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    const/4 v7, 0x1

    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_4
    if-nez v6, :cond_5

    .line 223
    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    goto :goto_5

    .line 229
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_5
    move-object v11, v0

    .line 234
    new-instance v0, Lz4/f;

    .line 235
    .line 236
    const/4 v2, 0x1

    .line 237
    add-int/lit8 v12, v1, 0x1

    .line 238
    .line 239
    move-object v10, v0

    .line 240
    invoke-direct/range {v10 .. v19}, Lz4/f;-><init>(Ljava/util/List;IIIFLjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "Error parsing HEVC config"

    .line 246
    .line 247
    invoke-static {v1, v0}, Lb3/e3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lb3/e3;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    throw v0
.end method
