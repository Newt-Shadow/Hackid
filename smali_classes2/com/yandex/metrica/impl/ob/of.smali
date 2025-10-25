.class public final Lcom/yandex/metrica/impl/ob/of;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile q:[Lcom/yandex/metrica/impl/ob/of;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/of;->a()Lcom/yandex/metrica/impl/ob/of;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/of;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/of;->q:[Lcom/yandex/metrica/impl/ob/of;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/of;->q:[Lcom/yandex/metrica/impl/ob/of;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/of;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/of;->q:[Lcom/yandex/metrica/impl/ob/of;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/of;->q:[Lcom/yandex/metrica/impl/ob/of;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/of;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->a:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/yandex/metrica/impl/ob/of;->b:I

    .line 6
    .line 7
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->c:I

    .line 8
    .line 9
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->d:I

    .line 10
    .line 11
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->e:I

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    .line 18
    .line 19
    iput v1, p0, Lcom/yandex/metrica/impl/ob/of;->h:I

    .line 20
    .line 21
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->i:I

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/of;->j:J

    .line 26
    .line 27
    const v1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    iput v1, p0, Lcom/yandex/metrica/impl/ob/of;->k:I

    .line 31
    .line 32
    iput v1, p0, Lcom/yandex/metrica/impl/ob/of;->l:I

    .line 33
    .line 34
    iput v1, p0, Lcom/yandex/metrica/impl/ob/of;->m:I

    .line 35
    .line 36
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->n:I

    .line 37
    .line 38
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->o:I

    .line 39
    .line 40
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->p:I

    .line 41
    .line 42
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 43
    .line 44
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
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->a:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->b:I

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->c:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->d:I

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->e:I

    .line 47
    .line 48
    if-eq v1, v2, :cond_4

    .line 49
    .line 50
    const/4 v3, 0x5

    .line 51
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 57
    .line 58
    const-string v3, ""

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_5

    .line 65
    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v3, 0x6

    .line 69
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    const/4 v3, 0x7

    .line 79
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v0, v1

    .line 84
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->h:I

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    const/16 v3, 0x8

    .line 89
    .line 90
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->i:I

    .line 96
    .line 97
    if-eq v1, v2, :cond_8

    .line 98
    .line 99
    const/16 v3, 0x9

    .line 100
    .line 101
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    :cond_8
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/of;->j:J

    .line 107
    .line 108
    const-wide/16 v5, 0x0

    .line 109
    .line 110
    cmp-long v1, v3, v5

    .line 111
    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    :cond_9
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->k:I

    .line 122
    .line 123
    const v3, 0x7fffffff

    .line 124
    .line 125
    .line 126
    if-eq v1, v3, :cond_a

    .line 127
    .line 128
    const/16 v4, 0xb

    .line 129
    .line 130
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    :cond_a
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->l:I

    .line 136
    .line 137
    if-eq v1, v3, :cond_b

    .line 138
    .line 139
    const/16 v4, 0xc

    .line 140
    .line 141
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    :cond_b
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->m:I

    .line 147
    .line 148
    if-eq v1, v3, :cond_c

    .line 149
    .line 150
    const/16 v3, 0xd

    .line 151
    .line 152
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    :cond_c
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->n:I

    .line 158
    .line 159
    if-eq v1, v2, :cond_d

    .line 160
    .line 161
    const/16 v3, 0xe

    .line 162
    .line 163
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/2addr v0, v1

    .line 168
    :cond_d
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->o:I

    .line 169
    .line 170
    if-eq v1, v2, :cond_e

    .line 171
    .line 172
    const/16 v3, 0xf

    .line 173
    .line 174
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    add-int/2addr v0, v1

    .line 179
    :cond_e
    iget v1, p0, Lcom/yandex/metrica/impl/ob/of;->p:I

    .line 180
    .line 181
    if-eq v1, v2, :cond_f

    .line 182
    .line 183
    const/16 v2, 0x10

    .line 184
    .line 185
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v0, v1

    .line 190
    :cond_f
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->p:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->o:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->n:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt32()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->m:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt32()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->l:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt32()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->k:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/of;->j:J

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->i:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    if-eq v0, v1, :cond_1

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    if-eq v0, v1, :cond_1

    .line 83
    .line 84
    const/4 v1, 0x3

    .line 85
    if-eq v0, v1, :cond_1

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->h:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->e:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->d:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->c:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt32()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->b:I

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput v0, p0, Lcom/yandex/metrica/impl/ob/of;->a:I

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :goto_1
    :sswitch_10
    return-object p0

    .line 146
    nop

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x60 -> :sswitch_4
        0x68 -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->b:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->c:I

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->d:I

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->e:I

    .line 35
    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 40
    .line 41
    .line 42
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v2, 0x6

    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const/4 v2, 0x7

    .line 63
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 64
    .line 65
    .line 66
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->h:I

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 73
    .line 74
    .line 75
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->i:I

    .line 76
    .line 77
    if-eq v0, v1, :cond_8

    .line 78
    .line 79
    const/16 v2, 0x9

    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 82
    .line 83
    .line 84
    :cond_8
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/of;->j:J

    .line 85
    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    cmp-long v0, v2, v4

    .line 89
    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    const/16 v0, 0xa

    .line 93
    .line 94
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 95
    .line 96
    .line 97
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->k:I

    .line 98
    .line 99
    const v2, 0x7fffffff

    .line 100
    .line 101
    .line 102
    if-eq v0, v2, :cond_a

    .line 103
    .line 104
    const/16 v3, 0xb

    .line 105
    .line 106
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 107
    .line 108
    .line 109
    :cond_a
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->l:I

    .line 110
    .line 111
    if-eq v0, v2, :cond_b

    .line 112
    .line 113
    const/16 v3, 0xc

    .line 114
    .line 115
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 116
    .line 117
    .line 118
    :cond_b
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->m:I

    .line 119
    .line 120
    if-eq v0, v2, :cond_c

    .line 121
    .line 122
    const/16 v2, 0xd

    .line 123
    .line 124
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 125
    .line 126
    .line 127
    :cond_c
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->n:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_d

    .line 130
    .line 131
    const/16 v2, 0xe

    .line 132
    .line 133
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 134
    .line 135
    .line 136
    :cond_d
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->o:I

    .line 137
    .line 138
    if-eq v0, v1, :cond_e

    .line 139
    .line 140
    const/16 v2, 0xf

    .line 141
    .line 142
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 143
    .line 144
    .line 145
    :cond_e
    iget v0, p0, Lcom/yandex/metrica/impl/ob/of;->p:I

    .line 146
    .line 147
    if-eq v0, v1, :cond_f

    .line 148
    .line 149
    const/16 v1, 0x10

    .line 150
    .line 151
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 152
    .line 153
    .line 154
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
