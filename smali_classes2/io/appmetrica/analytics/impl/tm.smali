.class public final Lio/appmetrica/analytics/impl/tm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/sm;)Lio/appmetrica/analytics/impl/hm;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/hm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/hm;-><init>()V

    .line 2
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/sm;->a:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/hm;->a:J

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/hm;)Lio/appmetrica/analytics/impl/sm;
    .locals 3

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/sm;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/hm;->a:J

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/sm;-><init>(J)V

    return-object v0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/sm;

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/hm;

    .line 4
    .line 5
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/hm;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/sm;->a:J

    .line 9
    .line 10
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/hm;->a:J

    .line 11
    .line 12
    return-object v0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/hm;

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/sm;

    .line 4
    .line 5
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/hm;->a:J

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/sm;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
