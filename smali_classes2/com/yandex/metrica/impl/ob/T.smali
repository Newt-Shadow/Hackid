.class Lcom/yandex/metrica/impl/ob/T;
.super Lcom/yandex/metrica/impl/ob/Q1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/A3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->d(Lcom/yandex/metrica/CounterConfiguration$b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
