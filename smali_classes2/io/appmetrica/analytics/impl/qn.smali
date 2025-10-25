.class public final Lio/appmetrica/analytics/impl/qn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/W3;

.field public final b:Lio/appmetrica/analytics/impl/io;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/control/Toggle;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/W3;

    .line 5
    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->x()Lio/appmetrica/analytics/impl/Xe;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/W3;-><init>(Lio/appmetrica/analytics/impl/Xe;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/appmetrica/analytics/impl/qn;->a:Lio/appmetrica/analytics/impl/W3;

    .line 18
    .line 19
    new-instance v1, Lio/appmetrica/analytics/impl/io;

    .line 20
    .line 21
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/io;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lio/appmetrica/analytics/impl/qn;->b:Lio/appmetrica/analytics/impl/io;

    .line 25
    .line 26
    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [Lio/appmetrica/analytics/coreapi/internal/control/Toggle;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v0, v3, v4

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    aput-object v1, v3, v0

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    new-instance p1, Lio/appmetrica/analytics/impl/bo;

    .line 40
    .line 41
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/bo;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x2

    .line 45
    aput-object p1, v3, v0

    .line 46
    .line 47
    invoke-static {v3}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "loc-def"

    .line 52
    .line 53
    invoke-direct {v2, p1, v0}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lio/appmetrica/analytics/impl/qn;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    .line 57
    .line 58
    return-void
.end method
