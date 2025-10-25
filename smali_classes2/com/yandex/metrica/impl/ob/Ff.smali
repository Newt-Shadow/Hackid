.class public final Lcom/yandex/metrica/impl/ob/Ff;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Ff$a;
    }
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/Ff$a;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ff;->a()Lcom/yandex/metrica/impl/ob/Ff;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Ff;
    .locals 2

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Ff$a;->b()[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 22
    .line 23
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v0, v2

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v0, v1

    .line 63
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
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x20

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    array-length v3, v1

    .line 74
    :goto_1
    add-int/2addr v0, v3

    .line 75
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 76
    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    :cond_7
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 83
    .line 84
    if-ge v3, v1, :cond_8

    .line 85
    .line 86
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ff$a;-><init>()V

    .line 89
    .line 90
    .line 91
    aput-object v1, v4, v3

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ff$a;-><init>()V

    .line 105
    .line 106
    .line 107
    aput-object v0, v4, v3

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 110
    .line 111
    .line 112
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_9
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ff;->a:[Lcom/yandex/metrica/impl/ob/Ff$a;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    aget-object v1, v1, v0

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->b:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->c:J

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->d:Z

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/Ff;->e:Z

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
