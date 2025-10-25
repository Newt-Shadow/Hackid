.class public Lcom/yandex/metrica/impl/ob/m4;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public a(Lcom/yandex/metrica/impl/ob/i4;)Lcom/yandex/metrica/impl/ob/l4;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i4;->e()Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/yandex/metrica/impl/ob/q4;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/q4;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/y4;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/y4;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/x4;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/x4;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance p1, Lcom/yandex/metrica/impl/ob/s4;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/s4;-><init>()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    new-instance p1, Lcom/yandex/metrica/impl/ob/h4;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/h4;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance p1, Lcom/yandex/metrica/impl/ob/u4;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/u4;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    new-instance p1, Lcom/yandex/metrica/impl/ob/q4;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/q4;-><init>()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object p1
.end method
