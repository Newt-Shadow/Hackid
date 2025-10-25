.class public final Lio/appmetrica/analytics/impl/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/o0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/n0;->a:Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n0;->a:Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lio/appmetrica/analytics/impl/m1;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/m1;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v3, 0x5

    .line 23
    .line 24
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-interface {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
