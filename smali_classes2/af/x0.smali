.class public final Laf/x0;
.super Laf/g;
.source "SourceFile"


# instance fields
.field private final transient f:[[B

.field private final transient g:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    const-string v0, "segments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "directory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Laf/g;->e:Laf/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Laf/g;->l()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Laf/g;-><init>([B)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Laf/x0;->f:[[B

    .line 21
    .line 22
    iput-object p2, p0, Laf/x0;->g:[I

    .line 23
    .line 24
    return-void
.end method

.method private final M()Laf/g;
    .locals 2

    .line 1
    new-instance v0, Laf/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Laf/x0;->L()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Laf/g;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public E(II)Laf/g;
    .locals 11

    .line 1
    invoke-static {p0, p2}, Laf/b;->d(Laf/g;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    if-eqz v2, :cond_9

    .line 13
    .line 14
    invoke-virtual {p0}, Laf/g;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt p2, v2, :cond_1

    .line 19
    .line 20
    move v2, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v2, v0

    .line 23
    :goto_1
    const-string v3, "endIndex="

    .line 24
    .line 25
    if-eqz v2, :cond_8

    .line 26
    .line 27
    sub-int v2, p2, p1

    .line 28
    .line 29
    if-ltz v2, :cond_2

    .line 30
    .line 31
    move v4, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v4, v0

    .line 34
    :goto_2
    if-eqz v4, :cond_7

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Laf/g;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne p2, v3, :cond_3

    .line 43
    .line 44
    move-object p1, p0

    .line 45
    goto :goto_5

    .line 46
    :cond_3
    if-ne p1, p2, :cond_4

    .line 47
    .line 48
    sget-object p1, Laf/g;->e:Laf/g;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_4
    invoke-static {p0, p1}, Lbf/e;->b(Laf/x0;I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr p2, v1

    .line 56
    invoke-static {p0, p2}, Lbf/e;->b(Laf/x0;I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    add-int/lit8 v5, p2, 0x1

    .line 65
    .line 66
    invoke-static {v4, v3, v5}, Lyc/g;->l([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, [[B

    .line 71
    .line 72
    array-length v5, v4

    .line 73
    mul-int/lit8 v5, v5, 0x2

    .line 74
    .line 75
    new-array v5, v5, [I

    .line 76
    .line 77
    if-gt v3, p2, :cond_5

    .line 78
    .line 79
    move v6, v0

    .line 80
    move v7, v3

    .line 81
    :goto_3
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    aget v8, v8, v7

    .line 86
    .line 87
    sub-int/2addr v8, p1

    .line 88
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    aput v8, v5, v6

    .line 93
    .line 94
    add-int/lit8 v8, v6, 0x1

    .line 95
    .line 96
    array-length v9, v4

    .line 97
    add-int/2addr v6, v9

    .line 98
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    array-length v10, v10

    .line 107
    add-int/2addr v10, v7

    .line 108
    aget v9, v9, v10

    .line 109
    .line 110
    aput v9, v5, v6

    .line 111
    .line 112
    if-eq v7, p2, :cond_5

    .line 113
    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    move v6, v8

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    if-nez v3, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    sub-int/2addr v3, v1

    .line 126
    aget v0, p2, v3

    .line 127
    .line 128
    :goto_4
    array-length p2, v4

    .line 129
    aget v1, v5, p2

    .line 130
    .line 131
    sub-int/2addr p1, v0

    .line 132
    add-int/2addr v1, p1

    .line 133
    aput v1, v5, p2

    .line 134
    .line 135
    new-instance p1, Laf/x0;

    .line 136
    .line 137
    invoke-direct {p1, v4, v5}, Laf/x0;-><init>([[B[I)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object p1

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, " < beginIndex="

    .line 153
    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p2

    .line 174
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p2, " > length("

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Laf/g;->size()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const/16 p2, 0x29

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p2

    .line 216
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v0, "beginIndex="

    .line 222
    .line 223
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p1, " < 0"

    .line 230
    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p2
.end method

.method public G()Laf/g;
    .locals 1

    .line 1
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->G()Laf/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public I(Laf/d;II)V
    .locals 11

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int v0, p2, p3

    .line 7
    .line 8
    invoke-static {p0, p2}, Lbf/e;->b(Laf/x0;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    if-ge p2, v0, :cond_2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    add-int/lit8 v3, v1, -0x1

    .line 23
    .line 24
    aget v2, v2, v3

    .line 25
    .line 26
    :goto_1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aget v3, v3, v1

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    array-length v5, v5

    .line 42
    add-int/2addr v5, v1

    .line 43
    aget v4, v4, v5

    .line 44
    .line 45
    add-int/2addr v3, v2

    .line 46
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v3, p2

    .line 51
    sub-int v2, p2, v2

    .line 52
    .line 53
    add-int v7, v4, v2

    .line 54
    .line 55
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aget-object v6, v2, v1

    .line 60
    .line 61
    new-instance v2, Laf/v0;

    .line 62
    .line 63
    add-int v8, v7, v3

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    const/4 v10, 0x0

    .line 67
    move-object v5, v2

    .line 68
    invoke-direct/range {v5 .. v10}, Laf/v0;-><init>([BIIZZ)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p1, Laf/d;->a:Laf/v0;

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    iput-object v2, v2, Laf/v0;->g:Laf/v0;

    .line 76
    .line 77
    iput-object v2, v2, Laf/v0;->f:Laf/v0;

    .line 78
    .line 79
    iput-object v2, p1, Laf/d;->a:Laf/v0;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, v4, Laf/v0;->g:Laf/v0;

    .line 86
    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Laf/v0;->c(Laf/v0;)Laf/v0;

    .line 91
    .line 92
    .line 93
    :goto_2
    add-int/2addr p2, v3

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Laf/d;->k0()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    int-to-long p2, p3

    .line 102
    add-long/2addr v0, p2

    .line 103
    invoke-virtual {p1, v0, v1}, Laf/d;->d0(J)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final J()[I
    .locals 1

    .line 1
    iget-object v0, p0, Laf/x0;->g:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Laf/x0;->f:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public L()[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Laf/g;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    add-int v6, v1, v2

    .line 22
    .line 23
    aget v5, v5, v6

    .line 24
    .line 25
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    aget v6, v6, v2

    .line 30
    .line 31
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    aget-object v7, v7, v2

    .line 36
    .line 37
    sub-int v3, v6, v3

    .line 38
    .line 39
    add-int v8, v5, v3

    .line 40
    .line 41
    invoke-static {v7, v0, v4, v5, v8}, Lyc/g;->d([B[BIII)[B

    .line 42
    .line 43
    .line 44
    add-int/2addr v4, v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    move v3, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Laf/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Laf/g;

    .line 11
    .line 12
    invoke-virtual {p1}, Laf/g;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Laf/g;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Laf/g;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v2, p1, v2, v1}, Laf/x0;->y(ILaf/g;II)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)Laf/g;
    .locals 6

    .line 1
    const-string v0, "algorithm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v0, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int v4, v0, v1

    .line 24
    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    aget v4, v4, v1

    .line 32
    .line 33
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    aget-object v5, v5, v1

    .line 38
    .line 39
    sub-int v2, v4, v2

    .line 40
    .line 41
    invoke-virtual {p1, v5, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    move v2, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Laf/g;

    .line 53
    .line 54
    const-string v1, "digestBytes"

    .line 55
    .line 56
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p1}, Laf/g;-><init>([B)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Laf/g;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v0, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    move v3, v1

    .line 16
    :goto_0
    if-ge v1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int v5, v0, v1

    .line 23
    .line 24
    aget v4, v4, v5

    .line 25
    .line 26
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    aget v5, v5, v1

    .line 31
    .line 32
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    aget-object v6, v6, v1

    .line 37
    .line 38
    sub-int v3, v5, v3

    .line 39
    .line 40
    add-int/2addr v3, v4

    .line 41
    :goto_1
    if-ge v4, v3, :cond_1

    .line 42
    .line 43
    mul-int/lit8 v2, v2, 0x1f

    .line 44
    .line 45
    aget-byte v7, v6, v4

    .line 46
    .line 47
    add-int/2addr v2, v7

    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    move v3, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, v2}, Laf/g;->A(I)V

    .line 56
    .line 57
    .line 58
    move v0, v2

    .line 59
    :goto_2
    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->p()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public r([BI)I
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Laf/g;->r([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public t()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/x0;->L()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public u(I)B
    .locals 7

    .line 1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    int-to-long v1, v0

    .line 15
    int-to-long v3, p1

    .line 16
    const-wide/16 v5, 0x1

    .line 17
    .line 18
    invoke-static/range {v1 .. v6}, Laf/b;->b(JJJ)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lbf/e;->b(Laf/x0;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    add-int/lit8 v2, v0, -0x1

    .line 34
    .line 35
    aget v1, v1, v2

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v3, v3

    .line 46
    add-int/2addr v3, v0

    .line 47
    aget v2, v2, v3

    .line 48
    .line 49
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aget-object v0, v3, v0

    .line 54
    .line 55
    sub-int/2addr p1, v1

    .line 56
    add-int/2addr p1, v2

    .line 57
    aget-byte p1, v0, p1

    .line 58
    .line 59
    return p1
.end method

.method public w([BI)I
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Laf/x0;->M()Laf/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Laf/g;->w([BI)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public y(ILaf/g;II)Z
    .locals 6

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Laf/g;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-le p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    add-int/2addr p4, p1

    .line 18
    invoke-static {p0, p1}, Lbf/e;->b(Laf/x0;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    if-ge p1, p4, :cond_3

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move v2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    add-int/lit8 v3, v1, -0x1

    .line 33
    .line 34
    aget v2, v2, v3

    .line 35
    .line 36
    :goto_1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    aget v3, v3, v1

    .line 41
    .line 42
    sub-int/2addr v3, v2

    .line 43
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    array-length v5, v5

    .line 52
    add-int/2addr v5, v1

    .line 53
    aget v4, v4, v5

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sub-int/2addr v3, p1

    .line 61
    sub-int v2, p1, v2

    .line 62
    .line 63
    add-int/2addr v4, v2

    .line 64
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    aget-object v2, v2, v1

    .line 69
    .line 70
    invoke-virtual {p2, p3, v2, v4, v3}, Laf/g;->z(I[BII)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/2addr p3, v3

    .line 78
    add-int/2addr p1, v3

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x1

    .line 83
    :cond_4
    :goto_2
    return v0
.end method

.method public z(I[BII)Z
    .locals 6

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Laf/g;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p1, v1, :cond_4

    .line 15
    .line 16
    if-ltz p3, :cond_4

    .line 17
    .line 18
    array-length v1, p2

    .line 19
    sub-int/2addr v1, p4

    .line 20
    if-le p3, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/2addr p4, p1

    .line 24
    invoke-static {p0, p1}, Lbf/e;->b(Laf/x0;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    if-ge p1, p4, :cond_3

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move v2, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    add-int/lit8 v3, v1, -0x1

    .line 39
    .line 40
    aget v2, v2, v3

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    aget v3, v3, v1

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {p0}, Laf/x0;->J()[I

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    array-length v5, v5

    .line 58
    add-int/2addr v5, v1

    .line 59
    aget v4, v4, v5

    .line 60
    .line 61
    add-int/2addr v3, v2

    .line 62
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    sub-int/2addr v3, p1

    .line 67
    sub-int v2, p1, v2

    .line 68
    .line 69
    add-int/2addr v4, v2

    .line 70
    invoke-virtual {p0}, Laf/x0;->K()[[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    aget-object v2, v2, v1

    .line 75
    .line 76
    invoke-static {v2, v4, p2, p3, v3}, Laf/b;->a([BI[BII)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    add-int/2addr p3, v3

    .line 84
    add-int/2addr p1, v3

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x1

    .line 89
    :cond_4
    :goto_2
    return v0
.end method
