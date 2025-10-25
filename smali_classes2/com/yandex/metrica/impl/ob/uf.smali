.class public final Lcom/yandex/metrica/impl/ob/uf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/uf$a;,
        Lcom/yandex/metrica/impl/ob/uf$c;,
        Lcom/yandex/metrica/impl/ob/uf$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:D

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:Lcom/yandex/metrica/impl/ob/uf$a;

.field public g:J

.field public h:Z

.field public i:I

.field public j:I

.field public k:Lcom/yandex/metrica/impl/ob/uf$c;

.field public l:Lcom/yandex/metrica/impl/ob/uf$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/uf;->a()Lcom/yandex/metrica/impl/ob/uf;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/uf;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/uf;->a:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 7
    .line 8
    sget-object v1, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 9
    .line 10
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->c:[B

    .line 11
    .line 12
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 13
    .line 14
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/uf;->g:J

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/uf;->h:Z

    .line 25
    .line 26
    iput v2, p0, Lcom/yandex/metrica/impl/ob/uf;->i:I

    .line 27
    .line 28
    iput v0, p0, Lcom/yandex/metrica/impl/ob/uf;->j:I

    .line 29
    .line 30
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 36
    .line 37
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/uf;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->c:[B

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 48
    .line 49
    sget-object v3, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 50
    .line 51
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 66
    .line 67
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 74
    .line 75
    const/4 v3, 0x5

    .line 76
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const/4 v3, 0x6

    .line 86
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    :cond_4
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/uf;->g:J

    .line 92
    .line 93
    const-wide/16 v5, 0x0

    .line 94
    .line 95
    cmp-long v1, v3, v5

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    const/4 v1, 0x7

    .line 100
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/uf;->h:Z

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/2addr v0, v1

    .line 116
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/uf;->i:I

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    const/16 v3, 0x9

    .line 121
    .line 122
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    add-int/2addr v0, v1

    .line 127
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/uf;->j:I

    .line 128
    .line 129
    if-eq v1, v2, :cond_8

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 139
    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    const/16 v2, 0xb

    .line 143
    .line 144
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v0, v1

    .line 149
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 150
    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    const/16 v2, 0xc

    .line 154
    .line 155
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 3

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :sswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/uf$b;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uf$b;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/uf$c;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uf$c;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v0, v2, :cond_3

    .line 57
    .line 58
    if-eq v0, v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/uf;->j:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-eq v0, v2, :cond_4

    .line 71
    .line 72
    if-eq v0, v1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/uf;->i:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/uf;->h:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/uf;->g:J

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ob/uf$a;

    .line 97
    .line 98
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uf$a;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 102
    .line 103
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->c:[B

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Lcom/yandex/metrica/impl/ob/uf;->a:I

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :goto_1
    :sswitch_c
    return-object p0

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x11 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x48 -> :sswitch_3
        0x50 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/uf;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    cmp-long v0, v2, v4

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/uf;->b:D

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->c:[B

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 38
    .line 39
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 40
    .line 41
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->d:[B

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 54
    .line 55
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->e:[B

    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->f:Lcom/yandex/metrica/impl/ob/uf$a;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/uf;->g:J

    .line 76
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    cmp-long v0, v2, v4

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const/4 v0, 0x7

    .line 84
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/uf;->h:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/uf;->i:I

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    const/16 v2, 0x9

    .line 101
    .line 102
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/uf;->j:I

    .line 106
    .line 107
    if-eq v0, v1, :cond_8

    .line 108
    .line 109
    const/16 v1, 0xa

    .line 110
    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->k:Lcom/yandex/metrica/impl/ob/uf$c;

    .line 115
    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    const/16 v1, 0xb

    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 121
    .line 122
    .line 123
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/uf;->l:Lcom/yandex/metrica/impl/ob/uf$b;

    .line 124
    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    const/16 v1, 0xc

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 130
    .line 131
    .line 132
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
