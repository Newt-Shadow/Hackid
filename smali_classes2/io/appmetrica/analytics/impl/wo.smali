.class public final synthetic Lio/appmetrica/analytics/impl/wo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Jk;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Jk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/wo;->a:Lio/appmetrica/analytics/impl/Jk;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wo;->a:Lio/appmetrica/analytics/impl/Jk;

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Jk;->b(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    return-void
.end method
