.class public final Lcom/yandex/metrica/impl/ob/mf$k;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:Lcom/yandex/metrica/impl/ob/mf$d;

.field public d:Lcom/yandex/metrica/impl/ob/mf$i;

.field public e:Lcom/yandex/metrica/impl/ob/mf$j;

.field public f:Lcom/yandex/metrica/impl/ob/mf$j;

.field public g:[Lcom/yandex/metrica/impl/ob/mf$l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$k;->a()Lcom/yandex/metrica/impl/ob/mf$k;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 4
    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 15
    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/mf$l;->b()[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 24
    .line 25
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 6
    .line 7
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v0, v1

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    array-length v1, v1

    .line 84
    if-lez v1, :cond_7

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 88
    .line 89
    array-length v3, v2

    .line 90
    if-ge v1, v3, :cond_7

    .line 91
    .line 92
    aget-object v2, v2, v1

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    const/4 v3, 0x7

    .line 97
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    add-int/2addr v0, v2

    .line 102
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_e

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_d

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_b

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_9

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-eq v0, v1, :cond_7

    .line 26
    .line 27
    const/16 v1, 0x32

    .line 28
    .line 29
    if-eq v0, v1, :cond_5

    .line 30
    .line 31
    const/16 v1, 0x3a

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    move v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    array-length v3, v1

    .line 55
    :goto_1
    add-int/2addr v0, v3

    .line 56
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/mf$l;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 64
    .line 65
    if-ge v3, v1, :cond_4

    .line 66
    .line 67
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$l;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$l;-><init>()V

    .line 70
    .line 71
    .line 72
    aput-object v1, v4, v3

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$l;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$l;-><init>()V

    .line 86
    .line 87
    .line 88
    aput-object v0, v4, v3

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$j;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 106
    .line 107
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 114
    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 118
    .line 119
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$j;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 123
    .line 124
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 132
    .line 133
    if-nez v0, :cond_a

    .line 134
    .line 135
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 136
    .line 137
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$i;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 141
    .line 142
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 150
    .line 151
    if-nez v0, :cond_c

    .line 152
    .line 153
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$d;

    .line 154
    .line 155
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$d;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 159
    .line 160
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_f
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->a:[B

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->b:[B

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->c:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->e:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->f:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    array-length v0, v0

    .line 68
    if-lez v0, :cond_7

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$k;->g:[Lcom/yandex/metrica/impl/ob/mf$l;

    .line 72
    .line 73
    array-length v2, v1

    .line 74
    if-ge v0, v2, :cond_7

    .line 75
    .line 76
    aget-object v1, v1, v0

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    const/4 v2, 0x7

    .line 81
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
