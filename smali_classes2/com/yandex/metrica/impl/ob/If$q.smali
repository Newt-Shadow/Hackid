.class public final Lcom/yandex/metrica/impl/ob/If$q;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:[I

.field public e:J

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$q;->a()Lcom/yandex/metrica/impl/ob/If$q;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$q;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->a:J

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->b:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 14
    .line 15
    const-wide/32 v0, 0x3f480

    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->e:J

    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->f:I

    .line 23
    .line 24
    const-wide/32 v0, 0xa8c0

    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->g:J

    .line 28
    .line 29
    const-wide/16 v0, 0xe10

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->h:J

    .line 32
    .line 33
    const-wide/32 v0, 0x15180

    .line 34
    .line 35
    .line 36
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->i:J

    .line 37
    .line 38
    const-wide/16 v0, 0x1e

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->j:J

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 44
    .line 45
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->a:J

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->b:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    move v1, v2

    .line 30
    move v4, v1

    .line 31
    :goto_0
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 32
    .line 33
    array-length v6, v5

    .line 34
    if-ge v1, v6, :cond_0

    .line 35
    .line 36
    aget v5, v5, v1

    .line 37
    .line 38
    invoke-static {v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v4, v5

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    add-int/2addr v0, v4

    .line 47
    array-length v1, v5

    .line 48
    mul-int/2addr v1, v3

    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_1
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->e:J

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->f:I

    .line 59
    .line 60
    const/4 v4, 0x5

    .line 61
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->g:J

    .line 67
    .line 68
    const-wide/32 v6, 0xa8c0

    .line 69
    .line 70
    .line 71
    cmp-long v1, v4, v6

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->h:J

    .line 82
    .line 83
    const-wide/16 v6, 0xe10

    .line 84
    .line 85
    cmp-long v1, v4, v6

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    const/4 v1, 0x7

    .line 90
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    :cond_3
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->i:J

    .line 96
    .line 97
    const-wide/32 v6, 0x15180

    .line 98
    .line 99
    .line 100
    cmp-long v1, v4, v6

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-int/2addr v0, v1

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    array-length v1, v1

    .line 116
    if-lez v1, :cond_6

    .line 117
    .line 118
    move v1, v2

    .line 119
    :goto_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 120
    .line 121
    array-length v5, v4

    .line 122
    if-ge v2, v5, :cond_5

    .line 123
    .line 124
    aget v4, v4, v2

    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v1, v4

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    add-int/2addr v0, v1

    .line 135
    array-length v1, v4

    .line 136
    mul-int/2addr v1, v3

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_6
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$q;->j:J

    .line 139
    .line 140
    const-wide/16 v3, 0x1e

    .line 141
    .line 142
    cmp-long v3, v1, v3

    .line 143
    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    const/16 v3, 0xa

    .line 147
    .line 148
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_b

    .line 16
    .line 17
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->j:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readRawVarint32()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->pushLimit(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getPosition()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    move v3, v1

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getBytesUntilLimit()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    move v4, v1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    array-length v4, v2

    .line 59
    :goto_2
    add-int/2addr v3, v4

    .line 60
    new-array v5, v3, [I

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_3
    if-ge v4, v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    aput v1, v5, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->popLimit(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :sswitch_2
    const/16 v0, 0x48

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    move v3, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    array-length v3, v2

    .line 97
    :goto_4
    add-int/2addr v0, v3

    .line 98
    new-array v4, v0, [I

    .line 99
    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_5
    add-int/lit8 v1, v0, -0x1

    .line 106
    .line 107
    if-ge v3, v1, :cond_7

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    aput v1, v4, v3

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    aput v0, v4, v3

    .line 126
    .line 127
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->i:J

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->h:J

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->g:J

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->f:I

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->e:J

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readRawVarint32()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->pushLimit(I)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getPosition()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    move v3, v1

    .line 184
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getBytesUntilLimit()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-lez v4, :cond_8

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 191
    .line 192
    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 200
    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    move v4, v1

    .line 204
    goto :goto_7

    .line 205
    :cond_9
    array-length v4, v2

    .line 206
    :goto_7
    add-int/2addr v3, v4

    .line 207
    new-array v5, v3, [I

    .line 208
    .line 209
    if-eqz v4, :cond_a

    .line 210
    .line 211
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    .line 213
    .line 214
    :cond_a
    :goto_8
    if-ge v4, v3, :cond_b

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    aput v1, v5, v4

    .line 221
    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_b
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->popLimit(I)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :sswitch_9
    const/16 v0, 0x18

    .line 233
    .line 234
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 239
    .line 240
    if-nez v2, :cond_c

    .line 241
    .line 242
    move v3, v1

    .line 243
    goto :goto_9

    .line 244
    :cond_c
    array-length v3, v2

    .line 245
    :goto_9
    add-int/2addr v0, v3

    .line 246
    new-array v4, v0, [I

    .line 247
    .line 248
    if-eqz v3, :cond_d

    .line 249
    .line 250
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    :cond_d
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .line 254
    .line 255
    if-ge v3, v1, :cond_e

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    aput v1, v4, v3

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 264
    .line 265
    .line 266
    add-int/lit8 v3, v3, 0x1

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    aput v0, v4, v3

    .line 274
    .line 275
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->b:Ljava/lang/String;

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 288
    .line 289
    .line 290
    move-result-wide v0

    .line 291
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->a:J

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :goto_b
    :sswitch_c
    return-object p0

    .line 296
    nop

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->c:[I

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-ge v0, v3, :cond_0

    .line 26
    .line 27
    aget v2, v2, v0

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->e:J

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->f:I

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 46
    .line 47
    .line 48
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->g:J

    .line 49
    .line 50
    const-wide/32 v4, 0xa8c0

    .line 51
    .line 52
    .line 53
    cmp-long v0, v2, v4

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x6

    .line 58
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->h:J

    .line 62
    .line 63
    const-wide/16 v4, 0xe10

    .line 64
    .line 65
    cmp-long v0, v2, v4

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x7

    .line 70
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/If$q;->i:J

    .line 74
    .line 75
    const-wide/32 v4, 0x15180

    .line 76
    .line 77
    .line 78
    cmp-long v0, v2, v4

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    array-length v0, v0

    .line 92
    if-lez v0, :cond_4

    .line 93
    .line 94
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->d:[I

    .line 95
    .line 96
    array-length v2, v0

    .line 97
    if-ge v1, v2, :cond_4

    .line 98
    .line 99
    aget v0, v0, v1

    .line 100
    .line 101
    const/16 v2, 0x9

    .line 102
    .line 103
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$q;->j:J

    .line 110
    .line 111
    const-wide/16 v2, 0x1e

    .line 112
    .line 113
    cmp-long v2, v0, v2

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    const/16 v2, 0xa

    .line 118
    .line 119
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
