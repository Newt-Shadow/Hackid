.class public final Lcom/yandex/metrica/impl/ob/qf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/qf$d;,
        Lcom/yandex/metrica/impl/ob/qf$c;,
        Lcom/yandex/metrica/impl/ob/qf$a;,
        Lcom/yandex/metrica/impl/ob/qf$e;,
        Lcom/yandex/metrica/impl/ob/qf$b;,
        Lcom/yandex/metrica/impl/ob/qf$f;
    }
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/qf$d;

.field public b:Lcom/yandex/metrica/impl/ob/qf$c;

.field public c:[Lcom/yandex/metrica/impl/ob/qf$a;

.field public d:[Lcom/yandex/metrica/impl/ob/qf$e;

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf;->a()Lcom/yandex/metrica/impl/ob/qf;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$d;->b()[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 9
    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$a;->b()[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 15
    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$e;->b()[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 21
    .line 22
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 28
    .line 29
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    move v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v0, v3

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    array-length v1, v1

    .line 47
    if-lez v1, :cond_4

    .line 48
    .line 49
    move v1, v2

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    if-ge v1, v4, :cond_4

    .line 54
    .line 55
    aget-object v3, v3, v1

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const/4 v4, 0x7

    .line 60
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/2addr v0, v3

    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    array-length v1, v1

    .line 73
    if-lez v1, :cond_6

    .line 74
    .line 75
    move v1, v2

    .line 76
    :goto_2
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 77
    .line 78
    array-length v4, v3

    .line 79
    if-ge v1, v4, :cond_6

    .line 80
    .line 81
    aget-object v3, v3, v1

    .line 82
    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    const/16 v4, 0xa

    .line 86
    .line 87
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    add-int/2addr v0, v3

    .line 92
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_9

    .line 98
    .line 99
    array-length v1, v1

    .line 100
    if-lez v1, :cond_9

    .line 101
    .line 102
    move v1, v2

    .line 103
    move v3, v1

    .line 104
    :goto_3
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 105
    .line 106
    array-length v5, v4

    .line 107
    if-ge v2, v5, :cond_8

    .line 108
    .line 109
    aget-object v4, v4, v2

    .line 110
    .line 111
    if-eqz v4, :cond_7

    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    add-int/2addr v1, v4

    .line 120
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    add-int/2addr v0, v3

    .line 127
    :cond_9
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
    if-eqz v0, :cond_13

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_f

    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    if-eq v0, v1, :cond_d

    .line 15
    .line 16
    const/16 v1, 0x3a

    .line 17
    .line 18
    if-eq v0, v1, :cond_9

    .line 19
    .line 20
    const/16 v1, 0x52

    .line 21
    .line 22
    if-eq v0, v1, :cond_5

    .line 23
    .line 24
    const/16 v1, 0x5a

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
    goto/16 :goto_9

    .line 35
    .line 36
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    array-length v3, v1

    .line 47
    :goto_1
    add-int/2addr v0, v3

    .line 48
    new-array v4, v0, [Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 56
    .line 57
    if-ge v3, v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v4, v3

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    aput-object v0, v4, v3

    .line 76
    .line 77
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    move v3, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    array-length v3, v1

    .line 91
    :goto_3
    add-int/2addr v0, v3

    .line 92
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$e;

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 100
    .line 101
    if-ge v3, v1, :cond_8

    .line 102
    .line 103
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$e;

    .line 104
    .line 105
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$e;-><init>()V

    .line 106
    .line 107
    .line 108
    aput-object v1, v4, v3

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 114
    .line 115
    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$e;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$e;-><init>()V

    .line 122
    .line 123
    .line 124
    aput-object v0, v4, v3

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 127
    .line 128
    .line 129
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 138
    .line 139
    if-nez v1, :cond_a

    .line 140
    .line 141
    move v3, v2

    .line 142
    goto :goto_5

    .line 143
    :cond_a
    array-length v3, v1

    .line 144
    :goto_5
    add-int/2addr v0, v3

    .line 145
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$a;

    .line 146
    .line 147
    if-eqz v3, :cond_b

    .line 148
    .line 149
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    :cond_b
    :goto_6
    add-int/lit8 v1, v0, -0x1

    .line 153
    .line 154
    if-ge v3, v1, :cond_c

    .line 155
    .line 156
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$a;

    .line 157
    .line 158
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$a;-><init>()V

    .line 159
    .line 160
    .line 161
    aput-object v1, v4, v3

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 167
    .line 168
    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_c
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$a;

    .line 173
    .line 174
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$a;-><init>()V

    .line 175
    .line 176
    .line 177
    aput-object v0, v4, v3

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 180
    .line 181
    .line 182
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 187
    .line 188
    if-nez v0, :cond_e

    .line 189
    .line 190
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$c;

    .line 191
    .line 192
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$c;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 196
    .line 197
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_f
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 209
    .line 210
    if-nez v1, :cond_10

    .line 211
    .line 212
    move v3, v2

    .line 213
    goto :goto_7

    .line 214
    :cond_10
    array-length v3, v1

    .line 215
    :goto_7
    add-int/2addr v0, v3

    .line 216
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$d;

    .line 217
    .line 218
    if-eqz v3, :cond_11

    .line 219
    .line 220
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    .line 222
    .line 223
    :cond_11
    :goto_8
    add-int/lit8 v1, v0, -0x1

    .line 224
    .line 225
    if-ge v3, v1, :cond_12

    .line 226
    .line 227
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d;

    .line 228
    .line 229
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d;-><init>()V

    .line 230
    .line 231
    .line 232
    aput-object v1, v4, v3

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 238
    .line 239
    .line 240
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_12
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d;

    .line 244
    .line 245
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d;-><init>()V

    .line 246
    .line 247
    .line 248
    aput-object v0, v4, v3

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 251
    .line 252
    .line 253
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_13
    :goto_9
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v0, v3, :cond_1

    .line 14
    .line 15
    aget-object v2, v2, v0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    if-lez v0, :cond_4

    .line 40
    .line 41
    move v0, v1

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 43
    .line 44
    array-length v3, v2

    .line 45
    if-ge v0, v3, :cond_4

    .line 46
    .line 47
    aget-object v2, v2, v0

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    const/4 v3, 0x7

    .line 52
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    array-length v0, v0

    .line 63
    if-lez v0, :cond_6

    .line 64
    .line 65
    move v0, v1

    .line 66
    :goto_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 67
    .line 68
    array-length v3, v2

    .line 69
    if-ge v0, v3, :cond_6

    .line 70
    .line 71
    aget-object v2, v2, v0

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    const/16 v3, 0xa

    .line 76
    .line 77
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    array-length v0, v0

    .line 88
    if-lez v0, :cond_8

    .line 89
    .line 90
    :goto_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 91
    .line 92
    array-length v2, v0

    .line 93
    if-ge v1, v2, :cond_8

    .line 94
    .line 95
    aget-object v0, v0, v1

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    const/16 v2, 0xb

    .line 100
    .line 101
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
