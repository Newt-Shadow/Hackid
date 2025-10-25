.class public final Lcom/yandex/metrica/impl/ob/If$o;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/If$o$a;
    }
.end annotation


# static fields
.field private static volatile g:[Lcom/yandex/metrica/impl/ob/If$o;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Lcom/yandex/metrica/impl/ob/If$o$a;

.field public e:J

.field public f:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$o;->a()Lcom/yandex/metrica/impl/ob/If$o;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/If$o;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/If$o;->g:[Lcom/yandex/metrica/impl/ob/If$o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/If$o;->g:[Lcom/yandex/metrica/impl/ob/If$o;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/If$o;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/If$o;->g:[Lcom/yandex/metrica/impl/ob/If$o;

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/If$o;->g:[Lcom/yandex/metrica/impl/ob/If$o;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$o;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/If$o$a;->b()[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->e:J

    .line 18
    .line 19
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 25
    .line 26
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->b:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->c:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    array-length v1, v1

    .line 35
    if-lez v1, :cond_1

    .line 36
    .line 37
    move v1, v3

    .line 38
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 39
    .line 40
    array-length v5, v4

    .line 41
    if-ge v1, v5, :cond_1

    .line 42
    .line 43
    aget-object v4, v4, v1

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v0, v4

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/If$o;->e:J

    .line 57
    .line 58
    const/4 v1, 0x5

    .line 59
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    array-length v1, v1

    .line 69
    if-lez v1, :cond_3

    .line 70
    .line 71
    move v1, v3

    .line 72
    :goto_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 73
    .line 74
    array-length v5, v4

    .line 75
    if-ge v3, v5, :cond_2

    .line 76
    .line 77
    aget v4, v4, v3

    .line 78
    .line 79
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    add-int/2addr v1, v4

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/2addr v0, v1

    .line 88
    array-length v1, v4

    .line 89
    mul-int/2addr v1, v2

    .line 90
    add-int/2addr v0, v1

    .line 91
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 9

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_18

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_17

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_16

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_15

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq v0, v1, :cond_11

    .line 23
    .line 24
    const/16 v1, 0x28

    .line 25
    .line 26
    if-eq v0, v1, :cond_10

    .line 27
    .line 28
    const/16 v1, 0x30

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eq v0, v1, :cond_9

    .line 33
    .line 34
    const/16 v1, 0x32

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readRawVarint32()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->pushLimit(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getPosition()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    move v5, v2

    .line 59
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getBytesUntilLimit()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-lez v6, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eq v6, v4, :cond_2

    .line 70
    .line 71
    if-eq v6, v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    if-eqz v5, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    move v6, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    array-length v6, v1

    .line 89
    :goto_2
    add-int/2addr v5, v6

    .line 90
    new-array v5, v5, [I

    .line 91
    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getBytesUntilLimit()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-lez v1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eq v1, v4, :cond_6

    .line 108
    .line 109
    if-eq v1, v3, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    add-int/lit8 v2, v6, 0x1

    .line 113
    .line 114
    aput v1, v5, v6

    .line 115
    .line 116
    move v6, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 119
    .line 120
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->popLimit(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    new-array v1, v0, [I

    .line 129
    .line 130
    move v5, v2

    .line 131
    move v6, v5

    .line 132
    :goto_4
    if-ge v5, v0, :cond_c

    .line 133
    .line 134
    if-eqz v5, :cond_a

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 137
    .line 138
    .line 139
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eq v7, v4, :cond_b

    .line 144
    .line 145
    if-eq v7, v3, :cond_b

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_b
    add-int/lit8 v8, v6, 0x1

    .line 149
    .line 150
    aput v7, v1, v6

    .line 151
    .line 152
    move v6, v8

    .line 153
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_c
    if-eqz v6, :cond_0

    .line 157
    .line 158
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 159
    .line 160
    if-nez v3, :cond_d

    .line 161
    .line 162
    move v4, v2

    .line 163
    goto :goto_6

    .line 164
    :cond_d
    array-length v4, v3

    .line 165
    :goto_6
    if-nez v4, :cond_e

    .line 166
    .line 167
    if-ne v6, v0, :cond_e

    .line 168
    .line 169
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_e
    add-int v0, v4, v6

    .line 174
    .line 175
    new-array v0, v0, [I

    .line 176
    .line 177
    if-eqz v4, :cond_f

    .line 178
    .line 179
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .line 181
    .line 182
    :cond_f
    invoke-static {v1, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->e:J

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_11
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 202
    .line 203
    if-nez v1, :cond_12

    .line 204
    .line 205
    move v3, v2

    .line 206
    goto :goto_7

    .line 207
    :cond_12
    array-length v3, v1

    .line 208
    :goto_7
    add-int/2addr v0, v3

    .line 209
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 210
    .line 211
    if-eqz v3, :cond_13

    .line 212
    .line 213
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .line 215
    .line 216
    :cond_13
    :goto_8
    add-int/lit8 v1, v0, -0x1

    .line 217
    .line 218
    if-ge v3, v1, :cond_14

    .line 219
    .line 220
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 221
    .line 222
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$o$a;-><init>()V

    .line 223
    .line 224
    .line 225
    aput-object v1, v4, v3

    .line 226
    .line 227
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 231
    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_14
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 237
    .line 238
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$o$a;-><init>()V

    .line 239
    .line 240
    .line 241
    aput-object v0, v4, v3

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 244
    .line 245
    .line 246
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->c:Ljava/lang/String;

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->b:Ljava/lang/String;

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->a:Ljava/lang/String;

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_18
    :goto_9
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->c:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    array-length v0, v0

    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    move v0, v1

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$o;->d:[Lcom/yandex/metrica/impl/ob/If$o$a;

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-ge v0, v3, :cond_1

    .line 32
    .line 33
    aget-object v2, v2, v0

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/If$o;->e:J

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    array-length v0, v0

    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$o;->f:[I

    .line 58
    .line 59
    array-length v2, v0

    .line 60
    if-ge v1, v2, :cond_2

    .line 61
    .line 62
    aget v0, v0, v1

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
