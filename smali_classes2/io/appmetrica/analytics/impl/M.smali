.class public final Lio/appmetrica/analytics/impl/M;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/O;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/M;->a:Lio/appmetrica/analytics/impl/O;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/M;->a:Lio/appmetrica/analytics/impl/O;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/O;->g:Lio/appmetrica/analytics/impl/I;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/O;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lio/appmetrica/analytics/impl/G;

    .line 11
    .line 12
    invoke-direct {v2, v1, v0}, Lio/appmetrica/analytics/impl/G;-><init>(Lio/appmetrica/analytics/impl/I;Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lio/appmetrica/analytics/impl/I;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
