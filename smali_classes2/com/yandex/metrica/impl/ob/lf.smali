.class public final Lcom/yandex/metrica/impl/ob/lf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/yandex/metrica/impl/ob/lf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Lcom/yandex/metrica/impl/ob/jf;

.field public d:Lcom/yandex/metrica/impl/ob/lf;

.field public e:[Lcom/yandex/metrica/impl/ob/lf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lf;->a()Lcom/yandex/metrica/impl/ob/lf;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/lf;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/jf;->b()[Lcom/yandex/metrica/impl/ob/jf;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 17
    .line 18
    sget-object v0, Lcom/yandex/metrica/impl/ob/lf;->f:[Lcom/yandex/metrica/impl/ob/lf;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/lf;->f:[Lcom/yandex/metrica/impl/ob/lf;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/lf;

    .line 31
    .line 32
    sput-object v1, Lcom/yandex/metrica/impl/ob/lf;->f:[Lcom/yandex/metrica/impl/ob/lf;

    .line 33
    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/lf;->f:[Lcom/yandex/metrica/impl/ob/lf;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 45
    .line 46
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    array-length v1, v1

    .line 37
    if-lez v1, :cond_2

    .line 38
    .line 39
    move v1, v2

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    if-ge v1, v4, :cond_2

    .line 44
    .line 45
    aget-object v3, v3, v1

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-int/2addr v0, v3

    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x4

    .line 63
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    array-length v1, v1

    .line 73
    if-lez v1, :cond_5

    .line 74
    .line 75
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 76
    .line 77
    array-length v3, v1

    .line 78
    if-ge v2, v3, :cond_5

    .line 79
    .line 80
    aget-object v1, v1, v2

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const/4 v3, 0x5

    .line 85
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
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
    if-eqz v0, :cond_d

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_c

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_b

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq v0, v1, :cond_7

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    if-eq v0, v1, :cond_5

    .line 23
    .line 24
    const/16 v1, 0x2a

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
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

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
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/lf;

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
    new-instance v1, Lcom/yandex/metrica/impl/ob/lf;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/lf;-><init>()V

    .line 62
    .line 63
    .line 64
    aput-object v1, v4, v3

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/lf;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lf;-><init>()V

    .line 78
    .line 79
    .line 80
    aput-object v0, v4, v3

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 83
    .line 84
    .line 85
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 89
    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/lf;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lf;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 98
    .line 99
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 110
    .line 111
    if-nez v1, :cond_8

    .line 112
    .line 113
    move v3, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_8
    array-length v3, v1

    .line 116
    :goto_3
    add-int/2addr v0, v3

    .line 117
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/jf;

    .line 118
    .line 119
    if-eqz v3, :cond_9

    .line 120
    .line 121
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 125
    .line 126
    if-ge v3, v1, :cond_a

    .line 127
    .line 128
    new-instance v1, Lcom/yandex/metrica/impl/ob/jf;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 131
    .line 132
    .line 133
    aput-object v1, v4, v3

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_a
    new-instance v0, Lcom/yandex/metrica/impl/ob/jf;

    .line 145
    .line 146
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 147
    .line 148
    .line 149
    aput-object v0, v4, v3

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 152
    .line 153
    .line 154
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->a:Ljava/lang/String;

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_d
    :goto_5
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    move v0, v1

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 33
    .line 34
    array-length v3, v2

    .line 35
    if-ge v0, v3, :cond_2

    .line 36
    .line 37
    aget-object v2, v2, v0

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    array-length v0, v0

    .line 61
    if-lez v0, :cond_5

    .line 62
    .line 63
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 64
    .line 65
    array-length v2, v0

    .line 66
    if-ge v1, v2, :cond_5

    .line 67
    .line 68
    aget-object v0, v0, v1

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x5

    .line 73
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
