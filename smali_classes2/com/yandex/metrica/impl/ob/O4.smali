.class public Lcom/yandex/metrica/impl/ob/O4;
.super Lcom/yandex/metrica/impl/ob/M4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/F3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/M4;-><init>(Lcom/yandex/metrica/impl/ob/F3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/n4;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->l()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p2, "com.yandex.metrica.impl.IdentifiersData"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/yandex/metrica/impl/ob/V0;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/M4;->a()Lcom/yandex/metrica/impl/ob/F3;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/F3;->a(Lcom/yandex/metrica/impl/ob/V0;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1
.end method
