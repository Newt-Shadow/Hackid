.class public final Lio/appmetrica/analytics/impl/Kk;
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
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p2, Lio/appmetrica/analytics/impl/Ln;->c:Lio/appmetrica/analytics/impl/Mn;

    .line 4
    .line 5
    iget-boolean p2, p2, Lio/appmetrica/analytics/impl/Mn;->b:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_1
    :goto_0
    check-cast p3, Lio/appmetrica/analytics/impl/Gd;

    .line 13
    .line 14
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Gd;->a()Lio/appmetrica/analytics/impl/Ln;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p2, Lio/appmetrica/analytics/impl/Ln;->c:Lio/appmetrica/analytics/impl/Mn;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p3, Lio/appmetrica/analytics/impl/Mn;->a:Z

    .line 22
    .line 23
    iget-object p3, p0, Lio/appmetrica/analytics/impl/S2;->a:Lio/appmetrica/analytics/impl/l2;

    .line 24
    .line 25
    invoke-interface {p3, p1, p2}, Lio/appmetrica/analytics/impl/l2;->a(Lio/appmetrica/analytics/impl/Jn;Lio/appmetrica/analytics/impl/Ln;)Lio/appmetrica/analytics/impl/Ln;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
