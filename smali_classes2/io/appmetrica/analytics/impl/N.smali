.class public final Lio/appmetrica/analytics/impl/N;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/O;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Fi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/O;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/N;->b:Lio/appmetrica/analytics/impl/Fi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/O;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/O;->h:Lio/appmetrica/analytics/impl/I;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/O;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/N;->b:Lio/appmetrica/analytics/impl/Fi;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Lio/appmetrica/analytics/impl/H;

    .line 13
    .line 14
    invoke-direct {v3, v1, v0, v2}, Lio/appmetrica/analytics/impl/H;-><init>(Lio/appmetrica/analytics/impl/I;Landroid/content/Context;Lio/appmetrica/analytics/impl/Fi;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Lio/appmetrica/analytics/impl/I;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
