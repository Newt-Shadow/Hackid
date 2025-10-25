.class public final Lcom/yandex/metrica/impl/ob/If$v;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:[Lcom/yandex/metrica/impl/ob/If$y;

.field public n:Z

.field public o:Z

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$v;->a()Lcom/yandex/metrica/impl/ob/If$v;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 9
    .line 10
    const/16 v0, 0x2710

    .line 11
    .line 12
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 13
    .line 14
    const/16 v0, 0x3e8

    .line 15
    .line 16
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 17
    .line 18
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 19
    .line 20
    const v0, 0x30d40

    .line 21
    .line 22
    .line 23
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/yandex/metrica/impl/ob/If$y;->b()[Lcom/yandex/metrica/impl/ob/If$y;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 43
    .line 44
    const/16 v0, 0xfa0

    .line 45
    .line 46
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 50
    .line 51
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
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 36
    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 46
    .line 47
    const/16 v2, 0x2710

    .line 48
    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 58
    .line 59
    const/16 v2, 0x3e8

    .line 60
    .line 61
    if-eq v1, v2, :cond_5

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v0, v1

    .line 69
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 70
    .line 71
    if-eq v1, v2, :cond_6

    .line 72
    .line 73
    const/4 v2, 0x7

    .line 74
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 80
    .line 81
    const v2, 0x30d40

    .line 82
    .line 83
    .line 84
    if-eq v1, v2, :cond_7

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_7
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 94
    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_8
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 105
    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    const/16 v2, 0xa

    .line 109
    .line 110
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_9
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 116
    .line 117
    if-eqz v1, :cond_a

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    :cond_a
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    const/16 v2, 0xc

    .line 131
    .line 132
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    :cond_b
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 138
    .line 139
    if-eqz v1, :cond_d

    .line 140
    .line 141
    array-length v1, v1

    .line 142
    if-lez v1, :cond_d

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 146
    .line 147
    array-length v3, v2

    .line 148
    if-ge v1, v3, :cond_d

    .line 149
    .line 150
    aget-object v2, v2, v1

    .line 151
    .line 152
    if-eqz v2, :cond_c

    .line 153
    .line 154
    const/16 v3, 0xd

    .line 155
    .line 156
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    add-int/2addr v0, v2

    .line 161
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_d
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 165
    .line 166
    if-eqz v1, :cond_e

    .line 167
    .line 168
    const/16 v2, 0xe

    .line 169
    .line 170
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    :cond_e
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 176
    .line 177
    if-eqz v1, :cond_f

    .line 178
    .line 179
    const/16 v2, 0xf

    .line 180
    .line 181
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int/2addr v0, v1

    .line 186
    :cond_f
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 187
    .line 188
    const/16 v2, 0xfa0

    .line 189
    .line 190
    if-eq v1, v2, :cond_10

    .line 191
    .line 192
    const/16 v2, 0x10

    .line 193
    .line 194
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    add-int/2addr v0, v1

    .line 199
    :cond_10
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
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_3
    const/16 v0, 0x6a

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    move v3, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    array-length v3, v1

    .line 51
    :goto_1
    add-int/2addr v0, v3

    .line 52
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 60
    .line 61
    if-ge v3, v1, :cond_3

    .line 62
    .line 63
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$y;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 66
    .line 67
    .line 68
    aput-object v1, v4, v3

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$y;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 82
    .line 83
    .line 84
    aput-object v0, v4, v3

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 87
    .line 88
    .line 89
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :goto_3
    :sswitch_10
    return-object p0

    .line 184
    nop

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x60 -> :sswitch_4
        0x6a -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 34
    .line 35
    const/16 v1, 0x2710

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 44
    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    if-eq v0, v1, :cond_5

    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 51
    .line 52
    .line 53
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    .line 60
    .line 61
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 62
    .line 63
    const v1, 0x30d40

    .line 64
    .line 65
    .line 66
    if-eq v0, v1, :cond_7

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 71
    .line 72
    .line 73
    :cond_7
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    const/16 v1, 0x9

    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 80
    .line 81
    .line 82
    :cond_8
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    const/16 v1, 0xa

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 89
    .line 90
    .line 91
    :cond_9
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    const/16 v1, 0xb

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 98
    .line 99
    .line 100
    :cond_a
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    const/16 v1, 0xc

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 107
    .line 108
    .line 109
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 110
    .line 111
    if-eqz v0, :cond_d

    .line 112
    .line 113
    array-length v0, v0

    .line 114
    if-lez v0, :cond_d

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 118
    .line 119
    array-length v2, v1

    .line 120
    if-ge v0, v2, :cond_d

    .line 121
    .line 122
    aget-object v1, v1, v0

    .line 123
    .line 124
    if-eqz v1, :cond_c

    .line 125
    .line 126
    const/16 v2, 0xd

    .line 127
    .line 128
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 129
    .line 130
    .line 131
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_d
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 135
    .line 136
    if-eqz v0, :cond_e

    .line 137
    .line 138
    const/16 v1, 0xe

    .line 139
    .line 140
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 141
    .line 142
    .line 143
    :cond_e
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 144
    .line 145
    if-eqz v0, :cond_f

    .line 146
    .line 147
    const/16 v1, 0xf

    .line 148
    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 150
    .line 151
    .line 152
    :cond_f
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 153
    .line 154
    const/16 v1, 0xfa0

    .line 155
    .line 156
    if-eq v0, v1, :cond_10

    .line 157
    .line 158
    const/16 v1, 0x10

    .line 159
    .line 160
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 161
    .line 162
    .line 163
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
