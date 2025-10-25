.class public final Lcom/yandex/metrica/impl/ob/Vj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lcom/yandex/metrica/DoNotInline;
.end annotation


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/Vj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Vj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Vj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Vj;->a:Lcom/yandex/metrica/impl/ob/Vj;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Tj;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Vj$a;->a:Lcom/yandex/metrica/impl/ob/Vj$a;

    .line 2
    .line 3
    const-string v1, "getting active subcription info list"

    .line 4
    .line 5
    const-string v2, "SubscriptionManager"

    .line 6
    .line 7
    const-string v3, "telephony_subscription_service"

    .line 8
    .line 9
    invoke-static {v0, p0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Lcom/yandex/metrica/impl/ob/om;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    if-eqz p0, :cond_4

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-static {p0, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 43
    .line 44
    new-instance v2, Lcom/yandex/metrica/impl/ob/Tj;

    .line 45
    .line 46
    const/16 v3, 0x1d

    .line 47
    .line 48
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Wj;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :goto_1
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Wj;->b(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v6, 0x1

    .line 91
    if-ne v5, v6, :cond_2

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_2
    const/4 v6, 0x0

    .line 95
    :goto_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_4

    .line 106
    :cond_3
    const/4 v1, 0x0

    .line 107
    :goto_4
    invoke-direct {v2, v4, v3, v6, v1}, Lcom/yandex/metrica/impl/ob/Tj;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_5
    return-object v0
.end method
