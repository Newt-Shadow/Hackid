.class final Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    iget-object v2, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lio/flutter/plugins/firebase/messaging/y;->a(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_2
    const-string v2, "JobServiceEngineImpl"

    .line 20
    .line 21
    const-string v3, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!"

    .line 22
    .line 23
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v1

    .line 28
    const-string v2, "JobServiceEngineImpl"

    .line 29
    .line 30
    const-string v3, "SecurityException: Failed to run mParams.completeWork(mJobWork)!"

    .line 31
    .line 32
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/w;->a(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
