.class public final Lio/appmetrica/analytics/impl/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ProcessDetector;


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
.method public final isMainProcess()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->a:Lio/appmetrica/analytics/impl/rc;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/rc;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
