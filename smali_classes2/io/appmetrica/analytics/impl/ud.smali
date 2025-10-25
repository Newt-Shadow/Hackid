.class public final Lio/appmetrica/analytics/impl/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p0;

.field public final b:Lio/appmetrica/analytics/impl/nd;

.field public final c:Lio/appmetrica/analytics/impl/Ad;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->d()Lio/appmetrica/analytics/impl/p0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ud;->a:Lio/appmetrica/analytics/impl/p0;

    .line 13
    .line 14
    new-instance v1, Lio/appmetrica/analytics/impl/nd;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/nd;-><init>(Lio/appmetrica/analytics/impl/p0;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lio/appmetrica/analytics/impl/ud;->b:Lio/appmetrica/analytics/impl/nd;

    .line 20
    .line 21
    new-instance v0, Lio/appmetrica/analytics/impl/Ad;

    .line 22
    .line 23
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ad;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ud;->c:Lio/appmetrica/analytics/impl/Ad;

    .line 27
    .line 28
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->f()Lio/appmetrica/analytics/impl/j4;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ud;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 41
    .line 42
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/ud;)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ud;->a:Lio/appmetrica/analytics/impl/p0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Oa;->i()Lio/appmetrica/analytics/impl/vc;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lio/appmetrica/analytics/impl/vc;->a:Lio/appmetrica/analytics/impl/Ua;

    .line 23
    .line 24
    return-object p0
.end method
