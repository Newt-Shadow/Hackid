.class public Lcom/yandex/metrica/impl/ob/W6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/T6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/T6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/T6;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/W6;-><init>(Lcom/yandex/metrica/impl/ob/T6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/T6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/W6;->a:Lcom/yandex/metrica/impl/ob/T6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/lf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/lf;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_0
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/lf;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v2, v1

    .line 25
    :goto_0
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/lf;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/W6;->a:Lcom/yandex/metrica/impl/ob/T6;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->d()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/lf;->c:[Lcom/yandex/metrica/impl/ob/jf;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->a()Lcom/yandex/metrica/impl/ob/F6;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->a()Lcom/yandex/metrica/impl/ob/F6;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/lf;->d:Lcom/yandex/metrica/impl/ob/lf;

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F6;->e()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    new-array p1, v1, [Lcom/yandex/metrica/impl/ob/lf;

    .line 63
    .line 64
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/lf;

    .line 72
    .line 73
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/yandex/metrica/impl/ob/F6;

    .line 90
    .line 91
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/lf;->e:[Lcom/yandex/metrica/impl/ob/lf;

    .line 92
    .line 93
    add-int/lit8 v4, v1, 0x1

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    aput-object v2, v3, v1

    .line 100
    .line 101
    move v1, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_2
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/F6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/lf;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
