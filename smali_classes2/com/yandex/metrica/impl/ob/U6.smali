.class public Lcom/yandex/metrica/impl/ob/U6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/D6;)Lcom/yandex/metrica/impl/ob/jf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/jf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/jf;->a:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_0
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/jf;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/jf;->b:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move-object v1, v2

    .line 26
    :cond_1
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/jf;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->d()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, v0, Lcom/yandex/metrica/impl/ob/jf;->c:I

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    move-object v1, v2

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lcom/yandex/metrica/impl/ob/jf;->c:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->b()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v2, v0, Lcom/yandex/metrica/impl/ob/jf;->f:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, v0, Lcom/yandex/metrica/impl/ob/jf;->f:I

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->e()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/jf;->d:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    move-object v1, v2

    .line 75
    :cond_4
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/jf;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/D6;->f()Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-boolean v1, v0, Lcom/yandex/metrica/impl/ob/jf;->e:Z

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    move-object p1, v1

    .line 90
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/jf;->e:Z

    .line 95
    .line 96
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/U6;->a(Lcom/yandex/metrica/impl/ob/D6;)Lcom/yandex/metrica/impl/ob/jf;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/jf;

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
