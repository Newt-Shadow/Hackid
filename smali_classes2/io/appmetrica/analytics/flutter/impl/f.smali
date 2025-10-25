.class public final synthetic Lio/appmetrica/analytics/flutter/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

.field public final synthetic b:Lio/appmetrica/analytics/StartupParamsCallback$Result;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/f;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/f;->b:Lio/appmetrica/analytics/StartupParamsCallback$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/f;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/f;->b:Lio/appmetrica/analytics/StartupParamsCallback$Result;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->a(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    return-void
.end method
