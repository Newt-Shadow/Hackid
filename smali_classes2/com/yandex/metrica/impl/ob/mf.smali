.class public final Lcom/yandex/metrica/impl/ob/mf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/mf$q;,
        Lcom/yandex/metrica/impl/ob/mf$o;,
        Lcom/yandex/metrica/impl/ob/mf$p;,
        Lcom/yandex/metrica/impl/ob/mf$b;,
        Lcom/yandex/metrica/impl/ob/mf$h;,
        Lcom/yandex/metrica/impl/ob/mf$f;,
        Lcom/yandex/metrica/impl/ob/mf$g;,
        Lcom/yandex/metrica/impl/ob/mf$c;,
        Lcom/yandex/metrica/impl/ob/mf$m;,
        Lcom/yandex/metrica/impl/ob/mf$k;,
        Lcom/yandex/metrica/impl/ob/mf$l;,
        Lcom/yandex/metrica/impl/ob/mf$j;,
        Lcom/yandex/metrica/impl/ob/mf$a;,
        Lcom/yandex/metrica/impl/ob/mf$e;,
        Lcom/yandex/metrica/impl/ob/mf$n;,
        Lcom/yandex/metrica/impl/ob/mf$i;,
        Lcom/yandex/metrica/impl/ob/mf$d;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/yandex/metrica/impl/ob/mf$q;

.field public c:Lcom/yandex/metrica/impl/ob/mf$o;

.field public d:Lcom/yandex/metrica/impl/ob/mf$p;

.field public e:Lcom/yandex/metrica/impl/ob/mf$b;

.field public f:Lcom/yandex/metrica/impl/ob/mf$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mf;->a()Lcom/yandex/metrica/impl/ob/mf;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mf;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 17
    .line 18
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
    iget v1, p0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    const/4 v2, 0x6

    .line 60
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_5
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
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_b

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_9

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_7

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_5

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/16 v1, 0x32

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$h;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$h;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$b;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$b;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$p;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$p;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 82
    .line 83
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 90
    .line 91
    if-nez v0, :cond_8

    .line 92
    .line 93
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$o;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$o;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 99
    .line 100
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 107
    .line 108
    if-nez v0, :cond_a

    .line 109
    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$q;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$q;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 116
    .line 117
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_0
    iput v0, p0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_c
    :goto_1
    return-object p0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const/4 v1, 0x6

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 47
    .line 48
    .line 49
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
