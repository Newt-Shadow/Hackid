.class public final synthetic Lio/appmetrica/analytics/impl/ro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/e2;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/e2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ro;->a:Lio/appmetrica/analytics/impl/e2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ro;->a:Lio/appmetrica/analytics/impl/e2;

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/C2;->b(Lio/appmetrica/analytics/impl/e2;Landroid/app/usage/UsageStatsManager;)Lio/appmetrica/analytics/impl/E2;

    move-result-object p1

    return-object p1
.end method
