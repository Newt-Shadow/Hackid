.class final Lo6/k0;
.super Lo6/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/k0$b;,
        Lo6/k0$c;,
        Lo6/k0$a;
    }
.end annotation


# static fields
.field static final h:Lo6/r;


# instance fields
.field private final transient e:Ljava/lang/Object;

.field final transient f:[Ljava/lang/Object;

.field private final transient g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo6/k0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v2, v1}, Lo6/k0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lo6/k0;->h:Lo6/r;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo6/r;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo6/k0;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lo6/k0;->f:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lo6/k0;->g:I

    .line 9
    .line 10
    return-void
.end method

.method static p(I[Ljava/lang/Object;)Lo6/k0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lo6/k0;->q(I[Ljava/lang/Object;Lo6/r$a;)Lo6/k0;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static q(I[Ljava/lang/Object;Lo6/r$a;)Lo6/k0;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lo6/k0;->h:Lo6/r;

    .line 4
    .line 5
    check-cast p0, Lo6/k0;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    aget-object p0, p1, v0

    .line 13
    .line 14
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    aget-object p2, p1, v1

    .line 18
    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p2}, Lo6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lo6/k0;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p0, p2, p1, v1}, Lo6/k0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    array-length v2, p1

    .line 33
    shr-int/2addr v2, v1

    .line 34
    invoke-static {p0, v2}, Ln6/m;->k(II)I

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lo6/s;->o(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {p1, p0, v2, v0}, Lo6/k0;->r([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    check-cast v2, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    aget-object p0, v2, p0

    .line 53
    .line 54
    check-cast p0, Lo6/r$a$a;

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iput-object p0, p2, Lo6/r$a;->e:Lo6/r$a$a;

    .line 59
    .line 60
    aget-object p0, v2, v0

    .line 61
    .line 62
    aget-object p2, v2, v1

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    mul-int/lit8 v0, p2, 0x2

    .line 71
    .line 72
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    move-object v2, p0

    .line 77
    move p0, p2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lo6/r$a$a;->a()Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    throw p0

    .line 84
    :cond_3
    :goto_0
    new-instance p2, Lo6/k0;

    .line 85
    .line 86
    invoke-direct {p2, v2, p1, p0}, Lo6/k0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    return-object p2
.end method

.method private static r([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    aget-object p1, p0, p3

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    xor-int/lit8 p2, p3, 0x1

    .line 11
    .line 12
    aget-object p0, p0, p2

    .line 13
    .line 14
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p0}, Lo6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    add-int/lit8 v2, p2, -0x1

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    if-gt p2, v3, :cond_6

    .line 28
    .line 29
    new-array p2, p2, [B

    .line 30
    .line 31
    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 32
    .line 33
    .line 34
    move v3, v5

    .line 35
    :goto_0
    if-ge v5, p1, :cond_4

    .line 36
    .line 37
    mul-int/lit8 v4, v5, 0x2

    .line 38
    .line 39
    add-int/2addr v4, p3

    .line 40
    mul-int/lit8 v6, v3, 0x2

    .line 41
    .line 42
    add-int/2addr v6, p3

    .line 43
    aget-object v7, p0, v4

    .line 44
    .line 45
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    xor-int/2addr v4, v1

    .line 49
    aget-object v4, p0, v4

    .line 50
    .line 51
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {v7, v4}, Lo6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-static {v8}, Lo6/n;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    :goto_1
    and-int/2addr v8, v2

    .line 66
    aget-byte v9, p2, v8

    .line 67
    .line 68
    const/16 v10, 0xff

    .line 69
    .line 70
    and-int/2addr v9, v10

    .line 71
    if-ne v9, v10, :cond_2

    .line 72
    .line 73
    int-to-byte v9, v6

    .line 74
    aput-byte v9, p2, v8

    .line 75
    .line 76
    if-ge v3, v5, :cond_1

    .line 77
    .line 78
    aput-object v7, p0, v6

    .line 79
    .line 80
    xor-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    aput-object v4, p0, v6

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    aget-object v10, p0, v9

    .line 88
    .line 89
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_3

    .line 94
    .line 95
    new-instance v0, Lo6/r$a$a;

    .line 96
    .line 97
    xor-int/lit8 v6, v9, 0x1

    .line 98
    .line 99
    aget-object v8, p0, v6

    .line 100
    .line 101
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v7, v4, v8}, Lo6/r$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    aput-object v4, p0, v6

    .line 108
    .line 109
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    if-ne v3, p1, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    filled-new-array {p2, p0, v0}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    :goto_3
    return-object p2

    .line 127
    :cond_6
    const v3, 0x8000

    .line 128
    .line 129
    .line 130
    if-gt p2, v3, :cond_c

    .line 131
    .line 132
    new-array p2, p2, [S

    .line 133
    .line 134
    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([SS)V

    .line 135
    .line 136
    .line 137
    move v3, v5

    .line 138
    :goto_4
    if-ge v5, p1, :cond_a

    .line 139
    .line 140
    mul-int/lit8 v4, v5, 0x2

    .line 141
    .line 142
    add-int/2addr v4, p3

    .line 143
    mul-int/lit8 v6, v3, 0x2

    .line 144
    .line 145
    add-int/2addr v6, p3

    .line 146
    aget-object v7, p0, v4

    .line 147
    .line 148
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    xor-int/2addr v4, v1

    .line 152
    aget-object v4, p0, v4

    .line 153
    .line 154
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-static {v7, v4}, Lo6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-static {v8}, Lo6/n;->a(I)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    :goto_5
    and-int/2addr v8, v2

    .line 169
    aget-short v9, p2, v8

    .line 170
    .line 171
    const v10, 0xffff

    .line 172
    .line 173
    .line 174
    and-int/2addr v9, v10

    .line 175
    if-ne v9, v10, :cond_8

    .line 176
    .line 177
    int-to-short v9, v6

    .line 178
    aput-short v9, p2, v8

    .line 179
    .line 180
    if-ge v3, v5, :cond_7

    .line 181
    .line 182
    aput-object v7, p0, v6

    .line 183
    .line 184
    xor-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    aput-object v4, p0, v6

    .line 187
    .line 188
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_8
    aget-object v10, p0, v9

    .line 192
    .line 193
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_9

    .line 198
    .line 199
    new-instance v0, Lo6/r$a$a;

    .line 200
    .line 201
    xor-int/lit8 v6, v9, 0x1

    .line 202
    .line 203
    aget-object v8, p0, v6

    .line 204
    .line 205
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v7, v4, v8}, Lo6/r$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    aput-object v4, p0, v6

    .line 212
    .line 213
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_a
    if-ne v3, p1, :cond_b

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    filled-new-array {p2, p0, v0}, [Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    :goto_7
    return-object p2

    .line 231
    :cond_c
    new-array p2, p2, [I

    .line 232
    .line 233
    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 234
    .line 235
    .line 236
    move v3, v5

    .line 237
    :goto_8
    if-ge v5, p1, :cond_10

    .line 238
    .line 239
    mul-int/lit8 v6, v5, 0x2

    .line 240
    .line 241
    add-int/2addr v6, p3

    .line 242
    mul-int/lit8 v7, v3, 0x2

    .line 243
    .line 244
    add-int/2addr v7, p3

    .line 245
    aget-object v8, p0, v6

    .line 246
    .line 247
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    xor-int/2addr v6, v1

    .line 251
    aget-object v6, p0, v6

    .line 252
    .line 253
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-static {v8, v6}, Lo6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    invoke-static {v9}, Lo6/n;->a(I)I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    :goto_9
    and-int/2addr v9, v2

    .line 268
    aget v10, p2, v9

    .line 269
    .line 270
    if-ne v10, v4, :cond_e

    .line 271
    .line 272
    aput v7, p2, v9

    .line 273
    .line 274
    if-ge v3, v5, :cond_d

    .line 275
    .line 276
    aput-object v8, p0, v7

    .line 277
    .line 278
    xor-int/lit8 v7, v7, 0x1

    .line 279
    .line 280
    aput-object v6, p0, v7

    .line 281
    .line 282
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_e
    aget-object v11, p0, v10

    .line 286
    .line 287
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_f

    .line 292
    .line 293
    new-instance v0, Lo6/r$a$a;

    .line 294
    .line 295
    xor-int/lit8 v7, v10, 0x1

    .line 296
    .line 297
    aget-object v9, p0, v7

    .line 298
    .line 299
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v8, v6, v9}, Lo6/r$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    aput-object v6, p0, v7

    .line 306
    .line 307
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_10
    if-ne v3, p1, :cond_11

    .line 314
    .line 315
    goto :goto_b

    .line 316
    :cond_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    filled-new-array {p2, p0, v0}, [Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    :goto_b
    return-object p2
.end method

.method static s(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p2, v1, :cond_2

    .line 7
    .line 8
    aget-object p0, p1, p3

    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    xor-int/lit8 p0, p3, 0x1

    .line 20
    .line 21
    aget-object v0, p1, p0

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object v0

    .line 27
    :cond_2
    if-nez p0, :cond_3

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_3
    instance-of p2, p0, [B

    .line 31
    .line 32
    if-eqz p2, :cond_6

    .line 33
    .line 34
    move-object p2, p0

    .line 35
    check-cast p2, [B

    .line 36
    .line 37
    array-length p0, p2

    .line 38
    add-int/lit8 p3, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Lo6/n;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :goto_0
    and-int/2addr p0, p3

    .line 49
    aget-byte v2, p2, p0

    .line 50
    .line 51
    const/16 v3, 0xff

    .line 52
    .line 53
    and-int/2addr v2, v3

    .line 54
    if-ne v2, v3, :cond_4

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_4
    aget-object v3, p1, v2

    .line 58
    .line 59
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    xor-int/lit8 p0, v2, 0x1

    .line 66
    .line 67
    aget-object p0, p1, p0

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    instance-of p2, p0, [S

    .line 74
    .line 75
    if-eqz p2, :cond_9

    .line 76
    .line 77
    move-object p2, p0

    .line 78
    check-cast p2, [S

    .line 79
    .line 80
    array-length p0, p2

    .line 81
    add-int/lit8 p3, p0, -0x1

    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-static {p0}, Lo6/n;->a(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    :goto_1
    and-int/2addr p0, p3

    .line 92
    aget-short v2, p2, p0

    .line 93
    .line 94
    const v3, 0xffff

    .line 95
    .line 96
    .line 97
    and-int/2addr v2, v3

    .line 98
    if-ne v2, v3, :cond_7

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    aget-object v3, p1, v2

    .line 102
    .line 103
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_8

    .line 108
    .line 109
    xor-int/lit8 p0, v2, 0x1

    .line 110
    .line 111
    aget-object p0, p1, p0

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_8
    add-int/lit8 p0, p0, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_9
    check-cast p0, [I

    .line 118
    .line 119
    array-length p2, p0

    .line 120
    sub-int/2addr p2, v1

    .line 121
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    invoke-static {p3}, Lo6/n;->a(I)I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    :goto_2
    and-int/2addr p3, p2

    .line 130
    aget v2, p0, p3

    .line 131
    .line 132
    const/4 v3, -0x1

    .line 133
    if-ne v2, v3, :cond_a

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_a
    aget-object v3, p1, v2

    .line 137
    .line 138
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_b

    .line 143
    .line 144
    xor-int/lit8 p0, v2, 0x1

    .line 145
    .line 146
    aget-object p0, p1, p0

    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 150
    .line 151
    goto :goto_2
.end method


# virtual methods
.method e()Lo6/s;
    .locals 4

    .line 1
    new-instance v0, Lo6/k0$a;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/k0;->f:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lo6/k0;->g:I

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2, v3}, Lo6/k0$a;-><init>(Lo6/r;[Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method f()Lo6/s;
    .locals 4

    .line 1
    new-instance v0, Lo6/k0$c;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/k0;->f:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lo6/k0;->g:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lo6/k0$c;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lo6/k0$b;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lo6/k0$b;-><init>(Lo6/r;Lo6/q;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method g()Lo6/o;
    .locals 4

    .line 1
    new-instance v0, Lo6/k0$c;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/k0;->f:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lo6/k0;->g:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lo6/k0$c;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lo6/k0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/k0;->f:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lo6/k0;->g:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, p1}, Lo6/k0;->s(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_0
    return-object p1
.end method

.method i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lo6/k0;->g:I

    .line 2
    .line 3
    return v0
.end method
