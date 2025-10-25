.class Lcom/yandex/metrica/impl/ob/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ak;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/qf;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/P1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/P1;Lcom/yandex/metrica/impl/ob/qf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/O1;->a:Lcom/yandex/metrica/impl/ob/qf;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Zj;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O1;->a:Lcom/yandex/metrica/impl/ob/qf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Zj;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$e;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/yandex/metrica/impl/ob/Tj;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 35
    .line 36
    sget v4, Lcom/yandex/metrica/impl/ob/J1;->e:I

    .line 37
    .line 38
    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$e;

    .line 39
    .line 40
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$e;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->b()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->b()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    iput v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->c()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->c()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iput v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 74
    .line 75
    :cond_1
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->a()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iput-object v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 90
    .line 91
    :cond_2
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->d()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput-boolean v2, v4, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

    .line 96
    .line 97
    aput-object v4, v3, v1

    .line 98
    .line 99
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    .line 100
    .line 101
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 102
    .line 103
    aget-object v3, v3, v1

    .line 104
    .line 105
    invoke-static {v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/ym/MessageNano;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/P1;->a(Lcom/yandex/metrica/impl/ob/P1;I)I

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    .line 113
    .line 114
    const/16 v3, 0xa

    .line 115
    .line 116
    invoke-static {v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/P1;->a(Lcom/yandex/metrica/impl/ob/P1;I)I

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    return-void
.end method
