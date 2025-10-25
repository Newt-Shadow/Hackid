.class public Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview_android/types/Disposable;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "PrintJob"

.field public static final METHOD_CHANNEL_NAME_PREFIX:Ljava/lang/String; = "com.pichillilorenzo/flutter_inappwebview_printjobcontroller_"


# instance fields
.field public channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

.field public id:Ljava/lang/String;

.field public job:Landroid/print/PrintJob;

.field public plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

.field public settings:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/print/PrintJob;Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->settings:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobSettings;

    .line 11
    .line 12
    new-instance p2, Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    iget-object p3, p4, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 15
    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "com.pichillilorenzo/flutter_inappwebview_printjobcontroller_"

    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;Lio/flutter/plugin/common/MethodChannel;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 44
    .line 45
    :cond_2
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 46
    .line 47
    return-void
.end method

.method public disposeNoCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->channelDelegate:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobChannelDelegate;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;->printJobManager:Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobManager;->jobs:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->id:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 41
    .line 42
    :cond_2
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->plugin:Lcom/pichillilorenzo/flutter_inappwebview_android/InAppWebViewFlutterPlugin;

    .line 43
    .line 44
    return-void
.end method

.method public getInfo()Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;->fromPrintJobInfo(Landroid/print/PrintJobInfo;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PrintJobInfoExt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public restart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/print_job/PrintJobController;->job:Landroid/print/PrintJob;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
