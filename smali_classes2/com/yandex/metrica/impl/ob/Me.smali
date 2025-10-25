.class public Lcom/yandex/metrica/impl/ob/Me;
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
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/vf$b;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ke;->a()Lcom/yandex/metrica/impl/ob/Je;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p3, Lcom/yandex/metrica/impl/ob/Se;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Se;->a()Lcom/yandex/metrica/impl/ob/vf$a;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/Je;->a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;)Lcom/yandex/metrica/impl/ob/vf$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/yandex/metrica/impl/ob/vf$b;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/vf$b;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    .line 36
    .line 37
    return-object p2
.end method
