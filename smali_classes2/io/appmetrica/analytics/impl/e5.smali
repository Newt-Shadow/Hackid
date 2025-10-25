.class public final Lio/appmetrica/analytics/impl/e5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/M5;

.field public final b:Lio/appmetrica/analytics/impl/Qc;

.field public final c:Lio/appmetrica/analytics/impl/Qc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/re;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/re;-><init>(Lio/appmetrica/analytics/impl/W6;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/appmetrica/analytics/impl/M5;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/M5;-><init>(Lio/appmetrica/analytics/impl/W6;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lio/appmetrica/analytics/impl/e5;->a:Lio/appmetrica/analytics/impl/M5;

    .line 15
    .line 16
    new-instance p1, Lio/appmetrica/analytics/impl/Qc;

    .line 17
    .line 18
    new-instance v1, Lio/appmetrica/analytics/impl/d5;

    .line 19
    .line 20
    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/d5;-><init>(Lio/appmetrica/analytics/impl/Og;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Qc;-><init>(Lio/appmetrica/analytics/impl/se;Lid/a;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e5;->b:Lio/appmetrica/analytics/impl/Qc;

    .line 27
    .line 28
    new-instance p1, Lio/appmetrica/analytics/impl/Qc;

    .line 29
    .line 30
    sget-object p2, Lio/appmetrica/analytics/impl/c5;->a:Lio/appmetrica/analytics/impl/c5;

    .line 31
    .line 32
    invoke-direct {p1, v0, p2}, Lio/appmetrica/analytics/impl/Qc;-><init>(Lio/appmetrica/analytics/impl/se;Lid/a;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lio/appmetrica/analytics/impl/e5;->c:Lio/appmetrica/analytics/impl/Qc;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/O8;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lio/appmetrica/analytics/impl/O8;

    .line 3
    .line 4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e5;->a:Lio/appmetrica/analytics/impl/M5;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/e5;->b:Lio/appmetrica/analytics/impl/Qc;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    invoke-static {v0}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/O8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e5;->c:Lio/appmetrica/analytics/impl/Qc;

    .line 2
    .line 3
    invoke-static {v0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
