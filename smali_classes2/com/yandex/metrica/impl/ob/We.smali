.class public Lcom/yandex/metrica/impl/ob/We;
.super Lcom/yandex/metrica/impl/ob/Ke;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Je;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Ke;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;Lcom/yandex/metrica/impl/ob/Ie;)Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 5
    .line 6
    iget-boolean p2, p2, Lcom/yandex/metrica/impl/ob/vf$b;->b:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move p2, v0

    .line 14
    :goto_1
    if-eqz p2, :cond_2

    .line 15
    .line 16
    check-cast p3, Lcom/yandex/metrica/impl/ob/Se;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Se;->a()Lcom/yandex/metrica/impl/ob/vf$a;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object p3, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 23
    .line 24
    iput-boolean v0, p3, Lcom/yandex/metrica/impl/ob/vf$b;->a:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ke;->a()Lcom/yandex/metrica/impl/ob/Je;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-interface {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/Je;->a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;)Lcom/yandex/metrica/impl/ob/vf$a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method
