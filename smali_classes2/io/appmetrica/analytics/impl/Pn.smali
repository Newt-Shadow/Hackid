.class public final Lio/appmetrica/analytics/impl/Pn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vl;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Pn;->a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pn;->a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;

    .line 4
    .line 5
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Ql;->v:J

    .line 6
    .line 7
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/Ql;->u:J

    .line 8
    .line 9
    invoke-direct {v1, v2, v3, v4, v5}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;-><init>(JJ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->updateConfiguration(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
