.class public Lcom/yandex/metrica/profile/NotificationsEnabledAttribute;
.super Lcom/yandex/metrica/profile/BooleanAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Dn;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/Xe;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Xe;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "appmetrica_notifications_enabled"

    .line 12
    .line 13
    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/metrica/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
