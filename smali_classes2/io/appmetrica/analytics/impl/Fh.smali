.class public final Lio/appmetrica/analytics/impl/Fh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/p5;


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
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/bb;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Fh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Eh;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Eh;
    .locals 9

    .line 1
    new-instance v8, Lio/appmetrica/analytics/impl/Eh;

    .line 2
    .line 3
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->g()Lio/appmetrica/analytics/impl/P6;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    new-instance v6, Lio/appmetrica/analytics/impl/Dg;

    .line 14
    .line 15
    invoke-direct {v6, p4}, Lio/appmetrica/analytics/impl/Dg;-><init>(Lio/appmetrica/analytics/impl/mm;)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lio/appmetrica/analytics/impl/g5;

    .line 19
    .line 20
    invoke-direct {v7}, Lio/appmetrica/analytics/impl/g5;-><init>()V

    .line 21
    .line 22
    .line 23
    move-object v0, v8

    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Eh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/P6;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/D9;)V

    .line 28
    .line 29
    .line 30
    return-object v8
.end method
