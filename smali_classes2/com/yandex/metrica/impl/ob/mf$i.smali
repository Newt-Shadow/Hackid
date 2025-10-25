.class public final Lcom/yandex/metrica/impl/ob/mf$i;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/mf$i$a;
    }
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$i;->a()Lcom/yandex/metrica/impl/ob/mf$i;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$i;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/mf$i$a;->b()[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf$i;->b:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 12
    .line 13
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

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
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

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
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mf$i;->b:I

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_2
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
    if-eqz v0, :cond_6

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf$i;->b:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    move v3, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    array-length v3, v1

    .line 41
    :goto_1
    add-int/2addr v0, v3

    .line 42
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 50
    .line 51
    if-ge v3, v1, :cond_5

    .line 52
    .line 53
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$i$a;-><init>()V

    .line 56
    .line 57
    .line 58
    aput-object v1, v4, v3

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 64
    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$i$a;-><init>()V

    .line 72
    .line 73
    .line 74
    aput-object v0, v4, v3

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 77
    .line 78
    .line 79
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$i;->a:[Lcom/yandex/metrica/impl/ob/mf$i$a;

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
    iget v0, p0, Lcom/yandex/metrica/impl/ob/mf$i;->b:I

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
