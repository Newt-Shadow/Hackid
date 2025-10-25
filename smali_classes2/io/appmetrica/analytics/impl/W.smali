.class public final Lio/appmetrica/analytics/impl/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Q;

.field public final b:Lio/appmetrica/analytics/impl/v6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Q;

    new-instance v1, Lio/appmetrica/analytics/impl/dn;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/dn;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Q;-><init>(Lio/appmetrica/analytics/impl/dn;)V

    new-instance v1, Lio/appmetrica/analytics/impl/v6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/v6;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/W;-><init>(Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/v6;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/v6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/W;->a:Lio/appmetrica/analytics/impl/Q;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/W;->b:Lio/appmetrica/analytics/impl/v6;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/h6;)Lio/appmetrica/analytics/impl/V;
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/h6;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/h6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/h6;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W;->a:Lio/appmetrica/analytics/impl/Q;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/V;->a:Lio/appmetrica/analytics/impl/P;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/impl/P;)Lio/appmetrica/analytics/impl/g6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/h6;->a:Lio/appmetrica/analytics/impl/g6;

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/V;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lio/appmetrica/analytics/impl/h6;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W;->b:Lio/appmetrica/analytics/impl/v6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/V;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/le;->a(Ljava/lang/Boolean;)I

    move-result p1

    iput p1, v0, Lio/appmetrica/analytics/impl/h6;->c:I

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/V;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/W;->a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/h6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/h6;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
