.class public final Lio/appmetrica/analytics/impl/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/sc;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:J

.field public d:Z

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/sc;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/f2;->a:Lio/appmetrica/analytics/impl/sc;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/f2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/appmetrica/analytics/impl/f2;->c:J

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/f2;->d:Z

    .line 12
    .line 13
    new-instance p1, Lio/appmetrica/analytics/impl/qp;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/qp;-><init>(Lio/appmetrica/analytics/impl/f2;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/appmetrica/analytics/impl/f2;->e:Ljava/lang/Runnable;

    .line 19
    .line 20
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/f2;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/f2;->a:Lio/appmetrica/analytics/impl/sc;

    .line 2
    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/sc;->a:Lio/appmetrica/analytics/impl/tc;

    .line 4
    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->h:Lio/appmetrica/analytics/impl/wi;

    .line 6
    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 8
    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z3;->a:Lio/appmetrica/analytics/impl/yf;

    .line 10
    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/wi;->c:Lio/appmetrica/analytics/impl/xi;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/xi;->a(Lio/appmetrica/analytics/impl/yf;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
