.class public final Lcom/yandex/metrica/impl/ob/If$c;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$c;->a()Lcom/yandex/metrica/impl/ob/If$c;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$c;
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

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
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 6
    .line 7
    const-wide/16 v3, 0x2710

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    :cond_0
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 20
    .line 21
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    :cond_1
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 32
    .line 33
    cmp-long v5, v1, v3

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    :cond_2
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

    .line 44
    .line 45
    cmp-long v3, v1, v3

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
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
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x18

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->a:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2710

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->b:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->c:J

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$c;->d:J

    .line 34
    .line 35
    cmp-long v2, v0, v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
