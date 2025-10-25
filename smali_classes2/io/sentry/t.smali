.class public final Lio/sentry/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/m0;


# static fields
.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/t;->b:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/t;->a:Lio/sentry/y0;

    .line 5
    .line 6
    return-void
.end method

.method private b([BII)Lio/sentry/b4;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/t;->b:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/io/StringReader;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lio/sentry/t;->a:Lio/sentry/y0;

    .line 14
    .line 15
    const-class p3, Lio/sentry/b4;

    .line 16
    .line 17
    invoke-interface {p2, p1, p3}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lio/sentry/b4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :catchall_0
    move-exception p2

    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p2
.end method

.method private c([BII)Lio/sentry/y4;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/t;->b:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/io/StringReader;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p2, p0, Lio/sentry/t;->a:Lio/sentry/y0;

    .line 14
    .line 15
    const-class p3, Lio/sentry/y4;

    .line 16
    .line 17
    invoke-interface {p2, p1, p3}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lio/sentry/y4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :catchall_0
    move-exception p2

    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p2
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lio/sentry/a4;
    .locals 10

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    move v5, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/16 v7, 0xa

    .line 19
    .line 20
    if-lez v6, :cond_2

    .line 21
    .line 22
    move v8, v2

    .line 23
    :goto_1
    if-ne v4, v3, :cond_1

    .line 24
    .line 25
    if-ge v8, v6, :cond_1

    .line 26
    .line 27
    aget-byte v9, v0, v8

    .line 28
    .line 29
    if-ne v9, v7, :cond_0

    .line 30
    .line 31
    add-int v4, v5, v8

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_2
    invoke-virtual {v1, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 38
    .line 39
    .line 40
    add-int/2addr v5, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    array-length v0, p1

    .line 47
    if-eqz v0, :cond_d

    .line 48
    .line 49
    if-eq v4, v3, :cond_c

    .line 50
    .line 51
    invoke-direct {p0, p1, v2, v4}, Lio/sentry/t;->b([BII)Lio/sentry/b4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_b

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_3
    move v5, v4

    .line 65
    :goto_3
    array-length v6, p1

    .line 66
    if-ge v5, v6, :cond_5

    .line 67
    .line 68
    aget-byte v6, p1, v5

    .line 69
    .line 70
    if-ne v6, v7, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    move v5, v3

    .line 77
    :goto_4
    if-eq v5, v3, :cond_a

    .line 78
    .line 79
    sub-int v6, v5, v4

    .line 80
    .line 81
    invoke-direct {p0, p1, v4, v6}, Lio/sentry/t;->c([BII)Lio/sentry/y4;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_9

    .line 86
    .line 87
    invoke-virtual {v4}, Lio/sentry/y4;->a()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-lez v6, :cond_9

    .line 92
    .line 93
    invoke-virtual {v4}, Lio/sentry/y4;->a()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    add-int/2addr v6, v5

    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    array-length v8, p1

    .line 101
    if-gt v6, v8, :cond_8

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    new-instance v8, Lio/sentry/x4;

    .line 110
    .line 111
    invoke-direct {v8, v4, v5}, Lio/sentry/x4;-><init>(Lio/sentry/y4;[B)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    array-length v4, p1

    .line 118
    if-ne v6, v4, :cond_6

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_6
    add-int/lit8 v4, v6, 0x1

    .line 122
    .line 123
    array-length v5, p1

    .line 124
    if-ne v4, v5, :cond_3

    .line 125
    .line 126
    aget-byte p1, p1, v6

    .line 127
    .line 128
    if-ne p1, v7, :cond_7

    .line 129
    .line 130
    :goto_5
    new-instance p1, Lio/sentry/a4;

    .line 131
    .line 132
    invoke-direct {p1, v0, v2}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 136
    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string v0, "Envelope has invalid data following an item."

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v4, "Invalid length for item at index \'"

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, "\'. Item is \'"

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, "\' bytes. There are \'"

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    array-length p1, p1

    .line 180
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p1, "\' in the buffer."

    .line 184
    .line 185
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v3, "Item header at index \'"

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, "\' is null or empty."

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v3, "Invalid envelope. Item at index \'"

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, "\'. has no header delimiter."

    .line 248
    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 261
    .line 262
    const-string v0, "Envelope header is null."

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 269
    .line 270
    const-string v0, "Envelope contains no header."

    .line 271
    .line 272
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    const-string v0, "Empty stream."

    .line 279
    .line 280
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :catchall_0
    move-exception p1

    .line 285
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    throw p1
.end method
