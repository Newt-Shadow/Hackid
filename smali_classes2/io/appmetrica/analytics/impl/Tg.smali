.class public final Lio/appmetrica/analytics/impl/Tg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x0;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

.field public final synthetic c:Lio/appmetrica/analytics/impl/Ug;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ug;Lio/appmetrica/analytics/impl/x0;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/x0;",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Function<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/e6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Tg;->c:Lio/appmetrica/analytics/impl/Ug;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Tg;->a:Lio/appmetrica/analytics/impl/x0;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Tg;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tg;->c:Lio/appmetrica/analytics/impl/Ug;

    .line 2
    .line 3
    new-instance v7, Lio/appmetrica/analytics/impl/h4;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tg;->a:Lio/appmetrica/analytics/impl/x0;

    .line 6
    .line 7
    iget-object v2, v1, Lio/appmetrica/analytics/impl/x0;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v8, v1, Lio/appmetrica/analytics/impl/x0;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget v1, v1, Lio/appmetrica/analytics/impl/x0;->d:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tg;->a:Lio/appmetrica/analytics/impl/x0;

    .line 18
    .line 19
    iget-object v10, v1, Lio/appmetrica/analytics/impl/x0;->e:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, v1, Lio/appmetrica/analytics/impl/x0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 22
    .line 23
    move-object v1, v7

    .line 24
    move-object v3, v8

    .line 25
    move-object v4, v9

    .line 26
    move-object v5, v10

    .line 27
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tg;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/coreapi/internal/backport/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lio/appmetrica/analytics/impl/e6;

    .line 37
    .line 38
    new-instance v1, Lio/appmetrica/analytics/impl/G4;

    .line 39
    .line 40
    new-instance v2, Lio/appmetrica/analytics/impl/Kl;

    .line 41
    .line 42
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Kl;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lio/appmetrica/analytics/impl/F4;

    .line 46
    .line 47
    invoke-direct {v3}, Lio/appmetrica/analytics/impl/F4;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/Kl;Lio/appmetrica/analytics/impl/F4;Landroid/os/ResultReceiver;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ug;->c:Lio/appmetrica/analytics/impl/s4;

    .line 55
    .line 56
    invoke-virtual {v2, v7, v1}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, p1, v1}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lio/appmetrica/analytics/impl/Ug;->c:Lio/appmetrica/analytics/impl/s4;

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1, v0, v8, v10}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tg;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
