.class public Lio/appmetrica/analytics/impl/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/appmetrica/analytics/impl/e6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Landroid/util/Pair;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:Lio/appmetrica/analytics/impl/pa;

.field public l:Lio/appmetrica/analytics/impl/x9;

.field public m:Landroid/os/Bundle;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/d6;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/d6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/impl/e6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lio/appmetrica/analytics/impl/pa;->b:Lio/appmetrica/analytics/impl/pa;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/e6;->k:Lio/appmetrica/analytics/impl/pa;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 7
    iput-object p2, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 8
    iput p3, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 11
    invoke-virtual {p4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 3

    const-string v0, "CounterReport.AppEnvironmentDiffKey"

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CounterReport.AppEnvironmentDiffValue"

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static a()Lio/appmetrica/analytics/impl/e6;
    .locals 3

    .line 49
    new-instance v0, Lio/appmetrica/analytics/impl/e6;

    const-string v1, ""

    const/4 v2, 0x0

    .line 50
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    .line 51
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const/16 v1, 0x4000

    .line 52
    iput v1, v0, Lio/appmetrica/analytics/impl/e6;->d:I

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/Cf;)Lio/appmetrica/analytics/impl/e6;
    .locals 12

    .line 53
    new-instance v0, Lio/appmetrica/analytics/impl/e6;

    const-string v1, ""

    const/4 v2, 0x0

    .line 54
    invoke-direct {v0, v1, v1, v2}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v3, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const v3, 0xa010

    .line 56
    iput v3, v0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 57
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cf;->a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    .line 58
    new-instance v3, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Li;-><init>()V

    .line 59
    iget v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->quantity:I

    iput v4, v3, Lio/appmetrica/analytics/impl/Li;->a:I

    .line 60
    iget-wide v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->priceMicros:J

    iput-wide v4, v3, Lio/appmetrica/analytics/impl/Li;->f:J

    .line 61
    iget-object v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->priceCurrency:Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v3, Lio/appmetrica/analytics/impl/Li;->b:[B

    .line 64
    iget-object v1, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->sku:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v3, Lio/appmetrica/analytics/impl/Li;->c:[B

    .line 65
    new-instance v1, Lio/appmetrica/analytics/impl/Gi;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Gi;-><init>()V

    .line 66
    iget-object v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->purchaseOriginalJson:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lio/appmetrica/analytics/impl/Gi;->a:[B

    .line 67
    iget-object v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lio/appmetrica/analytics/impl/Gi;->b:[B

    .line 68
    iput-object v1, v3, Lio/appmetrica/analytics/impl/Li;->e:Lio/appmetrica/analytics/impl/Gi;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v3, Lio/appmetrica/analytics/impl/Li;->g:Z

    .line 70
    iput v1, v3, Lio/appmetrica/analytics/impl/Li;->h:I

    .line 71
    iget-object v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    .line 72
    sget-object v5, Lio/appmetrica/analytics/impl/Bf;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 73
    :goto_0
    iput v4, v3, Lio/appmetrica/analytics/impl/Li;->i:I

    .line 74
    new-instance v4, Lio/appmetrica/analytics/impl/Ki;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Ki;-><init>()V

    .line 75
    iget-object v6, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v4, Lio/appmetrica/analytics/impl/Ki;->a:[B

    .line 76
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->purchaseTime:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    iput-wide v6, v4, Lio/appmetrica/analytics/impl/Ki;->b:J

    .line 77
    iput-object v4, v3, Lio/appmetrica/analytics/impl/Li;->j:Lio/appmetrica/analytics/impl/Ki;

    .line 78
    iget-object v4, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    sget-object v6, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    if-ne v4, v6, :cond_b

    .line 79
    new-instance v4, Lio/appmetrica/analytics/impl/Ji;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Ji;-><init>()V

    .line 80
    iget-boolean v6, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->autoRenewing:Z

    iput-boolean v6, v4, Lio/appmetrica/analytics/impl/Ji;->a:Z

    .line 81
    iget-object v6, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->subscriptionPeriod:Lio/appmetrica/analytics/billinginterface/internal/Period;

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz v6, :cond_5

    .line 82
    new-instance v9, Lio/appmetrica/analytics/impl/Ii;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/Ii;-><init>()V

    .line 83
    iget v10, v6, Lio/appmetrica/analytics/billinginterface/internal/Period;->number:I

    iput v10, v9, Lio/appmetrica/analytics/impl/Ii;->a:I

    .line 84
    iget-object v6, v6, Lio/appmetrica/analytics/billinginterface/internal/Period;->timeUnit:Lio/appmetrica/analytics/billinginterface/internal/Period$TimeUnit;

    .line 85
    sget-object v10, Lio/appmetrica/analytics/impl/Bf;->b:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-eq v6, v1, :cond_4

    if-eq v6, v5, :cond_3

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v1

    .line 86
    :goto_1
    iput v6, v9, Lio/appmetrica/analytics/impl/Ii;->b:I

    .line 87
    iput-object v9, v4, Lio/appmetrica/analytics/impl/Ji;->b:Lio/appmetrica/analytics/impl/Ii;

    .line 88
    :cond_5
    new-instance v6, Lio/appmetrica/analytics/impl/Hi;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/Hi;-><init>()V

    .line 89
    iget-wide v9, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->introductoryPriceMicros:J

    iput-wide v9, v6, Lio/appmetrica/analytics/impl/Hi;->a:J

    .line 90
    iget-object v9, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->introductoryPricePeriod:Lio/appmetrica/analytics/billinginterface/internal/Period;

    if-eqz v9, :cond_a

    .line 91
    new-instance v10, Lio/appmetrica/analytics/impl/Ii;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/Ii;-><init>()V

    .line 92
    iget v11, v9, Lio/appmetrica/analytics/billinginterface/internal/Period;->number:I

    iput v11, v10, Lio/appmetrica/analytics/impl/Ii;->a:I

    .line 93
    iget-object v9, v9, Lio/appmetrica/analytics/billinginterface/internal/Period;->timeUnit:Lio/appmetrica/analytics/billinginterface/internal/Period$TimeUnit;

    .line 94
    sget-object v11, Lio/appmetrica/analytics/impl/Bf;->b:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v1, :cond_9

    if-eq v9, v5, :cond_8

    if-eq v9, v8, :cond_7

    if-eq v9, v7, :cond_6

    goto :goto_2

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    move v2, v8

    goto :goto_2

    :cond_8
    move v2, v5

    goto :goto_2

    :cond_9
    move v2, v1

    .line 95
    :goto_2
    iput v2, v10, Lio/appmetrica/analytics/impl/Ii;->b:I

    .line 96
    iput-object v10, v6, Lio/appmetrica/analytics/impl/Hi;->b:Lio/appmetrica/analytics/impl/Ii;

    .line 97
    :cond_a
    iget p0, p0, Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;->introductoryPriceCycles:I

    iput p0, v6, Lio/appmetrica/analytics/impl/Hi;->c:I

    .line 98
    iput-object v6, v4, Lio/appmetrica/analytics/impl/Ji;->c:Lio/appmetrica/analytics/impl/Hi;

    .line 99
    iput-object v4, v3, Lio/appmetrica/analytics/impl/Li;->k:Lio/appmetrica/analytics/impl/Ji;

    .line 100
    :cond_b
    invoke-static {v3}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/e6;->setValueBytes([B)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;
    .locals 1

    .line 16
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->g:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Y9;)Lio/appmetrica/analytics/impl/e6;
    .locals 3

    .line 17
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->B:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object v0

    .line 18
    new-instance v1, Lio/appmetrica/analytics/impl/z9;

    .line 19
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Y9;->b:Lio/appmetrica/analytics/impl/Gm;

    .line 20
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Bi;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 21
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/z9;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p1, Lio/appmetrica/analytics/impl/A9;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/A9;-><init>()V

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/A9;->a(Lio/appmetrica/analytics/impl/z9;)Lio/appmetrica/analytics/impl/y9;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/e6;->setValueBytes([B)V

    .line 23
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 24
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 25
    iget-wide p0, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 26
    iput-wide p0, v0, Lio/appmetrica/analytics/impl/e6;->i:J

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;
    .locals 0

    .line 13
    invoke-static {p0}, Lio/appmetrica/analytics/impl/e6;->d(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    .line 14
    iget p1, p1, Lio/appmetrica/analytics/impl/nb;->a:I

    .line 15
    iput p1, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;Ljava/lang/String;)Lio/appmetrica/analytics/impl/e6;
    .locals 1

    .line 45
    invoke-static {p0}, Lio/appmetrica/analytics/impl/e6;->d(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    .line 46
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const/16 v0, 0x3001

    .line 47
    iput v0, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 48
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/e6;->setValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/e6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/F2;Lio/appmetrica/analytics/impl/e2;Ljava/util/List;)Lio/appmetrica/analytics/impl/e6;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/e6;",
            "Ljava/util/Collection<",
            "Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;",
            ">;",
            "Lio/appmetrica/analytics/impl/F2;",
            "Lio/appmetrica/analytics/impl/e2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/e6;"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lio/appmetrica/analytics/impl/e6;->d(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    iget-object v4, v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "granted"

    iget-boolean v1, v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->granted:Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_2

    const-string v1, "background_restricted"

    .line 32
    iget-object v2, p2, Lio/appmetrica/analytics/impl/F2;->b:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_standby_bucket"

    .line 33
    iget-object p2, p2, Lio/appmetrica/analytics/impl/F2;->a:Lio/appmetrica/analytics/impl/E2;

    .line 34
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p2, "UNKNOWN"

    goto :goto_2

    :pswitch_1
    const-string p2, "RESTRICTED"

    goto :goto_2

    :pswitch_2
    const-string p2, "RARE"

    goto :goto_2

    :pswitch_3
    const-string p2, "FREQUENT"

    goto :goto_2

    :pswitch_4
    const-string p2, "WORKING_SET"

    goto :goto_2

    :pswitch_5
    const-string p2, "ACTIVE"

    goto :goto_2

    :pswitch_6
    const-string p2, "EXEMPTED"

    goto :goto_2

    :goto_1
    const/4 p2, 0x0

    .line 36
    :goto_2
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "permissions"

    .line 38
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "background_restrictions"

    .line 39
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "available_providers"

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    const-string p1, ""

    .line 42
    :goto_3
    sget-object p2, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const/16 p2, 0x3000

    .line 43
    iput p2, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 44
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/e6;->setValue(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/e6;
    .locals 3

    .line 102
    new-instance v0, Lio/appmetrica/analytics/impl/e6;

    const-string v1, ""

    const/4 v2, 0x0

    .line 103
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    .line 104
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    const/16 v1, 0x3020

    .line 105
    iput v1, v0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 106
    iput-object p0, v0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 107
    sget-object p0, Lio/appmetrica/analytics/impl/x9;->c:Lio/appmetrica/analytics/impl/x9;

    .line 108
    iput-object p0, v0, Lio/appmetrica/analytics/impl/e6;->l:Lio/appmetrica/analytics/impl/x9;

    return-object v0
.end method

.method public static b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/e6;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "CounterReport.Object"

    .line 4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/e6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    .line 5
    :catchall_0
    new-instance p0, Lio/appmetrica/analytics/impl/e6;

    .line 6
    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/e6;

    .line 8
    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;
    .locals 1

    .line 9
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->A:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;
    .locals 1

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->d:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;
    .locals 3

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/e6;

    const-string v1, ""

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/e6;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 7
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 8
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 9
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 10
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    .line 11
    iput-object v1, v0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 13
    iput-object v1, v0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 17
    iput-object v1, v0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 19
    iput-object p0, v0, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/e6;
    .locals 1

    .line 2
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->F:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/pa;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->k:Lio/appmetrica/analytics/impl/pa;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/x9;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->l:Lio/appmetrica/analytics/impl/x9;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->o:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    :cond_0
    return-void
.end method

.method public final b()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    return-wide v0
.end method

.method public final d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "CounterReport.Object"

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lio/appmetrica/analytics/impl/pa;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->k:Lio/appmetrica/analytics/impl/pa;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBytesTruncated()I
    .locals 1

    .line 1
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCustomType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValueBytes()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->o:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lio/appmetrica/analytics/impl/x9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->l:Lio/appmetrica/analytics/impl/x9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    iget v1, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final setBytesTruncated(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/appmetrica/analytics/impl/e6;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCustomType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/appmetrica/analytics/impl/e6;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setValueBytes([B)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    iget v2, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 12
    .line 13
    invoke-static {v2}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lio/appmetrica/analytics/impl/nb;->b:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 21
    .line 22
    iget-object v2, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v5, 0x1f4

    .line 33
    .line 34
    if-le v4, v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    const-string v2, "[event: %s, type: %s, value: %s]"

    .line 44
    .line 45
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "CounterReport.Event"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "CounterReport.Value"

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 21
    .line 22
    const-string v1, "CounterReport.Type"

    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->e:I

    .line 28
    .line 29
    const-string v1, "CounterReport.CustomType"

    .line 30
    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lio/appmetrica/analytics/impl/e6;->g:I

    .line 35
    .line 36
    const-string v1, "CounterReport.TRUNCATED"

    .line 37
    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->h:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "CounterReport.ProfileID"

    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->k:Lio/appmetrica/analytics/impl/pa;

    .line 49
    .line 50
    iget v0, v0, Lio/appmetrica/analytics/impl/pa;->a:I

    .line 51
    .line 52
    const-string v1, "CounterReport.UniquenessStatus"

    .line 53
    .line 54
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->m:Landroid/os/Bundle;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const-string v1, "CounterReport.Payload"

    .line 62
    .line 63
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->c:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const-string v1, "CounterReport.Environment"

    .line 71
    .line 72
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "CounterReport.AppEnvironmentDiffKey"

    .line 84
    .line 85
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, "CounterReport.AppEnvironmentDiffValue"

    .line 93
    .line 94
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 98
    .line 99
    const-string v2, "CounterReport.CreationElapsedRealtime"

    .line 100
    .line 101
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 105
    .line 106
    const-string v2, "CounterReport.CreationTimestamp"

    .line 107
    .line 108
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->l:Lio/appmetrica/analytics/impl/x9;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget v0, v0, Lio/appmetrica/analytics/impl/x9;->a:I

    .line 116
    .line 117
    const-string v1, "CounterReport.Source"

    .line 118
    .line 119
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->n:Ljava/lang/Boolean;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const-string v1, "CounterReport.AttributionIdChanged"

    .line 131
    .line 132
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->o:Ljava/lang/Integer;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const-string v1, "CounterReport.OpenId"

    .line 144
    .line 145
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "CounterReport.Extras"

    .line 155
    .line 156
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
