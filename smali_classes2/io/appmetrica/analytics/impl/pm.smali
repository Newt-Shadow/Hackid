.class public final Lio/appmetrica/analytics/impl/pm;
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
.method public final a(Lio/appmetrica/analytics/impl/om;)Lio/appmetrica/analytics/impl/gm;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/gm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gm;-><init>()V

    .line 2
    iget p1, p1, Lio/appmetrica/analytics/impl/om;->a:I

    .line 3
    iput p1, v0, Lio/appmetrica/analytics/impl/gm;->a:I

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/gm;)Lio/appmetrica/analytics/impl/om;
    .locals 1

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/om;

    iget p1, p1, Lio/appmetrica/analytics/impl/gm;->a:I

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/om;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/om;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pm;->a(Lio/appmetrica/analytics/impl/om;)Lio/appmetrica/analytics/impl/gm;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/gm;

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/om;

    .line 4
    .line 5
    iget p1, p1, Lio/appmetrica/analytics/impl/gm;->a:I

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/om;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
