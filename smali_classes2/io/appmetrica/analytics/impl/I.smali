.class public final Lio/appmetrica/analytics/impl/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/F;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/F;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/I;->a:Lio/appmetrica/analytics/impl/F;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 3

    .line 3
    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/backport/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->INVALID_ADV_ID:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    const/4 v1, 0x0

    const-string v2, "AdvId is invalid: 00000000-0000-0000-0000-000000000000"

    invoke-direct {p0, v1, v0, v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/G;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/G;-><init>(Lio/appmetrica/analytics/impl/I;Landroid/content/Context;)V

    invoke-static {v0}, Lio/appmetrica/analytics/impl/I;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Fi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/H;

    invoke-direct {v0, p0, p1, p2}, Lio/appmetrica/analytics/impl/H;-><init>(Lio/appmetrica/analytics/impl/I;Landroid/content/Context;Lio/appmetrica/analytics/impl/Fi;)V

    invoke-static {v0}, Lio/appmetrica/analytics/impl/I;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p1

    return-object p1
.end method
