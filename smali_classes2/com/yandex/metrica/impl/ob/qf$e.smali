.class public final Lcom/yandex/metrica/impl/ob/qf$e;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/impl/ob/qf$e;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$e;->a()Lcom/yandex/metrica/impl/ob/qf$e;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/qf$e;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$e;->e:[Lcom/yandex/metrica/impl/ob/qf$e;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/qf$e;->e:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$e;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/qf$e;->e:[Lcom/yandex/metrica/impl/ob/qf$e;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$e;->e:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$e;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 3
    .line 4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
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
    const/16 v1, 0x1a

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
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
