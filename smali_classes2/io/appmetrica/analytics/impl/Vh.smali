.class public final Lio/appmetrica/analytics/impl/Vh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/ReporterConfig;

.field public final synthetic b:Lio/appmetrica/analytics/impl/hi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vh;->b:Lio/appmetrica/analytics/impl/hi;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Vh;->a:Lio/appmetrica/analytics/ReporterConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vh;->b:Lio/appmetrica/analytics/impl/hi;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vh;->a:Lio/appmetrica/analytics/ReporterConfig;

    .line 4
    .line 5
    iget-object v2, v0, Lio/appmetrica/analytics/impl/hi;->a:Lio/appmetrica/analytics/impl/p0;

    .line 6
    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/hi;->d:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/appmetrica/analytics/impl/o0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/o0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
