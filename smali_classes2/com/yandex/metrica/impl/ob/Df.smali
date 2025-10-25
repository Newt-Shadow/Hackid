.class public final Lcom/yandex/metrica/impl/ob/Df;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Df$a;
    }
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/Df$a;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Df;->a()Lcom/yandex/metrica/impl/ob/Df;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Df;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Df$a;->b()[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 6
    .line 7
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 13
    .line 14
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

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
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    array-length v1, v1

    .line 37
    if-lez v1, :cond_4

    .line 38
    .line 39
    move v1, v2

    .line 40
    move v4, v1

    .line 41
    :goto_1
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v6, v5

    .line 44
    if-ge v2, v6, :cond_3

    .line 45
    .line 46
    aget-object v5, v5, v2

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    invoke-static {v5}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v1, v5

    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    add-int/2addr v0, v1

    .line 61
    mul-int/2addr v4, v3

    .line 62
    add-int/2addr v0, v4

    .line 63
    :cond_4
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
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_5

    .line 11
    .line 12
    const/16 v1, 0x12

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    array-length v3, v1

    .line 34
    :goto_1
    add-int/2addr v0, v3

    .line 35
    new-array v4, v0, [Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 43
    .line 44
    if-ge v3, v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    aput-object v1, v4, v3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    aput-object v0, v4, v3

    .line 63
    .line 64
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    move v3, v2

    .line 76
    goto :goto_3

    .line 77
    :cond_6
    array-length v3, v1

    .line 78
    :goto_3
    add-int/2addr v0, v3

    .line 79
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/Df$a;

    .line 80
    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 87
    .line 88
    if-ge v3, v1, :cond_8

    .line 89
    .line 90
    new-instance v1, Lcom/yandex/metrica/impl/ob/Df$a;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Df$a;-><init>()V

    .line 93
    .line 94
    .line 95
    aput-object v1, v4, v3

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Df$a;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Df$a;-><init>()V

    .line 109
    .line 110
    .line 111
    aput-object v0, v4, v3

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 114
    .line 115
    .line 116
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_9
    :goto_5
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

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
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    if-lez v0, :cond_3

    .line 32
    .line 33
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    if-ge v1, v2, :cond_3

    .line 37
    .line 38
    aget-object v0, v0, v1

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
