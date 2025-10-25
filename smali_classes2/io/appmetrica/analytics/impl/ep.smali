.class public final synthetic Lio/appmetrica/analytics/impl/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lio/appmetrica/analytics/impl/B;

.field public final synthetic c:Lio/appmetrica/analytics/impl/O;

.field public final synthetic d:Lio/appmetrica/analytics/impl/Fi;


# direct methods
.method public synthetic constructor <init>(ZLio/appmetrica/analytics/impl/B;Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/ep;->a:Z

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ep;->b:Lio/appmetrica/analytics/impl/B;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ep;->c:Lio/appmetrica/analytics/impl/O;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/ep;->d:Lio/appmetrica/analytics/impl/Fi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/ep;->a:Z

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ep;->b:Lio/appmetrica/analytics/impl/B;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ep;->c:Lio/appmetrica/analytics/impl/O;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/ep;->d:Lio/appmetrica/analytics/impl/Fi;

    invoke-static {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/O;->a(ZLio/appmetrica/analytics/impl/B;Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/Fi;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
