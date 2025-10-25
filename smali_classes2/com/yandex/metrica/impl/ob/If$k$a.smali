.class public final Lcom/yandex/metrica/impl/ob/If$k$a;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/If$k$a$a;,
        Lcom/yandex/metrica/impl/ob/If$k$a$b;
    }
.end annotation


# instance fields
.field public a:J

.field public b:F

.field public c:I

.field public d:I

.field public e:J

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

.field public l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

.field public m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

.field public n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

.field public o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$k$a;->a()Lcom/yandex/metrica/impl/ob/If$k$a;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$k$a;
    .locals 4

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    .line 4
    .line 5
    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    .line 12
    .line 13
    const/16 v0, 0xc8

    .line 14
    .line 15
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    .line 16
    .line 17
    const-wide/32 v0, 0xea60

    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    .line 21
    .line 22
    const/16 v2, 0x2710

    .line 23
    .line 24
    iput v2, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iput-boolean v3, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    .line 48
    .line 49
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 53
    .line 54
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
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    .line 46
    .line 47
    const/4 v2, 0x6

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    .line 54
    .line 55
    const/4 v2, 0x7

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    .line 62
    .line 63
    const/16 v2, 0x8

    .line 64
    .line 65
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    .line 71
    .line 72
    const/16 v3, 0x9

    .line 73
    .line 74
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 80
    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    const/16 v2, 0xa

    .line 84
    .line 85
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr v0, v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    const/16 v2, 0xb

    .line 95
    .line 96
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const/16 v2, 0xc

    .line 106
    .line 107
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    .line 113
    .line 114
    const/16 v2, 0xd

    .line 115
    .line 116
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 122
    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    const/16 v2, 0xe

    .line 126
    .line 127
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    add-int/2addr v0, v1

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 133
    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    const/16 v2, 0xf

    .line 137
    .line 138
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/2addr v0, v1

    .line 143
    :cond_4
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    const/16 v2, 0x10

    .line 148
    .line 149
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    add-int/2addr v0, v1

    .line 154
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    .line 155
    .line 156
    if-eqz v1, :cond_6

    .line 157
    .line 158
    const/16 v2, 0x11

    .line 159
    .line 160
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-int/2addr v0, v1

    .line 165
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
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$b;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :sswitch_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :sswitch_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 98
    .line 99
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :sswitch_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 106
    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 110
    .line 111
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 115
    .line 116
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readFloat()F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :goto_1
    :sswitch_11
    return-object p0

    .line 194
    nop

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x15 -> :sswitch_f
        0x18 -> :sswitch_e
        0x20 -> :sswitch_d
        0x28 -> :sswitch_c
        0x30 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    .line 51
    .line 52
    const/16 v2, 0x9

    .line 53
    .line 54
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/16 v1, 0xa

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const/16 v1, 0xb

    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const/16 v1, 0xc

    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    .line 85
    .line 86
    const/16 v1, 0xd

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const/16 v1, 0xe

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    const/16 v1, 0xf

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    const/16 v1, 0x10

    .line 114
    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    const/16 v1, 0x11

    .line 123
    .line 124
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
