.class public final Lcom/yandex/metrica/impl/ob/pf$b;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static volatile n:[Lcom/yandex/metrica/impl/ob/pf$b;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:D

.field public e:D

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/pf$b;->a()Lcom/yandex/metrica/impl/ob/pf$b;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/pf$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/pf$b;->n:[Lcom/yandex/metrica/impl/ob/pf$b;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/pf$b;->n:[Lcom/yandex/metrica/impl/ob/pf$b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/pf$b;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/pf$b;->n:[Lcom/yandex/metrica/impl/ob/pf$b;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/pf$b;->n:[Lcom/yandex/metrica/impl/ob/pf$b;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/pf$b;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->b:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->c:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->d:D

    .line 12
    .line 13
    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->e:D

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->f:I

    .line 17
    .line 18
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->g:I

    .line 19
    .line 20
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->h:I

    .line 21
    .line 22
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->i:I

    .line 23
    .line 24
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->j:I

    .line 25
    .line 26
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->k:I

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->l:J

    .line 29
    .line 30
    iput v2, p0, Lcom/yandex/metrica/impl/ob/pf$b;->m:I

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 34
    .line 35
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
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->b:J

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->c:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    :cond_0
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->d:D

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->e:D

    .line 44
    .line 45
    const/4 v5, 0x5

    .line 46
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->f:I

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x6

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->g:I

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const/4 v2, 0x7

    .line 66
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v0, v1

    .line 71
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->h:I

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/16 v2, 0x8

    .line 76
    .line 77
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->i:I

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const/16 v2, 0x9

    .line 87
    .line 88
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->j:I

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    const/16 v2, 0xa

    .line 98
    .line 99
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->k:I

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    const/16 v2, 0xb

    .line 109
    .line 110
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_6
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->l:J

    .line 116
    .line 117
    cmp-long v3, v1, v3

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    const/16 v3, 0xc

    .line 122
    .line 123
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    add-int/2addr v0, v1

    .line 128
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/pf$b;->m:I

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    const/16 v2, 0xd

    .line 133
    .line 134
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v0, v1

    .line 139
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-eq v0, v3, :cond_1

    .line 26
    .line 27
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->m:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->l:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    if-eq v0, v3, :cond_2

    .line 52
    .line 53
    if-eq v0, v2, :cond_2

    .line 54
    .line 55
    if-eq v0, v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->k:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    if-eq v0, v3, :cond_3

    .line 68
    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    if-eq v0, v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->j:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->i:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->h:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->g:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->f:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->e:D

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readDouble()D

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->d:D

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->c:J

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->b:J

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :goto_1
    :sswitch_d
    return-object p0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x21 -> :sswitch_9
        0x29 -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->b:J

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->c:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->d:D

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->e:D

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->f:I

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x6

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->g:I

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->h:I

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->i:I

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const/16 v1, 0x9

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->j:I

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 78
    .line 79
    .line 80
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->k:I

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const/16 v1, 0xb

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    .line 88
    .line 89
    :cond_6
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->l:J

    .line 90
    .line 91
    cmp-long v2, v0, v2

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    const/16 v2, 0xc

    .line 96
    .line 97
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 98
    .line 99
    .line 100
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/pf$b;->m:I

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    const/16 v1, 0xd

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    .line 108
    .line 109
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
