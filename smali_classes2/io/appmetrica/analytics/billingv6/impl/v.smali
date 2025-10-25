.class public final Lio/appmetrica/analytics/billingv6/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/billingv6/impl/v;-><init>(Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/v;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/billingv6/impl/v;-><init>(Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method


# virtual methods
.method public final getBillingInfoToUpdate(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Ljava/util/Map;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;",
            ">;",
            "Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    .line 31
    .line 32
    iget-object v3, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 33
    .line 34
    sget-object v4, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->INAPP:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    invoke-interface {p3}, Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;->isFirstInappCheckOccurred()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    iget-object v3, p0, Lio/appmetrica/analytics/billingv6/impl/v;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 45
    .line 46
    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    iget-wide v5, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseTime:J

    .line 51
    .line 52
    sub-long/2addr v3, v5

    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    iget v5, p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;->firstCollectingInappMaxAgeSeconds:I

    .line 56
    .line 57
    int-to-long v5, v5

    .line 58
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    cmp-long v2, v3, v5

    .line 63
    .line 64
    if-gtz v2, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v3, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->productId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p3, v3}, Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;->get(Ljava/lang/String;)Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    iget-object v4, v3, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseToken:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseToken:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    :cond_2
    iget-object v4, p0, Lio/appmetrica/analytics/billingv6/impl/v;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 86
    .line 87
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    iget-wide v6, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseTime:J

    .line 92
    .line 93
    sub-long/2addr v4, v6

    .line 94
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 95
    .line 96
    iget v7, p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;->firstCollectingInappMaxAgeSeconds:I

    .line 97
    .line 98
    int-to-long v7, v7

    .line 99
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    cmp-long v4, v4, v6

    .line 104
    .line 105
    if-gtz v4, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v4, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 109
    .line 110
    sget-object v5, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 111
    .line 112
    if-ne v4, v5, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    if-eqz v3, :cond_0

    .line 116
    .line 117
    iget-object v2, v2, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 118
    .line 119
    sget-object v4, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 120
    .line 121
    if-ne v2, v4, :cond_0

    .line 122
    .line 123
    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/v;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 124
    .line 125
    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    iget-wide v2, v3, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->sendTime:J

    .line 130
    .line 131
    sub-long/2addr v4, v2

    .line 132
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    .line 134
    iget v3, p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;->sendFrequencySeconds:I

    .line 135
    .line 136
    int-to-long v6, v3

    .line 137
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    cmp-long v2, v4, v2

    .line 142
    .line 143
    if-ltz v2, :cond_0

    .line 144
    .line 145
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_5
    return-object v0
.end method
