.class public final Lcom/yandex/metrica/impl/ob/mf$n;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public a:[B

.field public b:Lcom/yandex/metrica/impl/ob/mf$d;

.field public c:[B

.field public d:Lcom/yandex/metrica/impl/ob/mf$i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$n;->a()Lcom/yandex/metrica/impl/ob/mf$n;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$n;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 9
    .line 10
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 14
    .line 15
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

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
    .locals 2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

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
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$i;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$i;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$d;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$d;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 64
    .line 65
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_7
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
