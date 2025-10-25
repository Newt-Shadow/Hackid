.class public final Lio/appmetrica/analytics/impl/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/O5;


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
.method public final a(Lio/appmetrica/analytics/impl/of;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->C()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/za;->j:Lio/appmetrica/analytics/impl/rf;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Y7;->b(Lio/appmetrica/analytics/impl/c8;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/of;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ff;->a(Lio/appmetrica/analytics/impl/of;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
