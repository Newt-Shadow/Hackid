.class Lio/flutter/plugins/videoplayer/VideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lb3/b0;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

.field final synthetic val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;


# direct methods
.method constructor <init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
