.class public Lcom/yandex/metrica/impl/ob/Ve;
.super Lcom/yandex/metrica/impl/ob/Se;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Je;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ue;

    .line 2
    .line 3
    invoke-direct {v0, p4}, Lcom/yandex/metrica/impl/ob/Ue;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/Se;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/af;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Se;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Se;->b()Lcom/yandex/metrica/impl/ob/Ke;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/metrica/impl/ob/Ke;->a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;Lcom/yandex/metrica/impl/ob/Ie;)Lcom/yandex/metrica/impl/ob/vf$a;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
