.class public final Lcom/yandex/metrica/impl/ob/wf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/wf$b;,
        Lcom/yandex/metrica/impl/ob/wf$a;
    }
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/wf$b;

.field public b:Lcom/yandex/metrica/impl/ob/wf$a;

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/wf;->a()Lcom/yandex/metrica/impl/ob/wf;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/wf;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/wf$b;->b()[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 9
    .line 10
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 16
    .line 17
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    array-length v1, v1

    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-ge v1, v5, :cond_1

    .line 19
    .line 20
    aget-object v4, v4, v1

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v0, v4

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    array-length v1, v1

    .line 47
    if-lez v1, :cond_5

    .line 48
    .line 49
    move v1, v2

    .line 50
    move v4, v1

    .line 51
    :goto_1
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 52
    .line 53
    array-length v6, v5

    .line 54
    if-ge v2, v6, :cond_4

    .line 55
    .line 56
    aget-object v5, v5, v2

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    invoke-static {v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    add-int/2addr v1, v5

    .line 67
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    add-int/2addr v0, v1

    .line 71
    mul-int/2addr v4, v3

    .line 72
    add-int/2addr v0, v4

    .line 73
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
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_7

    .line 11
    .line 12
    const/16 v1, 0x12

    .line 13
    .line 14
    if-eq v0, v1, :cond_5

    .line 15
    .line 16
    const/16 v1, 0x1a

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move v3, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    array-length v3, v1

    .line 39
    :goto_1
    add-int/2addr v0, v3

    .line 40
    new-array v4, v0, [Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 48
    .line 49
    if-ge v3, v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    aput-object v1, v4, v3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aput-object v0, v4, v3

    .line 68
    .line 69
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/ob/wf$a;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/wf$a;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 82
    .line 83
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 94
    .line 95
    if-nez v1, :cond_8

    .line 96
    .line 97
    move v3, v2

    .line 98
    goto :goto_3

    .line 99
    :cond_8
    array-length v3, v1

    .line 100
    :goto_3
    add-int/2addr v0, v3

    .line 101
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/wf$b;

    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 109
    .line 110
    if-ge v3, v1, :cond_a

    .line 111
    .line 112
    new-instance v1, Lcom/yandex/metrica/impl/ob/wf$b;

    .line 113
    .line 114
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/wf$b;-><init>()V

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
    goto :goto_4

    .line 128
    :cond_a
    new-instance v0, Lcom/yandex/metrica/impl/ob/wf$b;

    .line 129
    .line 130
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/wf$b;-><init>()V

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
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_b
    :goto_5
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

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
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/wf;->a:[Lcom/yandex/metrica/impl/ob/wf$b;

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
    const/4 v3, 0x1

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->b:Lcom/yandex/metrica/impl/ob/wf$a;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

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
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/wf;->c:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v2, v0

    .line 44
    if-ge v1, v2, :cond_4

    .line 45
    .line 46
    aget-object v0, v0, v1

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
