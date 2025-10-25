.class public final Lcom/yandex/metrica/impl/ob/qf$d$a;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/qf$d$a$c;,
        Lcom/yandex/metrica/impl/ob/qf$d$a$a;,
        Lcom/yandex/metrica/impl/ob/qf$d$a$b;
    }
.end annotation


# static fields
.field private static volatile y:[Lcom/yandex/metrica/impl/ob/qf$d$a;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field public e:[B

.field public f:Lcom/yandex/metrica/impl/ob/qf$b;

.field public g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

.field public h:Ljava/lang/String;

.field public i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

.field public j:I

.field public k:I

.field public l:I

.field public m:[B

.field public n:I

.field public o:J

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:J

.field public x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$d$a;->a()Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/qf$d$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$d$a;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v4, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 15
    .line 16
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 20
    .line 21
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 22
    .line 23
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 26
    .line 27
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 28
    .line 29
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 33
    .line 34
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 35
    .line 36
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 41
    .line 42
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 43
    .line 44
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 45
    .line 46
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 47
    .line 48
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 49
    .line 50
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    .line 53
    .line 54
    const-wide/16 v0, 0x1

    .line 55
    .line 56
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 57
    .line 58
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->b()[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 63
    .line 64
    iput v3, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 65
    .line 66
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
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

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
    if-nez v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 58
    .line 59
    const/4 v4, 0x5

    .line 60
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const/4 v4, 0x6

    .line 70
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    const/4 v4, 0x7

    .line 80
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 94
    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v0, v1

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    const/16 v2, 0x9

    .line 107
    .line 108
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    add-int/2addr v0, v1

    .line 113
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    const/16 v2, 0xa

    .line 118
    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    const/16 v2, 0xc

    .line 129
    .line 130
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 136
    .line 137
    const/4 v2, -0x1

    .line 138
    if-eq v1, v2, :cond_8

    .line 139
    .line 140
    const/16 v4, 0xd

    .line 141
    .line 142
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 148
    .line 149
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_9

    .line 154
    .line 155
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 156
    .line 157
    const/16 v3, 0xe

    .line 158
    .line 159
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    add-int/2addr v0, v1

    .line 164
    :cond_9
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 165
    .line 166
    if-eq v1, v2, :cond_a

    .line 167
    .line 168
    const/16 v3, 0xf

    .line 169
    .line 170
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v0, v1

    .line 175
    :cond_a
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 176
    .line 177
    const-wide/16 v5, 0x0

    .line 178
    .line 179
    cmp-long v1, v3, v5

    .line 180
    .line 181
    if-eqz v1, :cond_b

    .line 182
    .line 183
    const/16 v1, 0x10

    .line 184
    .line 185
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v0, v1

    .line 190
    :cond_b
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 191
    .line 192
    cmp-long v1, v3, v5

    .line 193
    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    const/16 v1, 0x11

    .line 197
    .line 198
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    add-int/2addr v0, v1

    .line 203
    :cond_c
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 204
    .line 205
    if-eqz v1, :cond_d

    .line 206
    .line 207
    const/16 v3, 0x12

    .line 208
    .line 209
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    add-int/2addr v0, v1

    .line 214
    :cond_d
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 215
    .line 216
    if-eqz v1, :cond_e

    .line 217
    .line 218
    const/16 v3, 0x13

    .line 219
    .line 220
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/2addr v0, v1

    .line 225
    :cond_e
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 226
    .line 227
    if-eq v1, v2, :cond_f

    .line 228
    .line 229
    const/16 v2, 0x14

    .line 230
    .line 231
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    add-int/2addr v0, v1

    .line 236
    :cond_f
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 237
    .line 238
    if-eqz v1, :cond_10

    .line 239
    .line 240
    const/16 v2, 0x15

    .line 241
    .line 242
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    add-int/2addr v0, v1

    .line 247
    :cond_10
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 248
    .line 249
    if-eqz v1, :cond_11

    .line 250
    .line 251
    const/16 v2, 0x16

    .line 252
    .line 253
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    add-int/2addr v0, v1

    .line 258
    :cond_11
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    .line 259
    .line 260
    if-eqz v1, :cond_12

    .line 261
    .line 262
    const/16 v2, 0x17

    .line 263
    .line 264
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    add-int/2addr v0, v1

    .line 269
    :cond_12
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 270
    .line 271
    const-wide/16 v3, 0x1

    .line 272
    .line 273
    cmp-long v3, v1, v3

    .line 274
    .line 275
    if-eqz v3, :cond_13

    .line 276
    .line 277
    const/16 v3, 0x18

    .line 278
    .line 279
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    add-int/2addr v0, v1

    .line 284
    :cond_13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 285
    .line 286
    if-eqz v1, :cond_15

    .line 287
    .line 288
    array-length v1, v1

    .line 289
    if-lez v1, :cond_15

    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 293
    .line 294
    array-length v3, v2

    .line 295
    if-ge v1, v3, :cond_15

    .line 296
    .line 297
    aget-object v2, v2, v1

    .line 298
    .line 299
    if-eqz v2, :cond_14

    .line 300
    .line 301
    const/16 v3, 0x19

    .line 302
    .line 303
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    add-int/2addr v0, v2

    .line 308
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_15
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
    const/4 v1, 0x3

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :sswitch_0
    const/16 v0, 0xca

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    array-length v3, v1

    .line 34
    :goto_1
    add-int/2addr v0, v3

    .line 35
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 43
    .line 44
    if-ge v3, v1, :cond_3

    .line 45
    .line 46
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    .line 49
    .line 50
    .line 51
    aput-object v1, v4, v3

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    .line 65
    .line 66
    .line 67
    aput-object v0, v4, v3

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    if-eq v0, v4, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    if-eq v0, v4, :cond_5

    .line 108
    .line 109
    if-eq v0, v3, :cond_5

    .line 110
    .line 111
    if-eq v0, v1, :cond_5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eq v0, v2, :cond_6

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    if-eq v0, v4, :cond_6

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    if-eq v0, v4, :cond_7

    .line 139
    .line 140
    if-eq v0, v3, :cond_7

    .line 141
    .line 142
    if-eq v0, v1, :cond_7

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_7
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    if-eq v0, v4, :cond_8

    .line 157
    .line 158
    if-eq v0, v3, :cond_8

    .line 159
    .line 160
    if-eq v0, v1, :cond_8

    .line 161
    .line 162
    const/4 v1, 0x4

    .line 163
    if-eq v0, v1, :cond_8

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_8
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eq v0, v2, :cond_9

    .line 192
    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    if-eq v0, v4, :cond_9

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_9
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eq v0, v2, :cond_a

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    if-eq v0, v4, :cond_a

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_a
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_b

    .line 232
    .line 233
    if-eq v0, v4, :cond_b

    .line 234
    .line 235
    if-eq v0, v3, :cond_b

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_b
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :sswitch_f
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 252
    .line 253
    if-nez v0, :cond_c

    .line 254
    .line 255
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 256
    .line 257
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$a;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 261
    .line 262
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :sswitch_11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 278
    .line 279
    if-nez v0, :cond_d

    .line 280
    .line 281
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 282
    .line 283
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$c;-><init>()V

    .line 284
    .line 285
    .line 286
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 287
    .line 288
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :sswitch_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 296
    .line 297
    if-nez v0, :cond_e

    .line 298
    .line 299
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$b;

    .line 300
    .line 301
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$b;-><init>()V

    .line 302
    .line 303
    .line 304
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 305
    .line 306
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 338
    .line 339
    .line 340
    move-result-wide v0

    .line 341
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :goto_3
    :sswitch_18
    return-object p0

    .line 354
    nop

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x18 -> :sswitch_15
        0x22 -> :sswitch_14
        0x2a -> :sswitch_13
        0x32 -> :sswitch_12
        0x3a -> :sswitch_11
        0x42 -> :sswitch_10
        0x4a -> :sswitch_f
        0x50 -> :sswitch_e
        0x60 -> :sswitch_d
        0x68 -> :sswitch_c
        0x72 -> :sswitch_b
        0x78 -> :sswitch_a
        0x80 -> :sswitch_9
        0x88 -> :sswitch_8
        0x90 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb8 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 36
    .line 37
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 38
    .line 39
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/4 v3, 0x7

    .line 64
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    const/16 v1, 0x9

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    const/16 v1, 0xa

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    const/16 v1, 0xc

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    .line 108
    .line 109
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 110
    .line 111
    const/4 v1, -0x1

    .line 112
    if-eq v0, v1, :cond_8

    .line 113
    .line 114
    const/16 v3, 0xd

    .line 115
    .line 116
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 117
    .line 118
    .line 119
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 120
    .line 121
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_9

    .line 126
    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 128
    .line 129
    const/16 v2, 0xe

    .line 130
    .line 131
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 132
    .line 133
    .line 134
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 135
    .line 136
    if-eq v0, v1, :cond_a

    .line 137
    .line 138
    const/16 v2, 0xf

    .line 139
    .line 140
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 141
    .line 142
    .line 143
    :cond_a
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 144
    .line 145
    const-wide/16 v4, 0x0

    .line 146
    .line 147
    cmp-long v0, v2, v4

    .line 148
    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    const/16 v0, 0x10

    .line 152
    .line 153
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 154
    .line 155
    .line 156
    :cond_b
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 157
    .line 158
    cmp-long v0, v2, v4

    .line 159
    .line 160
    if-eqz v0, :cond_c

    .line 161
    .line 162
    const/16 v0, 0x11

    .line 163
    .line 164
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 165
    .line 166
    .line 167
    :cond_c
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 168
    .line 169
    if-eqz v0, :cond_d

    .line 170
    .line 171
    const/16 v2, 0x12

    .line 172
    .line 173
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 174
    .line 175
    .line 176
    :cond_d
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 177
    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    const/16 v2, 0x13

    .line 181
    .line 182
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 183
    .line 184
    .line 185
    :cond_e
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 186
    .line 187
    if-eq v0, v1, :cond_f

    .line 188
    .line 189
    const/16 v1, 0x14

    .line 190
    .line 191
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 192
    .line 193
    .line 194
    :cond_f
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 195
    .line 196
    if-eqz v0, :cond_10

    .line 197
    .line 198
    const/16 v1, 0x15

    .line 199
    .line 200
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 201
    .line 202
    .line 203
    :cond_10
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 204
    .line 205
    if-eqz v0, :cond_11

    .line 206
    .line 207
    const/16 v1, 0x16

    .line 208
    .line 209
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 210
    .line 211
    .line 212
    :cond_11
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    .line 213
    .line 214
    if-eqz v0, :cond_12

    .line 215
    .line 216
    const/16 v1, 0x17

    .line 217
    .line 218
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 219
    .line 220
    .line 221
    :cond_12
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 222
    .line 223
    const-wide/16 v2, 0x1

    .line 224
    .line 225
    cmp-long v2, v0, v2

    .line 226
    .line 227
    if-eqz v2, :cond_13

    .line 228
    .line 229
    const/16 v2, 0x18

    .line 230
    .line 231
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 232
    .line 233
    .line 234
    :cond_13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 235
    .line 236
    if-eqz v0, :cond_15

    .line 237
    .line 238
    array-length v0, v0

    .line 239
    if-lez v0, :cond_15

    .line 240
    .line 241
    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 243
    .line 244
    array-length v2, v1

    .line 245
    if-ge v0, v2, :cond_15

    .line 246
    .line 247
    aget-object v1, v1, v0

    .line 248
    .line 249
    if-eqz v1, :cond_14

    .line 250
    .line 251
    const/16 v2, 0x19

    .line 252
    .line 253
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 254
    .line 255
    .line 256
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_15
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 260
    .line 261
    .line 262
    return-void
.end method
