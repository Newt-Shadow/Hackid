.class Lio/flutter/plugins/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/m3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lb3/b0;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isBuffering:Z

.field final synthetic this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

.field final synthetic val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

.field final synthetic val$exoPlayer:Lb3/b0;


# direct methods
.method constructor <init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lb3/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 4
    .line 5
    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lb3/b0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic onAudioAttributesChanged(Ld3/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onAudioAttributesChanged(Ld3/e;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Lb3/m3$b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onAvailableCommandsChanged(Lb3/m3$b;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCues(Lm4/e;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lb3/m3$d;->onCues(Lm4/e;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Lb3/y;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onDeviceInfoChanged(Lb3/y;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Lb3/m3;Lb3/m3$c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onEvents(Lb3/m3;Lb3/m3$c;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "event"

    .line 11
    .line 12
    const-string v2, "isPlayingStateUpdate"

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "isPlaying"

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Lb3/f2;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onMediaItemTransition(Lb3/f2;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Lb3/k2;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onMediaMetadataChanged(Lb3/k2;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Lt3/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onMetadata(Lt3/a;)V

    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lb3/l3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onPlaybackParametersChanged(Lb3/l3;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x3

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 18
    .line 19
    iget-boolean v3, v2, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    iput-boolean v0, v2, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendInitialized()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x4

    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "event"

    .line 38
    .line 39
    const-string v3, "completed"

    .line 40
    .line 41
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    if-eq p1, v1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public onPlayerError(Lb3/i3;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 3
    .line 4
    .line 5
    iget v0, p1, Lb3/i3;->a:I

    .line 6
    .line 7
    const/16 v1, 0x3ea

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lb3/b0;

    .line 12
    .line 13
    invoke-interface {p1}, Lb3/m3;->l()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lb3/b0;

    .line 17
    .line 18
    invoke-interface {p1}, Lb3/m3;->b()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Video player had error "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v2, "VideoError"

    .line 45
    .line 46
    invoke-virtual {v0, v2, p1, v1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Lb3/i3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onPlayerErrorChanged(Lb3/i3;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Lb3/k2;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onPlaylistMetadataChanged(Lb3/k2;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(Lb3/m3$e;Lb3/m3$e;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lb3/m3$d;->onPositionDiscontinuity(Lb3/m3$e;Lb3/m3$e;I)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-super {p0}, Lb3/m3$d;->onRenderedFirstFrame()V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onRepeatModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Lb3/m3$d;->onSeekProcessed()V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lb3/g4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb3/m3$d;->onTimelineChanged(Lb3/g4;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Lw4/f0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onTrackSelectionParametersChanged(Lw4/f0;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lb3/l4;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onTracksChanged(Lb3/l4;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Lz4/a0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onVideoSizeChanged(Lz4/a0;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb3/m3$d;->onVolumeChanged(F)V

    return-void
.end method

.method public setBuffering(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "bufferingStart"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "bufferingEnd"

    .line 20
    .line 21
    :goto_0
    const-string v1, "event"

    .line 22
    .line 23
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
