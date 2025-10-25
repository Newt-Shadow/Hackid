.class public final Lcom/yandex/metrica/impl/ob/mf$f;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:Lcom/yandex/metrica/impl/ob/mf$i;

.field public d:[Lcom/yandex/metrica/impl/ob/mf$g;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$f;->a()Lcom/yandex/metrica/impl/ob/mf$f;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 4
    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 9
    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/mf$g;->b()[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 21
    .line 22
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 6
    .line 7
    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    array-length v1, v1

    .line 54
    if-lez v1, :cond_4

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 58
    .line 59
    array-length v3, v2

    .line 60
    if-ge v1, v3, :cond_4

    .line 61
    .line 62
    aget-object v2, v2, v1

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/2addr v0, v2

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    const/4 v2, 0x5

    .line 80
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
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
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_9

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_8

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    move v3, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    array-length v3, v1

    .line 53
    :goto_1
    add-int/2addr v0, v3

    .line 54
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 62
    .line 63
    if-ge v3, v1, :cond_5

    .line 64
    .line 65
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$g;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$g;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object v1, v4, v3

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 76
    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$g;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$g;-><init>()V

    .line 84
    .line 85
    .line 86
    aput-object v0, v4, v3

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 89
    .line 90
    .line 91
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 95
    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 99
    .line 100
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$i;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 104
    .line 105
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_a
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    array-length v0, v0

    .line 44
    if-lez v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-ge v0, v2, :cond_4

    .line 51
    .line 52
    aget-object v1, v1, v0

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/4 v1, 0x5

    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
