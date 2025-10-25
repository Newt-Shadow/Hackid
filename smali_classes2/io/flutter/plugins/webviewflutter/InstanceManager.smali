.class public Lio/flutter/plugins/webviewflutter/InstanceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;
    }
.end annotation


# static fields
.field private static final CLEAR_FINALIZED_WEAK_REFERENCES_INTERVAL:J = 0xbb8L

.field private static final MIN_HOST_CREATED_IDENTIFIER:J = 0x10000L

.field private static final TAG:Ljava/lang/String; = "InstanceManager"


# instance fields
.field private final finalizationListener:Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;

.field private final handler:Landroid/os/Handler;

.field private hasFinalizationListenerStopped:Z

.field private final identifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nextIdentifier:J

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final strongInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final weakInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weakReferencesToIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->handler:Landroid/os/Handler;

    .line 49
    .line 50
    const-wide/32 v1, 0x10000

    .line 51
    .line 52
    .line 53
    iput-wide v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->nextIdentifier:J

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->hasFinalizationListenerStopped:Z

    .line 57
    .line 58
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->finalizationListener:Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;

    .line 59
    .line 60
    new-instance p1, Lio/flutter/plugins/webviewflutter/z2;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lio/flutter/plugins/webviewflutter/z2;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v1, 0xbb8

    .line 66
    .line 67
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/webviewflutter/InstanceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->releaseAllFinalizedInstances()V

    return-void
.end method

.method private addInstance(Ljava/lang/Object;J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string p3, "Identifier has already been added: %d"

    .line 74
    .line 75
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string p3, "Identifier must be >= 0: %d"

    .line 94
    .line 95
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public static create(Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;)Lio/flutter/plugins/webviewflutter/InstanceManager;
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/InstanceManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private logWarningIfFinalizationListenerHasStopped()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->hasFinalizationListenerStopped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "InstanceManager"

    .line 8
    .line 9
    const-string v1, "The manager was used after calls to the FinalizationListener have been stopped."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private releaseAllFinalizedInstances()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->hasFinalizationListenerStopped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Long;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->finalizationListener:Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-interface {v1, v2, v3}, Lio/flutter/plugins/webviewflutter/InstanceManager$FinalizationListener;->onFinalize(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->handler:Landroid/os/Handler;

    .line 49
    .line 50
    new-instance v1, Lio/flutter/plugins/webviewflutter/z2;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lio/flutter/plugins/webviewflutter/z2;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0xbb8

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public addDartCreatedInstance(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addInstance(Ljava/lang/Object;J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public addHostCreatedInstance(Ljava/lang/Object;)J
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->containsInstance(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->nextIdentifier:J

    .line 11
    .line 12
    const-wide/16 v2, 0x1

    .line 13
    .line 14
    add-long/2addr v2, v0

    .line 15
    iput-wide v2, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->nextIdentifier:J

    .line 16
    .line 17
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/plugins/webviewflutter/InstanceManager;->addInstance(Ljava/lang/Object;J)V

    .line 18
    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Instance of "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " has already been added."

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakReferencesToIdentifiers:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public containsInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->identifiers:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Long;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public getInstance(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->weakInstances:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public hasFinalizationListenerStopped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->hasFinalizationListenerStopped:Z

    .line 2
    .line 3
    return v0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/InstanceManager;->logWarningIfFinalizationListenerHasStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->strongInstances:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public stopFinalizationListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/webviewflutter/z2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/flutter/plugins/webviewflutter/z2;-><init>(Lio/flutter/plugins/webviewflutter/InstanceManager;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/flutter/plugins/webviewflutter/InstanceManager;->hasFinalizationListenerStopped:Z

    .line 13
    .line 14
    return-void
.end method
