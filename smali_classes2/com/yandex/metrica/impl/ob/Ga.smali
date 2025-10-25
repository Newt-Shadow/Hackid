.class public Lcom/yandex/metrica/impl/ob/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ha;

.field private final b:Lcom/yandex/metrica/impl/ob/Ca;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;

.field private final d:Lcom/yandex/metrica/impl/ob/La;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ha;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ha;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ca;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ca;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/La;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/La;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ga;-><init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ca;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/La;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ca;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/La;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ga;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ga;->b:Lcom/yandex/metrica/impl/ob/Ca;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ga;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 7
    .line 8
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 9
    .line 10
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$h;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$h;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 16
    .line 17
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf$f;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf$f;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 33
    .line 34
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 35
    .line 36
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 37
    .line 38
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 39
    .line 40
    iget v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 41
    .line 42
    iput v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 43
    .line 44
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 45
    .line 46
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/yandex/metrica/impl/ob/Va;

    .line 6
    .line 7
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v3, v1, Lcom/yandex/metrica/impl/ob/Va;->b:I

    .line 13
    .line 14
    iput v3, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 15
    .line 16
    new-instance v3, Lcom/yandex/metrica/impl/ob/mf$h;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/mf$h;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Va;->c:Lcom/yandex/metrica/impl/ob/Wa;

    .line 24
    .line 25
    new-instance v3, Lcom/yandex/metrica/impl/ob/mf$f;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/mf$f;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v4, v1, Lcom/yandex/metrica/impl/ob/Wa;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 37
    .line 38
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Ga;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 39
    .line 40
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iput-object v5, v3, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 55
    .line 56
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->c:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iput v5, v3, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 63
    .line 64
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->d:Ljava/util/Map;

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/Ga;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 69
    .line 70
    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v6, v5, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 77
    .line 78
    iput-object v6, v3, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v5, 0x0

    .line 82
    :goto_0
    iget-object v6, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 83
    .line 84
    iput-object v3, v6, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    new-array v6, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    aput-object v4, v6, v7

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    aput-object v5, v6, v4

    .line 94
    .line 95
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Wa;->c:Ljava/util/List;

    .line 100
    .line 101
    new-instance v6, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v8, v0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget v8, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 112
    .line 113
    new-instance v9, Lcom/yandex/metrica/impl/ob/mf;

    .line 114
    .line 115
    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v9, v9, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 119
    .line 120
    if-eq v8, v9, :cond_1

    .line 121
    .line 122
    iget v8, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 123
    .line 124
    invoke-static {v4, v8}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    add-int/2addr v8, v7

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    move v8, v7

    .line 131
    :goto_1
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 132
    .line 133
    if-eqz v9, :cond_2

    .line 134
    .line 135
    invoke-static {v3, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    add-int/2addr v8, v9

    .line 140
    :cond_2
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 141
    .line 142
    if-eqz v9, :cond_3

    .line 143
    .line 144
    const/4 v10, 0x3

    .line 145
    invoke-static {v10, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    add-int/2addr v8, v9

    .line 150
    :cond_3
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 151
    .line 152
    const/4 v10, 0x4

    .line 153
    if-eqz v9, :cond_4

    .line 154
    .line 155
    invoke-static {v10, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    add-int/2addr v8, v9

    .line 160
    :cond_4
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 161
    .line 162
    if-eqz v9, :cond_5

    .line 163
    .line 164
    const/4 v11, 0x5

    .line 165
    invoke-static {v11, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    add-int/2addr v8, v9

    .line 170
    :cond_5
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 171
    .line 172
    if-eqz v9, :cond_6

    .line 173
    .line 174
    const/4 v11, 0x6

    .line 175
    invoke-static {v11, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    add-int/2addr v8, v9

    .line 180
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/Ga;->a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    move-object v13, v5

    .line 190
    move v12, v7

    .line 191
    move v14, v8

    .line 192
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    if-ge v12, v15, :cond_9

    .line 197
    .line 198
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    check-cast v15, Lcom/yandex/metrica/impl/ob/Ua;

    .line 203
    .line 204
    new-instance v4, Lcom/yandex/metrica/impl/ob/mf$g;

    .line 205
    .line 206
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/mf$g;-><init>()V

    .line 207
    .line 208
    .line 209
    iput v12, v4, Lcom/yandex/metrica/impl/ob/mf$g;->a:I

    .line 210
    .line 211
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Ga;->b:Lcom/yandex/metrica/impl/ob/Ca;

    .line 212
    .line 213
    invoke-virtual {v7, v15}, Lcom/yandex/metrica/impl/ob/Ca;->a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    iget-object v15, v7, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v15, Lcom/yandex/metrica/impl/ob/mf$c;

    .line 220
    .line 221
    iput-object v15, v4, Lcom/yandex/metrica/impl/ob/mf$g;->b:Lcom/yandex/metrica/impl/ob/mf$c;

    .line 222
    .line 223
    iget-object v15, v0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    .line 224
    .line 225
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-static {v10}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/ym/MessageNano;)I

    .line 233
    .line 234
    .line 235
    move-result v17

    .line 236
    and-int/lit8 v18, v17, -0x80

    .line 237
    .line 238
    if-nez v18, :cond_7

    .line 239
    .line 240
    const/16 v18, 0x0

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    .line 244
    .line 245
    .line 246
    move-result v18

    .line 247
    :goto_3
    add-int v15, v15, v17

    .line 248
    .line 249
    add-int v15, v15, v18

    .line 250
    .line 251
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v17

    .line 255
    if-eqz v17, :cond_8

    .line 256
    .line 257
    add-int v10, v14, v15

    .line 258
    .line 259
    const v3, 0x32000

    .line 260
    .line 261
    .line 262
    if-le v10, v3, :cond_8

    .line 263
    .line 264
    iget-object v3, v11, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 265
    .line 266
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 267
    .line 268
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    new-array v10, v10, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 273
    .line 274
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    check-cast v9, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 279
    .line 280
    iput-object v9, v3, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 281
    .line 282
    new-instance v3, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    new-instance v9, Lcom/yandex/metrica/impl/ob/Na;

    .line 288
    .line 289
    invoke-direct {v9, v11, v13}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/Ga;->a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    move-object v13, v5

    .line 300
    move v14, v8

    .line 301
    move-object v11, v9

    .line 302
    move-object v9, v3

    .line 303
    :cond_8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    const/4 v3, 0x2

    .line 307
    new-array v4, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 308
    .line 309
    const/4 v10, 0x0

    .line 310
    aput-object v13, v4, v10

    .line 311
    .line 312
    const/16 v16, 0x1

    .line 313
    .line 314
    aput-object v7, v4, v16

    .line 315
    .line 316
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    add-int/2addr v14, v15

    .line 321
    add-int/lit8 v12, v12, 0x1

    .line 322
    .line 323
    move v7, v10

    .line 324
    move/from16 v4, v16

    .line 325
    .line 326
    const/4 v10, 0x4

    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_9
    iget-object v1, v11, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 330
    .line 331
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 332
    .line 333
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 338
    .line 339
    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 344
    .line 345
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 346
    .line 347
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 348
    .line 349
    invoke-direct {v1, v11, v13}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    return-object v6
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
