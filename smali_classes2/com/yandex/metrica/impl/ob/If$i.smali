.class public final Lcom/yandex/metrica/impl/ob/If$i;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$i;->a()Lcom/yandex/metrica/impl/ob/If$i;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 48
    .line 49
    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    .line 51
    .line 52
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 53
    .line 54
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

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
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 38
    .line 39
    const/4 v2, 0x6

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 55
    .line 56
    const/16 v2, 0x9

    .line 57
    .line 58
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 73
    .line 74
    const/16 v2, 0xc

    .line 75
    .line 76
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v0, v1

    .line 81
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 82
    .line 83
    const/16 v2, 0xf

    .line 84
    .line 85
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 91
    .line 92
    const/16 v2, 0x10

    .line 93
    .line 94
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v0, v1

    .line 99
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 100
    .line 101
    const/16 v2, 0x12

    .line 102
    .line 103
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v0, v1

    .line 108
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 109
    .line 110
    const/16 v2, 0x13

    .line 111
    .line 112
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v0, v1

    .line 117
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 118
    .line 119
    const/16 v2, 0x15

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
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 127
    .line 128
    const/16 v2, 0x16

    .line 129
    .line 130
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 145
    .line 146
    const/16 v2, 0x18

    .line 147
    .line 148
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v0, v1

    .line 153
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 154
    .line 155
    const/16 v2, 0x19

    .line 156
    .line 157
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    add-int/2addr v0, v1

    .line 162
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 163
    .line 164
    const/16 v2, 0x1a

    .line 165
    .line 166
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v0, v1

    .line 171
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 172
    .line 173
    const/16 v2, 0x1b

    .line 174
    .line 175
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 181
    .line 182
    const/16 v2, 0x1c

    .line 183
    .line 184
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/2addr v0, v1

    .line 189
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 190
    .line 191
    if-eqz v1, :cond_0

    .line 192
    .line 193
    const/16 v2, 0x1d

    .line 194
    .line 195
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    add-int/2addr v0, v1

    .line 200
    :cond_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 201
    .line 202
    if-eqz v1, :cond_1

    .line 203
    .line 204
    const/16 v2, 0x21

    .line 205
    .line 206
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    add-int/2addr v0, v1

    .line 211
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    .line 212
    .line 213
    const/4 v2, -0x1

    .line 214
    if-eq v1, v2, :cond_2

    .line 215
    .line 216
    const/16 v2, 0x22

    .line 217
    .line 218
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    add-int/2addr v0, v1

    .line 223
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 2

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
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :goto_1
    :sswitch_18
    return-object p0

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x18 -> :sswitch_15
        0x20 -> :sswitch_14
        0x30 -> :sswitch_13
        0x40 -> :sswitch_12
        0x48 -> :sswitch_11
        0x58 -> :sswitch_10
        0x60 -> :sswitch_f
        0x78 -> :sswitch_e
        0x80 -> :sswitch_d
        0x90 -> :sswitch_c
        0x98 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xb0 -> :sswitch_9
        0xb8 -> :sswitch_8
        0xc0 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xd0 -> :sswitch_5
        0xd8 -> :sswitch_4
        0xe0 -> :sswitch_3
        0xe8 -> :sswitch_2
        0x108 -> :sswitch_1
        0x110 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 39
    .line 40
    const/16 v1, 0x9

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 46
    .line 47
    const/16 v1, 0xb

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 53
    .line 54
    const/16 v1, 0xc

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 57
    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 67
    .line 68
    const/16 v1, 0x10

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 74
    .line 75
    const/16 v1, 0x12

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 78
    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 81
    .line 82
    const/16 v1, 0x13

    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 88
    .line 89
    const/16 v1, 0x15

    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 95
    .line 96
    const/16 v1, 0x16

    .line 97
    .line 98
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 99
    .line 100
    .line 101
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 102
    .line 103
    const/16 v1, 0x17

    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 106
    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 109
    .line 110
    const/16 v1, 0x18

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 116
    .line 117
    const/16 v1, 0x19

    .line 118
    .line 119
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 120
    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 123
    .line 124
    const/16 v1, 0x1a

    .line 125
    .line 126
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 127
    .line 128
    .line 129
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 130
    .line 131
    const/16 v1, 0x1b

    .line 132
    .line 133
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 137
    .line 138
    const/16 v1, 0x1c

    .line 139
    .line 140
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 141
    .line 142
    .line 143
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 144
    .line 145
    if-eqz v0, :cond_0

    .line 146
    .line 147
    const/16 v1, 0x1d

    .line 148
    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 150
    .line 151
    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 153
    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    const/16 v1, 0x21

    .line 157
    .line 158
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 159
    .line 160
    .line 161
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    .line 162
    .line 163
    const/4 v1, -0x1

    .line 164
    if-eq v0, v1, :cond_2

    .line 165
    .line 166
    const/16 v1, 0x22

    .line 167
    .line 168
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 169
    .line 170
    .line 171
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
