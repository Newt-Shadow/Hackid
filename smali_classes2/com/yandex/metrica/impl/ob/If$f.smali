.class public final Lcom/yandex/metrica/impl/ob/If$f;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/If$e;

.field public b:Lcom/yandex/metrica/impl/ob/If$e;

.field public c:Lcom/yandex/metrica/impl/ob/If$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$f;->a()Lcom/yandex/metrica/impl/ob/If$f;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$f;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 10
    .line 11
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_2
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
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

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
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$e;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$e;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 53
    .line 54
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 61
    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$e;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 70
    .line 71
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
