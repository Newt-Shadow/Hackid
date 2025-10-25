.class public Lcom/yandex/metrica/profile/NameAttribute;
.super Lcom/yandex/metrica/profile/StringAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/dn;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const-string v2, "Name attribute"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dn;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/yandex/metrica/impl/ob/Dn;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/yandex/metrica/impl/ob/Xe;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Xe;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "appmetrica_name"

    .line 21
    .line 22
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/yandex/metrica/profile/StringAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
