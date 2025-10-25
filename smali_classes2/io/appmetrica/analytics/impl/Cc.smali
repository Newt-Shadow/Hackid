.class public final Lio/appmetrica/analytics/impl/Cc;
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Cc;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Bc;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/mm;)Lio/appmetrica/analytics/impl/Bc;
    .locals 9

    .line 1
    new-instance v8, Lio/appmetrica/analytics/impl/Bc;

    .line 2
    .line 3
    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->t()Lio/appmetrica/analytics/impl/jg;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->g()Lio/appmetrica/analytics/impl/P6;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    new-instance v7, Lio/appmetrica/analytics/impl/Dg;

    .line 20
    .line 21
    invoke-direct {v7, p4}, Lio/appmetrica/analytics/impl/Dg;-><init>(Lio/appmetrica/analytics/impl/mm;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v8

    .line 25
    move-object v1, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Bc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/jg;Lio/appmetrica/analytics/impl/P6;Lio/appmetrica/analytics/impl/m5;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method
