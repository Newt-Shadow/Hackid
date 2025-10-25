.class public final Lio/appmetrica/analytics/impl/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/C9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/z5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/h5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/e5;

    .line 5
    .line 6
    invoke-direct {v0, p2, p3}, Lio/appmetrica/analytics/impl/e5;-><init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lio/appmetrica/analytics/impl/z5;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/e5;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/e5;->b()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p2, p1, p3, v0, p4}, Lio/appmetrica/analytics/impl/z5;-><init>(Lio/appmetrica/analytics/impl/G9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/h5;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lio/appmetrica/analytics/impl/f5;->a:Lio/appmetrica/analytics/impl/z5;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/B9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/f5;->a:Lio/appmetrica/analytics/impl/z5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/z5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/f5;->a:Lio/appmetrica/analytics/impl/z5;

    .line 2
    .line 3
    return-object v0
.end method
