.class public Lcom/yandex/metrica/impl/ob/Ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Aa;

.field private final b:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Aa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Aa;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/fb;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Ia;-><init>(Lcom/yandex/metrica/impl/ob/Aa;Lcom/yandex/metrica/impl/ob/fb;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Aa;Lcom/yandex/metrica/impl/ob/fb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ia;->a:Lcom/yandex/metrica/impl/ob/Aa;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ia;->b:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Xa;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$j;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$j;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ia;->a:Lcom/yandex/metrica/impl/ob/Aa;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Xa;->a:Lcom/yandex/metrica/impl/ob/Sa;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Aa;->a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/yandex/metrica/impl/ob/mf$a;

    .line 17
    .line 18
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$j;->a:Lcom/yandex/metrica/impl/ob/mf$a;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ia;->b:Lcom/yandex/metrica/impl/ob/fb;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Xa;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/in;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/gn;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/mf$a;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$j;->b:[Lcom/yandex/metrica/impl/ob/mf$a;

    .line 50
    .line 51
    move v2, v3

    .line 52
    move v4, v2

    .line 53
    :goto_0
    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ge v2, v5, :cond_1

    .line 62
    .line 63
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Ia;->a:Lcom/yandex/metrica/impl/ob/Aa;

    .line 64
    .line 65
    iget-object v6, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/yandex/metrica/impl/ob/Sa;

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/Aa;->a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/mf$j;->b:[Lcom/yandex/metrica/impl/ob/mf$a;

    .line 80
    .line 81
    iget-object v7, v5, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Lcom/yandex/metrica/impl/ob/mf$a;

    .line 84
    .line 85
    aput-object v7, v6, v2

    .line 86
    .line 87
    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/Na;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 88
    .line 89
    invoke-interface {v5}, Lcom/yandex/metrica/impl/ob/Vm;->a()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    add-int/2addr v4, v5

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move v4, v3

    .line 98
    :cond_1
    new-instance v2, Lcom/yandex/metrica/impl/ob/Um;

    .line 99
    .line 100
    invoke-direct {v2, v4}, Lcom/yandex/metrica/impl/ob/Um;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x3

    .line 104
    new-array v4, v4, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 105
    .line 106
    aput-object v1, v4, v3

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    aput-object p1, v4, v1

    .line 110
    .line 111
    const/4 p1, 0x2

    .line 112
    aput-object v2, v4, p1

    .line 113
    .line 114
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 119
    .line 120
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 121
    .line 122
    .line 123
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xa;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ia;->a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/Na;

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
