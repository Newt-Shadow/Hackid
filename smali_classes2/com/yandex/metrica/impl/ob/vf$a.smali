.class public final Lcom/yandex/metrica/impl/ob/vf$a;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/impl/ob/vf$a;


# instance fields
.field public a:[B

.field public b:I

.field public c:Lcom/yandex/metrica/impl/ob/vf$b;

.field public d:Lcom/yandex/metrica/impl/ob/vf$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/vf$a;->a()Lcom/yandex/metrica/impl/ob/vf$a;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/vf$a;->e:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/vf$a;->e:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/vf$a;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/vf$a;->e:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/vf$a;->e:[Lcom/yandex/metrica/impl/ob/vf$a;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 15
    .line 16
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
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
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_7

    .line 10
    .line 11
    const/16 v1, 0x10

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/vf$c;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/vf$c;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/vf$b;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/vf$b;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    if-eq v0, v1, :cond_6

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    if-eq v0, v1, :cond_6

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    if-eq v0, v1, :cond_6

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    iput v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->b:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
