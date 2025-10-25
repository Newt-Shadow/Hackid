.class public final synthetic Lio/appmetrica/analytics/flutter/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/a;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/a;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->b(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V

    return-void
.end method
