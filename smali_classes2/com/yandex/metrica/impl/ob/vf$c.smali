.class public final Lcom/yandex/metrica/impl/ob/vf$c;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:[B

.field public b:D

.field public c:D

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/vf$c;->a()Lcom/yandex/metrica/impl/ob/vf$c;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/vf$c;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->d:Z

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

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
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    cmp-long v1, v1, v5

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    :cond_1
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    cmp-long v1, v1, v3

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v0, v1

    .line 69
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/vf$c;->d:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
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
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x19

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x20

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->d:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->a:[B

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmp-long v0, v0, v4

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->b:D

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    cmp-long v0, v0, v2

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/vf$c;->d:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
