.class public final Lcom/yandex/metrica/impl/ob/pf$a;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile h:[Lcom/yandex/metrica/impl/ob/pf$a;


# instance fields
.field public a:J

.field public b:J

.field public c:[Lcom/yandex/metrica/impl/ob/of;

.field public d:[Lcom/yandex/metrica/impl/ob/rf;

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pf$a;->a()Lcom/yandex/metrica/impl/ob/pf$a;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/pf$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/pf$a;->h:[Lcom/yandex/metrica/impl/ob/pf$a;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/pf$a;->h:[Lcom/yandex/metrica/impl/ob/pf$a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/pf$a;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/pf$a;->h:[Lcom/yandex/metrica/impl/ob/pf$a;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/pf$a;->h:[Lcom/yandex/metrica/impl/ob/pf$a;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/pf$a;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/of;->b()[Lcom/yandex/metrica/impl/ob/of;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 12
    .line 13
    invoke-static {}, Lcom/yandex/metrica/impl/ob/rf;->b()[Lcom/yandex/metrica/impl/ob/rf;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 23
    .line 24
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

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
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

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
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

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
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    if-ge v1, v4, :cond_1

    .line 34
    .line 35
    aget-object v3, v3, v1

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v0, v3

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    array-length v1, v1

    .line 53
    if-lez v1, :cond_3

    .line 54
    .line 55
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 56
    .line 57
    array-length v3, v1

    .line 58
    if-ge v2, v3, :cond_3

    .line 59
    .line 60
    aget-object v1, v1, v2

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 74
    .line 75
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    cmp-long v3, v1, v3

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    const/4 v3, 0x5

    .line 82
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v0, v1

    .line 87
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    const/4 v2, 0x6

    .line 92
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    const/4 v2, 0x7

    .line 102
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    add-int/2addr v0, v1

    .line 107
    :cond_6
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
    if-eqz v0, :cond_10

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_f

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_e

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq v0, v1, :cond_a

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    if-eq v0, v1, :cond_6

    .line 23
    .line 24
    const/16 v1, 0x28

    .line 25
    .line 26
    if-eq v0, v1, :cond_5

    .line 27
    .line 28
    const/16 v1, 0x30

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    const/16 v1, 0x38

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    if-eq v0, v4, :cond_2

    .line 54
    .line 55
    if-eq v0, v3, :cond_2

    .line 56
    .line 57
    if-eq v0, v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    if-eq v0, v4, :cond_4

    .line 70
    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    if-eq v0, v2, :cond_4

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    if-eq v0, v1, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 94
    .line 95
    if-nez v1, :cond_7

    .line 96
    .line 97
    move v3, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_7
    array-length v3, v1

    .line 100
    :goto_1
    add-int/2addr v0, v3

    .line 101
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/rf;

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 109
    .line 110
    if-ge v3, v1, :cond_9

    .line 111
    .line 112
    new-instance v1, Lcom/yandex/metrica/impl/ob/rf;

    .line 113
    .line 114
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 115
    .line 116
    .line 117
    aput-object v1, v4, v3

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 123
    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    new-instance v0, Lcom/yandex/metrica/impl/ob/rf;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 131
    .line 132
    .line 133
    aput-object v0, v4, v3

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 136
    .line 137
    .line 138
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_a
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 147
    .line 148
    if-nez v1, :cond_b

    .line 149
    .line 150
    move v3, v2

    .line 151
    goto :goto_3

    .line 152
    :cond_b
    array-length v3, v1

    .line 153
    :goto_3
    add-int/2addr v0, v3

    .line 154
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/of;

    .line 155
    .line 156
    if-eqz v3, :cond_c

    .line 157
    .line 158
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .line 160
    .line 161
    :cond_c
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 162
    .line 163
    if-ge v3, v1, :cond_d

    .line 164
    .line 165
    new-instance v1, Lcom/yandex/metrica/impl/ob/of;

    .line 166
    .line 167
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    .line 168
    .line 169
    .line 170
    aput-object v1, v4, v3

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 176
    .line 177
    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_d
    new-instance v0, Lcom/yandex/metrica/impl/ob/of;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    .line 184
    .line 185
    .line 186
    aput-object v0, v4, v3

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 189
    .line 190
    .line 191
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_10
    :goto_5
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-ge v0, v3, :cond_1

    .line 26
    .line 27
    aget-object v2, v2, v0

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    array-length v0, v0

    .line 43
    if-lez v0, :cond_3

    .line 44
    .line 45
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    .line 46
    .line 47
    array-length v2, v0

    .line 48
    if-ge v1, v2, :cond_3

    .line 49
    .line 50
    aget-object v0, v0, v1

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 62
    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    cmp-long v2, v0, v2

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    const/4 v2, 0x5

    .line 70
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x6

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
