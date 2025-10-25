.class public final Lio/appmetrica/analytics/impl/oh;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 4
    .line 5
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v9;->c:Lio/appmetrica/analytics/impl/Ek;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ek;->b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return p1
.end method
