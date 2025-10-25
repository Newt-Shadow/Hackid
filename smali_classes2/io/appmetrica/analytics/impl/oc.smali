.class public final Lio/appmetrica/analytics/impl/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/C9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/z5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lio/appmetrica/analytics/impl/nc;

    .line 5
    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p0

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p6

    .line 12
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/nc;-><init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/C9;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Ue;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lio/appmetrica/analytics/impl/z5;

    .line 16
    .line 17
    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/nc;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/nc;->b()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-direct {p2, p1, p3, p4, p5}, Lio/appmetrica/analytics/impl/z5;-><init>(Lio/appmetrica/analytics/impl/G9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/h5;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lio/appmetrica/analytics/impl/oc;->a:Lio/appmetrica/analytics/impl/z5;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/B9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oc;->a:Lio/appmetrica/analytics/impl/z5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/z5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/oc;->a:Lio/appmetrica/analytics/impl/z5;

    .line 2
    .line 3
    return-object v0
.end method
