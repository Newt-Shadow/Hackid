.class public final Lcom/yandex/metrica/impl/ob/mf$c;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/yandex/metrica/impl/ob/mf$k;

.field public b:Lcom/yandex/metrica/impl/ob/mf$m;

.field public c:Lcom/yandex/metrica/impl/ob/mf$e;

.field public d:Lcom/yandex/metrica/impl/ob/mf$j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf$c;->a()Lcom/yandex/metrica/impl/ob/mf$c;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
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
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_7

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_5

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$j;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$e;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$e;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 65
    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$m;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$m;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$k;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$k;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 91
    .line 92
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_9
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
