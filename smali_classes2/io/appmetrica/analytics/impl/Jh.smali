.class public final Lio/appmetrica/analytics/impl/Jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Throwable;

.field public final synthetic d:Lio/appmetrica/analytics/impl/hi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jh;->d:Lio/appmetrica/analytics/impl/hi;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Jh;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Jh;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Jh;->c:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jh;->d:Lio/appmetrica/analytics/impl/hi;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/hi;->a:Lio/appmetrica/analytics/impl/p0;

    .line 4
    .line 5
    iget-object v2, v0, Lio/appmetrica/analytics/impl/hi;->d:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/hi;->e:Lio/appmetrica/analytics/ReporterConfig;

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/hi;->a(Lio/appmetrica/analytics/impl/p0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Jh;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Jh;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Jh;->c:Ljava/lang/Throwable;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
