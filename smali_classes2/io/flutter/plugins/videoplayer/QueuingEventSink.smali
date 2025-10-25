.class final Lio/flutter/plugins/videoplayer/QueuingEventSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$EventSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;,
        Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;
    }
.end annotation


# instance fields
.field private delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private done:Z

.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 13
    .line 14
    return-void
.end method

.method private enqueue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private maybeFlush()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 27
    .line 28
    invoke-interface {v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->endOfStream()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of v2, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    check-cast v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 37
    .line 38
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 39
    .line 40
    iget-object v3, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->code:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->message:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->details:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {v2, v3, v4, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 51
    .line 52
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public endOfStream()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 14
    .line 15
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
