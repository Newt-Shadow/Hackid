.class public final Lio/appmetrica/analytics/screenshot/impl/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


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
.method public final a(Lio/appmetrica/analytics/screenshot/impl/X;)Lio/appmetrica/analytics/screenshot/impl/M;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/M;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/M;-><init>()V

    .line 2
    iget-boolean v1, p1, Lio/appmetrica/analytics/screenshot/impl/X;->a:Z

    .line 3
    iput-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/M;->a:Z

    .line 4
    iget-wide v1, p1, Lio/appmetrica/analytics/screenshot/impl/X;->b:J

    .line 5
    iput-wide v1, v0, Lio/appmetrica/analytics/screenshot/impl/M;->b:J

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/M;)Lio/appmetrica/analytics/screenshot/impl/X;
    .locals 4

    .line 6
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/X;

    .line 7
    iget-boolean v1, p1, Lio/appmetrica/analytics/screenshot/impl/M;->a:Z

    .line 8
    iget-wide v2, p1, Lio/appmetrica/analytics/screenshot/impl/M;->b:J

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/screenshot/impl/X;-><init>(ZJ)V

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/X;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/Z;->a(Lio/appmetrica/analytics/screenshot/impl/X;)Lio/appmetrica/analytics/screenshot/impl/M;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/M;

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/X;

    .line 4
    .line 5
    iget-boolean v1, p1, Lio/appmetrica/analytics/screenshot/impl/M;->a:Z

    .line 6
    .line 7
    iget-wide v2, p1, Lio/appmetrica/analytics/screenshot/impl/M;->b:J

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/screenshot/impl/X;-><init>(ZJ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
