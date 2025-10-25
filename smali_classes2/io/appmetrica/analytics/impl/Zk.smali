.class public final Lio/appmetrica/analytics/impl/Zk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lio/appmetrica/analytics/coreapi/internal/annotations/DoNotInline;
.end annotation


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/Zk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Zk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zk;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Zk;->a:Lio/appmetrica/analytics/impl/Zk;

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
            "Lio/appmetrica/analytics/impl/Tk;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/kp;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/kp;-><init>()V

    const-string v1, "getting active subcription info list"

    const-string v2, "SubscriptionManager"

    const-string v3, "telephony_subscription_service"

    .line 2
    invoke-static {p0, v3, v1, v2, v0}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 6
    new-instance v2, Lio/appmetrica/analytics/impl/Tk;

    const/16 v3, 0x1d

    .line 7
    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-static {v1}, Lio/appmetrica/analytics/impl/al;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    :goto_1
    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v1}, Lio/appmetrica/analytics/impl/al;->b(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 13
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 14
    :goto_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 15
    :goto_4
    invoke-direct {v2, v4, v3, v6, v1}, Lio/appmetrica/analytics/impl/Tk;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private static final a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 0

    .line 17
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/appmetrica/analytics/impl/Zk;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
