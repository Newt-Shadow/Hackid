.class public Lcom/yandex/metrica/profile/Attribute;
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

.method public static birthDate()Lcom/yandex/metrica/profile/BirthDateAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/BirthDateAttribute;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static customBoolean(Ljava/lang/String;)Lcom/yandex/metrica/profile/BooleanAttribute;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/BooleanAttribute;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Qe;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/yandex/metrica/impl/ob/Re;

    .line 9
    .line 10
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 11
    .line 12
    const/16 v4, 0x64

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static customCounter(Ljava/lang/String;)Lcom/yandex/metrica/profile/CounterAttribute;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/CounterAttribute;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Qe;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/yandex/metrica/impl/ob/Re;

    .line 9
    .line 10
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 11
    .line 12
    const/16 v4, 0x64

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/profile/CounterAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static customNumber(Ljava/lang/String;)Lcom/yandex/metrica/profile/NumberAttribute;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/NumberAttribute;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Qe;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/yandex/metrica/impl/ob/Re;

    .line 9
    .line 10
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wm;

    .line 11
    .line 12
    const/16 v4, 0x64

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/profile/NumberAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static customString(Ljava/lang/String;)Lcom/yandex/metrica/profile/StringAttribute;
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/StringAttribute;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/dn;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "String attribute \""

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, "\""

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/16 v4, 0xc8

    .line 32
    .line 33
    invoke-direct {v1, v4, v2, v3}, Lcom/yandex/metrica/impl/ob/dn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/yandex/metrica/impl/ob/Qe;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/yandex/metrica/impl/ob/Re;

    .line 42
    .line 43
    new-instance v4, Lcom/yandex/metrica/impl/ob/Wm;

    .line 44
    .line 45
    const/16 v5, 0x64

    .line 46
    .line 47
    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yandex/metrica/profile/StringAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public static gender()Lcom/yandex/metrica/profile/GenderAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/GenderAttribute;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/profile/GenderAttribute;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static name()Lcom/yandex/metrica/profile/NameAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/NameAttribute;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/profile/NameAttribute;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static notificationsEnabled()Lcom/yandex/metrica/profile/NotificationsEnabledAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/NotificationsEnabledAttribute;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/profile/NotificationsEnabledAttribute;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
