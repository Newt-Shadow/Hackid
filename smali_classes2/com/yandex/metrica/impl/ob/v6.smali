.class public Lcom/yandex/metrica/impl/ob/v6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/N6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/N6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/N6;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/v6;-><init>(Lcom/yandex/metrica/impl/ob/N6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/N6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/v6;->a:Lcom/yandex/metrica/impl/ob/N6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/U1$f;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F6;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v1, v0

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v6;->a:Lcom/yandex/metrica/impl/ob/N6;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/N6;->a(Lcom/yandex/metrica/impl/ob/H6;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 35
    .line 36
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    .line 37
    .line 38
    new-instance v3, Lcom/yandex/metrica/impl/ob/J;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-direct {v3, p1, v1, v2, v0}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Q1;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/yandex/metrica/impl/ob/U1$f;

    .line 55
    .line 56
    invoke-direct {p1, v3, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/J;->t()Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Ljava/util/HashMap;)Lcom/yandex/metrica/impl/ob/U1$f;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Z)Lcom/yandex/metrica/impl/ob/U1$f;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method
