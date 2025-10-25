.class public Lcom/yandex/metrica/impl/ob/Aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ea;

.field private final b:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ea;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ea;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Aa;-><init>(Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Aa;->a:Lcom/yandex/metrica/impl/ob/Ea;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Aa;->b:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$a;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Aa;->a:Lcom/yandex/metrica/impl/ob/Ea;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Sa;->a:Ljava/math/BigDecimal;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ea;->a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf$a;->b:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Aa;->b:Lcom/yandex/metrica/impl/ob/kn;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sa;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf$a;->a:[B

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Vm;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object p1, v1, v2

    .line 39
    .line 40
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    .line 45
    .line 46
    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Sa;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Aa;->a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;

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
