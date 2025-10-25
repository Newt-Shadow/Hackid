.class Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/DeferredDeeplinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->requestDeferredDeeplink(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

.field final synthetic val$result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->val$result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->lambda$onError$1(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->lambda$onDeeplinkLoaded$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onDeeplinkLoaded$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v0}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Ljava/lang/String;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic lambda$onError$1(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Ljava/lang/String;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onDeeplinkLoaded(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->access$000(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->val$result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 8
    .line 9
    new-instance v2, Lio/appmetrica/analytics/flutter/impl/a;

    .line 10
    .line 11
    invoke-direct {v2, v1, p1}, Lio/appmetrica/analytics/flutter/impl/a;-><init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onError(Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->access$000(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;->val$result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 8
    .line 9
    new-instance v2, Lio/appmetrica/analytics/flutter/impl/b;

    .line 10
    .line 11
    invoke-direct {v2, v1, p1, p2}, Lio/appmetrica/analytics/flutter/impl/b;-><init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
