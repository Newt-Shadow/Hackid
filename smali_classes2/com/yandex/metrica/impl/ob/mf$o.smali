.class public final Lcom/yandex/metrica/impl/ob/mf$o;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/mf$k;

.field public b:Lcom/yandex/metrica/impl/ob/mf$n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$o;->a()Lcom/yandex/metrica/impl/ob/mf$o;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$o;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 8
    .line 9
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

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
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/16 v1, 0x12

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
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$n;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$n;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$k;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$k;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

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
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
