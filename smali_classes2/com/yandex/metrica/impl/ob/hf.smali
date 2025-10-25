.class public final Lcom/yandex/metrica/impl/ob/hf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/hf$a;
    }
.end annotation


# static fields
.field private static l:[B

.field private static volatile m:Z


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/lf;

.field public b:Lcom/yandex/metrica/impl/ob/df;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[Lcom/yandex/metrica/impl/ob/jf;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lcom/yandex/metrica/impl/ob/hf$a;

.field public i:[B

.field public j:[B

.field public k:[Lcom/yandex/metrica/impl/ob/ff;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/yandex/metrica/impl/ob/hf;->m:Z

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
    sget-boolean v1, Lcom/yandex/metrica/impl/ob/hf;->m:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "JVM"

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/protobuf/nano/ym/InternalNano;->bytesDefaultValue(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/yandex/metrica/impl/ob/hf;->l:[B

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    sput-boolean v1, Lcom/yandex/metrica/impl/ob/hf;->m:Z

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
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/hf;->a()Lcom/yandex/metrica/impl/ob/hf;

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/hf;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 12
    .line 13
    invoke-static {}, Lcom/yandex/metrica/impl/ob/jf;->b()[Lcom/yandex/metrica/impl/ob/jf;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/yandex/metrica/impl/ob/hf;->g:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 25
    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/hf;->l:[B

    .line 27
    .line 28
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [B

    .line 33
    .line 34
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 35
    .line 36
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 39
    .line 40
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ff;->b()[Lcom/yandex/metrica/impl/ob/ff;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 45
    .line 46
    iput v2, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 47
    .line 48
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-eq v1, v3, :cond_3

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    array-length v1, v1

    .line 60
    if-lez v1, :cond_5

    .line 61
    .line 62
    move v1, v3

    .line 63
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 64
    .line 65
    array-length v5, v4

    .line 66
    if-ge v1, v5, :cond_5

    .line 67
    .line 68
    aget-object v4, v4, v1

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    const/4 v5, 0x5

    .line 73
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/2addr v0, v4

    .line 78
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_6

    .line 88
    .line 89
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v2, 0x6

    .line 92
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hf;->g:I

    .line 98
    .line 99
    if-eqz v1, :cond_7

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
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    const/16 v2, 0x8

    .line 112
    .line 113
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    add-int/2addr v0, v1

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 119
    .line 120
    sget-object v2, Lcom/yandex/metrica/impl/ob/hf;->l:[B

    .line 121
    .line 122
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 129
    .line 130
    const/16 v2, 0x9

    .line 131
    .line 132
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 138
    .line 139
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 140
    .line 141
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 148
    .line 149
    const/16 v2, 0xa

    .line 150
    .line 151
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/2addr v0, v1

    .line 156
    :cond_a
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 157
    .line 158
    if-eqz v1, :cond_c

    .line 159
    .line 160
    array-length v1, v1

    .line 161
    if-lez v1, :cond_c

    .line 162
    .line 163
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 164
    .line 165
    array-length v2, v1

    .line 166
    if-ge v3, v2, :cond_c

    .line 167
    .line 168
    aget-object v1, v1, v3

    .line 169
    .line 170
    if-eqz v1, :cond_b

    .line 171
    .line 172
    const/16 v2, 0xb

    .line 173
    .line 174
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    add-int/2addr v0, v1

    .line 179
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_c
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
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

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
    goto/16 :goto_5

    .line 17
    .line 18
    :sswitch_0
    const/16 v0, 0x5a

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    array-length v3, v1

    .line 31
    :goto_1
    add-int/2addr v0, v3

    .line 32
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/ff;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 40
    .line 41
    if-ge v3, v1, :cond_3

    .line 42
    .line 43
    new-instance v1, Lcom/yandex/metrica/impl/ob/ff;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ff;-><init>()V

    .line 46
    .line 47
    .line 48
    aput-object v1, v4, v3

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/ff;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ff;-><init>()V

    .line 62
    .line 63
    .line 64
    aput-object v0, v4, v3

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 67
    .line 68
    .line 69
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 87
    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/hf$a;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hf$a;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    if-eq v0, v1, :cond_5

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/hf;->g:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_6
    const/16 v0, 0x2a

    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 129
    .line 130
    if-nez v1, :cond_6

    .line 131
    .line 132
    move v3, v2

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    array-length v3, v1

    .line 135
    :goto_3
    add-int/2addr v0, v3

    .line 136
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/jf;

    .line 137
    .line 138
    if-eqz v3, :cond_7

    .line 139
    .line 140
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 144
    .line 145
    if-ge v3, v1, :cond_8

    .line 146
    .line 147
    new-instance v1, Lcom/yandex/metrica/impl/ob/jf;

    .line 148
    .line 149
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 150
    .line 151
    .line 152
    aput-object v1, v4, v3

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 158
    .line 159
    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    new-instance v0, Lcom/yandex/metrica/impl/ob/jf;

    .line 164
    .line 165
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 166
    .line 167
    .line 168
    aput-object v0, v4, v3

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 171
    .line 172
    .line 173
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v2, -0x1

    .line 182
    if-eq v0, v2, :cond_9

    .line 183
    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    if-eq v0, v1, :cond_9

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_9
    iput v0, p0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :sswitch_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 203
    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    .line 207
    .line 208
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/df;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 212
    .line 213
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :sswitch_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 221
    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    new-instance v0, Lcom/yandex/metrica/impl/ob/lf;

    .line 225
    .line 226
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lf;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 230
    .line 231
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :goto_5
    :sswitch_b
    return-object p0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-lez v0, :cond_5

    .line 49
    .line 50
    move v0, v2

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 52
    .line 53
    array-length v4, v3

    .line 54
    if-ge v0, v4, :cond_5

    .line 55
    .line 56
    aget-object v3, v3, v0

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    const/4 v4, 0x5

    .line 61
    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v1, 0x6

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/hf;->g:I

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    const/4 v1, 0x7

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    .line 88
    .line 89
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->h:Lcom/yandex/metrica/impl/ob/hf$a;

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 99
    .line 100
    sget-object v1, Lcom/yandex/metrica/impl/ob/hf;->l:[B

    .line 101
    .line 102
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_9

    .line 107
    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 109
    .line 110
    const/16 v1, 0x9

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 113
    .line 114
    .line 115
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 116
    .line 117
    sget-object v1, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 118
    .line 119
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 126
    .line 127
    const/16 v1, 0xa

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 130
    .line 131
    .line 132
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 133
    .line 134
    if-eqz v0, :cond_c

    .line 135
    .line 136
    array-length v0, v0

    .line 137
    if-lez v0, :cond_c

    .line 138
    .line 139
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    .line 140
    .line 141
    array-length v1, v0

    .line 142
    if-ge v2, v1, :cond_c

    .line 143
    .line 144
    aget-object v0, v0, v2

    .line 145
    .line 146
    if-eqz v0, :cond_b

    .line 147
    .line 148
    const/16 v1, 0xb

    .line 149
    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 151
    .line 152
    .line 153
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
