.class Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/StartupParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->requestStartupParams(Ljava/util/List;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

.field final synthetic val$pigeonResult:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->val$pigeonResult:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->lambda$onReceive$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    return-void
.end method

.method public static synthetic b(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->lambda$onRequestError$1(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

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

.method private static synthetic lambda$onRequestError$1(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->access$000(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->val$pigeonResult:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 8
    .line 9
    new-instance v2, Lio/appmetrica/analytics/flutter/impl/f;

    .line 10
    .line 11
    invoke-direct {v2, v1, p1}, Lio/appmetrica/analytics/flutter/impl/f;-><init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->this$0:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->access$000(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;->val$pigeonResult:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;

    .line 8
    .line 9
    new-instance v2, Lio/appmetrica/analytics/flutter/impl/e;

    .line 10
    .line 11
    invoke-direct {v2, v1, p2, p1}, Lio/appmetrica/analytics/flutter/impl/e;-><init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
