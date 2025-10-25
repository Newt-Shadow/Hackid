.class public final synthetic Lio/appmetrica/analytics/flutter/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

.field public final synthetic b:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/d;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/d;->b:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

    iput-object p3, p0, Lio/appmetrica/analytics/flutter/impl/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/d;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/d;->b:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;

    iget-object v2, p0, Lio/appmetrica/analytics/flutter/impl/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$2;->b(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;Ljava/lang/String;)V

    return-void
.end method
