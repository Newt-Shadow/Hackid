.class public final Lcom/yandex/metrica/impl/ob/qf$b;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$b;->a()Lcom/yandex/metrica/impl/ob/qf$b;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->a:D

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->b:D

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->c:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->d:I

    .line 13
    .line 14
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->e:I

    .line 15
    .line 16
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->f:I

    .line 17
    .line 18
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->g:I

    .line 19
    .line 20
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 28
    .line 29
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->a:D

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->b:D

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->c:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->d:I

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->e:I

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->f:I

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/4 v2, 0x6

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->g:I

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 87
    .line 88
    const-string v2, ""

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 97
    .line 98
    const/16 v2, 0x9

    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_6
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
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    if-eq v0, v1, :cond_a

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    if-eq v0, v1, :cond_9

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-eq v0, v1, :cond_8

    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    if-eq v0, v1, :cond_7

    .line 22
    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-eq v0, v1, :cond_6

    .line 26
    .line 27
    const/16 v1, 0x30

    .line 28
    .line 29
    if-eq v0, v1, :cond_5

    .line 30
    .line 31
    const/16 v1, 0x38

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    const/16 v1, 0x40

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x4a

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    if-eq v0, v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->g:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->f:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->e:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->d:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->c:J

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->b:D

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->a:D

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_b
    :goto_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->a:D

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->b:D

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->c:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->d:I

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->e:I

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->f:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x6

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->g:I

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x7

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->h:I

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$b;->i:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v1, 0x9

    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
