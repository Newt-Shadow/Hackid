.class Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;->this$1:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;->this$1:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->dequeueWork()Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;->this$1:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 12
    .line 13
    iget-object v1, v1, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService;

    .line 14
    .line 15
    invoke-interface {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->onHandleWork(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;->complete()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;->this$1:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 27
    .line 28
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->a(Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;)Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1$1;-><init>(Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
