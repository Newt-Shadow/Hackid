.class public final synthetic Lio/appmetrica/analytics/flutter/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

.field public final synthetic b:Lio/appmetrica/analytics/StartupParamsCallback$Result;

.field public final synthetic c:Lio/appmetrica/analytics/StartupParamsCallback$Reason;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/e;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/e;->b:Lio/appmetrica/analytics/StartupParamsCallback$Result;

    iput-object p3, p0, Lio/appmetrica/analytics/flutter/impl/e;->c:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/e;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/e;->b:Lio/appmetrica/analytics/StartupParamsCallback$Result;

    iget-object v2, p0, Lio/appmetrica/analytics/flutter/impl/e;->c:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->b(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V

    return-void
.end method
