.class abstract Lio/flutter/plugins/firebase/messaging/JobIntentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkItem;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$ComponentNameWithWakeful;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$JobWorkEnqueuer;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkEnqueuer;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;,
        Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/flutter/plugins/firebase/messaging/JobIntentService$ComponentNameWithWakeful;",
            "Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mJobImpl:Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mStopped:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mDestroyed:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 15
    .line 16
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V
    .locals 3

    if-eqz p3, :cond_1

    .line 2
    sget-object v0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, p1, v1, p2, p4}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p2}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->ensureJobId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v2, p3}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    .line 6
    :try_start_2
    invoke-static {p0, p1, v1, p2, p4}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p3}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    throw v2

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3, p4}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/messaging/JobIntentService$ComponentNameWithWakeful;

    .line 2
    .line 3
    invoke-direct {v0, p1, p4}, Lio/flutter/plugins/firebase/messaging/JobIntentService$ComponentNameWithWakeful;-><init>(Landroid/content/ComponentName;Z)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/messaging/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x1a

    .line 19
    .line 20
    if-lt v2, v3, :cond_1

    .line 21
    .line 22
    if-nez p4, :cond_1

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobWorkEnqueuer;

    .line 27
    .line 28
    invoke-direct {p2, p0, p1, p3}, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p1, "Can\'t be here without a job id"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p2, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkEnqueuer;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    move-object v2, p2

    .line 46
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v2
.end method


# virtual methods
.method dequeueWork()Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mJobImpl:Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;->dequeueWork()Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lio/flutter/plugins/firebase/messaging/JobIntentService$GenericWorkItem;

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-object v1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method doStopCurrentWork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mStopped:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->onStopCurrentWork()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;-><init>(Lio/flutter/plugins/firebase/messaging/JobIntentService;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 11
    .line 12
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;->execute()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mStopped:Z

    .line 2
    .line 3
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mJobImpl:Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lio/flutter/plugins/firebase/messaging/JobIntentService$JobServiceEngineImpl;-><init>(Lio/flutter/plugins/firebase/messaging/JobIntentService;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mJobImpl:Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatJobEngine;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p0, v0, v2, v2, v1}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 36
    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->doStopCurrentWork()Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    iput-boolean v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mDestroyed:Z

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkItem;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {v1, p0, p1, p3}, Lio/flutter/plugins/firebase/messaging/JobIntentService$CompatWorkItem;-><init>(Lio/flutter/plugins/firebase/messaging/JobIntentService;Landroid/content/Intent;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 29
    .line 30
    .line 31
    monitor-exit p2

    .line 32
    const/4 p1, 0x3

    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCurProcessor:Lio/flutter/plugins/firebase/messaging/JobIntentService$CommandProcessor;

    .line 8
    .line 9
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lio/flutter/plugins/firebase/messaging/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mDestroyed:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/JobIntentService;->mCompatWorkEnqueuer:Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/flutter/plugins/firebase/messaging/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1

    .line 38
    :cond_2
    :goto_1
    return-void
.end method
