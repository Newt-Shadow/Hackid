.class public Lcom/yandex/metrica/impl/ob/Ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ja;

.field private final b:Lcom/yandex/metrica/impl/ob/Ea;

.field private final c:Lcom/yandex/metrica/impl/ob/Ia;

.field private final d:Lcom/yandex/metrica/impl/ob/Ma;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ja;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ja;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ea;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ea;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Ia;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Ia;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Ma;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Ma;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ca;-><init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Ma;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Ma;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ca;->a:Lcom/yandex/metrica/impl/ob/Ja;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ca;->b:Lcom/yandex/metrica/impl/ob/Ea;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ca;->c:Lcom/yandex/metrica/impl/ob/Ia;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ca;->d:Lcom/yandex/metrica/impl/ob/Ma;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Ua;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$c;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ca;->a:Lcom/yandex/metrica/impl/ob/Ja;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ua;->a:Lcom/yandex/metrica/impl/ob/Ya;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ja;->a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/yandex/metrica/impl/ob/mf$k;

    .line 17
    .line 18
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ca;->b:Lcom/yandex/metrica/impl/ob/Ea;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ua;->b:Ljava/math/BigDecimal;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Ea;->a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ca;->c:Lcom/yandex/metrica/impl/ob/Ia;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ua;->c:Lcom/yandex/metrica/impl/ob/Xa;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Ia;->a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$j;

    .line 41
    .line 42
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ua;->d:Lcom/yandex/metrica/impl/ob/ab;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ca;->d:Lcom/yandex/metrica/impl/ob/Ma;

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Ma;->a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$m;

    .line 57
    .line 58
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    const/4 v3, 0x3

    .line 63
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    aput-object v1, v3, v4

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    aput-object v2, v3, v1

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    aput-object p1, v3, v1

    .line 73
    .line 74
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 79
    .line 80
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ua;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ca;->a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;

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
