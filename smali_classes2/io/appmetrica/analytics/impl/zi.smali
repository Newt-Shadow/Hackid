.class public final Lio/appmetrica/analytics/impl/zi;
.super Lio/appmetrica/analytics/impl/S2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/l2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/S2;-><init>(Lio/appmetrica/analytics/impl/l2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Jn;Lio/appmetrica/analytics/impl/Ln;Lio/appmetrica/analytics/impl/k2;)Lio/appmetrica/analytics/impl/Ln;
    .locals 1

    .line 1
    check-cast p3, Lio/appmetrica/analytics/impl/Gd;

    .line 2
    .line 3
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Gd;->a()Lio/appmetrica/analytics/impl/Ln;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p2, Lio/appmetrica/analytics/impl/Ln;->c:Lio/appmetrica/analytics/impl/Mn;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p3, Lio/appmetrica/analytics/impl/Mn;->b:Z

    .line 11
    .line 12
    iget-object p3, p0, Lio/appmetrica/analytics/impl/S2;->a:Lio/appmetrica/analytics/impl/l2;

    .line 13
    .line 14
    invoke-interface {p3, p1, p2}, Lio/appmetrica/analytics/impl/l2;->a(Lio/appmetrica/analytics/impl/Jn;Lio/appmetrica/analytics/impl/Ln;)Lio/appmetrica/analytics/impl/Ln;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
