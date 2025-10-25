.class public final Lcom/yandex/metrica/impl/ob/Af;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Af;->a()Lcom/yandex/metrica/impl/ob/Af;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Af;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Af;->b:I

    .line 5
    .line 6
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Af;->c:I

    .line 7
    .line 8
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 14
    .line 15
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
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Af;->b:I

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Af;->c:I

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    move v3, v1

    .line 38
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 39
    .line 40
    array-length v5, v4

    .line 41
    if-ge v1, v5, :cond_0

    .line 42
    .line 43
    aget v4, v4, v1

    .line 44
    .line 45
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v3, v4

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    add-int/2addr v0, v3

    .line 54
    array-length v1, v4

    .line 55
    mul-int/2addr v1, v2

    .line 56
    add-int/2addr v0, v1

    .line 57
    :cond_1
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
    if-eqz v0, :cond_d

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_c

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_b

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-eq v0, v1, :cond_a

    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq v0, v1, :cond_6

    .line 23
    .line 24
    const/16 v1, 0x22

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readRawVarint32()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->pushLimit(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getPosition()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    move v3, v2

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->getBytesUntilLimit()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lez v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    move v4, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    array-length v4, v1

    .line 71
    :goto_2
    add-int/2addr v3, v4

    .line 72
    new-array v5, v3, [I

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_3
    if-ge v4, v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    aput v1, v5, v4

    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->popLimit(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    move v3, v2

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    array-length v3, v1

    .line 107
    :goto_4
    add-int/2addr v0, v3

    .line 108
    new-array v4, v0, [I

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :cond_8
    :goto_5
    add-int/lit8 v1, v0, -0x1

    .line 116
    .line 117
    if-ge v3, v1, :cond_9

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    aput v1, v4, v3

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    aput v0, v4, v3

    .line 136
    .line 137
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Af;->c:I

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, p0, Lcom/yandex/metrica/impl/ob/Af;->b:I

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_d
    :goto_6
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Af;->b:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Af;->c:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    if-ge v0, v2, :cond_0

    .line 31
    .line 32
    aget v1, v1, v0

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
