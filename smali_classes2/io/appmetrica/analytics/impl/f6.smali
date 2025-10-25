.class public final Lio/appmetrica/analytics/impl/f6;
.super Lio/appmetrica/analytics/impl/K4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    new-instance v4, Lio/appmetrica/analytics/impl/Bb;

    .line 6
    .line 7
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Bb;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v5, Lio/appmetrica/analytics/impl/J4;

    .line 11
    .line 12
    new-instance p2, Lio/appmetrica/analytics/impl/Rb;

    .line 13
    .line 14
    new-instance p3, Lio/appmetrica/analytics/impl/D4;

    .line 15
    .line 16
    const/16 v0, 0x64

    .line 17
    .line 18
    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/D4;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/Rb;-><init>(Lio/appmetrica/analytics/impl/D4;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, p2}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/l2;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    move-object v0, p0

    .line 29
    move-object v2, p1

    .line 30
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/K4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/impl/Yn;Lio/appmetrica/analytics/impl/S2;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ln;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ln;->d:Lio/appmetrica/analytics/impl/Nn;

    .line 2
    .line 3
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Nn;->c:D

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/K4;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/Double;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-double/2addr v2, v0

    .line 14
    iput-wide v2, p1, Lio/appmetrica/analytics/impl/Nn;->c:D

    .line 15
    .line 16
    return-void
.end method
