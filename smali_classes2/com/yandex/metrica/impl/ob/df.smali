.class public final Lcom/yandex/metrica/impl/ob/df;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/kf;

.field public b:[Lcom/yandex/metrica/impl/ob/kf;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->a()Lcom/yandex/metrica/impl/ob/df;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/df;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

    .line 3
    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/kf;->b()[Lcom/yandex/metrica/impl/ob/kf;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    array-length v1, v1

    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    if-ge v1, v3, :cond_2

    .line 27
    .line 28
    aget-object v2, v2, v1

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v0, v2

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    :cond_3
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
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_6

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    move v3, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    array-length v3, v1

    .line 45
    :goto_1
    add-int/2addr v0, v3

    .line 46
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/kf;

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 54
    .line 55
    if-ge v3, v1, :cond_5

    .line 56
    .line 57
    new-instance v1, Lcom/yandex/metrica/impl/ob/kf;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kf;-><init>()V

    .line 60
    .line 61
    .line 62
    aput-object v1, v4, v3

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 68
    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    new-instance v0, Lcom/yandex/metrica/impl/ob/kf;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kf;-><init>()V

    .line 76
    .line 77
    .line 78
    aput-object v0, v4, v3

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 81
    .line 82
    .line 83
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

    .line 87
    .line 88
    if-nez v0, :cond_7

    .line 89
    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/kf;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kf;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

    .line 96
    .line 97
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->a:Lcom/yandex/metrica/impl/ob/kf;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->b:[Lcom/yandex/metrica/impl/ob/kf;

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    aget-object v1, v1, v0

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->c:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
