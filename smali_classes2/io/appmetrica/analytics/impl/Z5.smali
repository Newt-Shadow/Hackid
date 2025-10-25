.class public final Lio/appmetrica/analytics/impl/Z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Y5;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Z5;->a:Lio/appmetrica/analytics/impl/x5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/impl/x5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Z5;->a:Lio/appmetrica/analytics/impl/x5;

    return-object v0
.end method

.method public final getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Z5;->a:Lio/appmetrica/analytics/impl/x5;

    return-object v0
.end method
