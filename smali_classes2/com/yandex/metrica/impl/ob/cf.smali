.class public final Lcom/yandex/metrica/impl/ob/cf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/cf$a;
    }
.end annotation


# static fields
.field private static l:[B

.field private static volatile m:Z


# instance fields
.field public a:[B

.field public b:Lcom/yandex/metrica/impl/ob/cf$a;

.field public c:[B

.field public d:I

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/yandex/metrica/impl/ob/cf;->m:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-boolean v1, Lcom/yandex/metrica/impl/ob/cf;->m:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "manual"

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/protobuf/nano/ym/InternalNano;->bytesDefaultValue(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/yandex/metrica/impl/ob/cf;->l:[B

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    sput-boolean v1, Lcom/yandex/metrica/impl/ob/cf;->m:Z

    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cf;->a()Lcom/yandex/metrica/impl/ob/cf;

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/cf;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/cf;->l:[B

    .line 2
    .line 3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 13
    .line 14
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 22
    .line 23
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 24
    .line 25
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 26
    .line 27
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 28
    .line 29
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 30
    .line 31
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 32
    .line 33
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 37
    .line 38
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 6
    .line 7
    sget-object v2, Lcom/yandex/metrica/impl/ob/cf;->l:[B

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 34
    .line 35
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    const/4 v3, 0x4

    .line 56
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 62
    .line 63
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 70
    .line 71
    const/4 v3, 0x5

    .line 72
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 78
    .line 79
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 86
    .line 87
    const/4 v3, 0x6

    .line 88
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 94
    .line 95
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_6

    .line 100
    .line 101
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    add-int/2addr v0, v1

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 110
    .line 111
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 118
    .line 119
    const/16 v3, 0x8

    .line 120
    .line 121
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 127
    .line 128
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 135
    .line 136
    const/16 v3, 0x9

    .line 137
    .line 138
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/2addr v0, v1

    .line 143
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 144
    .line 145
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_9

    .line 150
    .line 151
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 152
    .line 153
    const/16 v3, 0xa

    .line 154
    .line 155
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 161
    .line 162
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_a

    .line 167
    .line 168
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 169
    .line 170
    const/16 v2, 0xb

    .line 171
    .line 172
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/2addr v0, v1

    .line 177
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 1

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
    goto :goto_1

    .line 15
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_0
    iput v0, p0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :sswitch_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    new-instance v0, Lcom/yandex/metrica/impl/ob/cf$a;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cf$a;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_1
    :sswitch_b
    return-object p0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/cf;->l:[B

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:[B

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 26
    .line 27
    sget-object v1, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:[B

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->e:[B

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:[B

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->g:[B

    .line 86
    .line 87
    const/4 v2, 0x7

    .line 88
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 92
    .line 93
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->h:[B

    .line 100
    .line 101
    const/16 v2, 0x8

    .line 102
    .line 103
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 107
    .line 108
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_8

    .line 113
    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->i:[B

    .line 115
    .line 116
    const/16 v2, 0x9

    .line 117
    .line 118
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->j:[B

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 134
    .line 135
    .line 136
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 137
    .line 138
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_a

    .line 143
    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 145
    .line 146
    const/16 v1, 0xb

    .line 147
    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 149
    .line 150
    .line 151
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
