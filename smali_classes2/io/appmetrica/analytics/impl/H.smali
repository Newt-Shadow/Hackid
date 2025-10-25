.class public final Lio/appmetrica/analytics/impl/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Provider;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Fi;

.field public final synthetic c:Lio/appmetrica/analytics/impl/I;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I;Landroid/content/Context;Lio/appmetrica/analytics/impl/Fi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/H;->c:Lio/appmetrica/analytics/impl/I;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/H;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/H;->b:Lio/appmetrica/analytics/impl/Fi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/H;->c:Lio/appmetrica/analytics/impl/I;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/I;->a:Lio/appmetrica/analytics/impl/F;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/H;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/H;->b:Lio/appmetrica/analytics/impl/Fi;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lio/appmetrica/analytics/impl/F;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Fi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
