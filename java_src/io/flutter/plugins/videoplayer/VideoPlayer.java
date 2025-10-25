package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import b3.b0;
import b3.f2;
import b3.g4;
import b3.i3;
import b3.k2;
import b3.l3;
import b3.l4;
import b3.m3;
import b3.x1;
import b3.y;
import com.arthenica.ffmpegkit.MediaInformation;
import com.arthenica.ffmpegkit.StreamInformation;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.c;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.a;
import d3.e;
import d4.h0;
import d4.t;
import io.flutter.plugin.common.EventChannel;
import io.flutter.view.TextureRegistry;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w4.f0;
import x4.j;
import x4.r;
import x4.s;
import y4.q0;
import z4.a0;
/* loaded from: classes2.dex */
final class VideoPlayer {
    private static final String FORMAT_DASH = "dash";
    private static final String FORMAT_HLS = "hls";
    private static final String FORMAT_OTHER = "other";
    private static final String FORMAT_SS = "ss";
    private static final String USER_AGENT = "User-Agent";
    private final EventChannel eventChannel;
    private QueuingEventSink eventSink;
    private b0 exoPlayer;
    private s.b httpDataSourceFactory;
    boolean isInitialized;
    private final VideoPlayerOptions options;
    private Surface surface;
    private final TextureRegistry.SurfaceTextureEntry textureEntry;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoPlayer(Context context, EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, String str, String str2, Map<String, String> map, VideoPlayerOptions videoPlayerOptions) {
        this.isInitialized = false;
        this.httpDataSourceFactory = new s.b();
        this.eventChannel = eventChannel;
        this.textureEntry = surfaceTextureEntry;
        this.options = videoPlayerOptions;
        b0 e10 = new b0.b(context).e();
        Uri parse = Uri.parse(str);
        buildHttpDataSourceFactory(map);
        e10.B(buildMediaSource(parse, new r.a(context, this.httpDataSourceFactory), str2));
        e10.b();
        setUpVideoPlayer(e10, new QueuingEventSink());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private t buildMediaSource(Uri uri, j.a aVar, String str) {
        char c10;
        int i10;
        if (str == null) {
            i10 = q0.m0(uri);
        } else {
            switch (str.hashCode()) {
                case 3680:
                    if (str.equals(FORMAT_SS)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 103407:
                    if (str.equals(FORMAT_HLS)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3075986:
                    if (str.equals(FORMAT_DASH)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 106069776:
                    if (str.equals(FORMAT_OTHER)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    i10 = 1;
                    break;
                case 1:
                    i10 = 2;
                    break;
                case 2:
                    i10 = 0;
                    break;
                case 3:
                    i10 = 4;
                    break;
                default:
                    i10 = -1;
                    break;
            }
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 4) {
                        return new h0.b(aVar).b(f2.d(uri));
                    }
                    throw new IllegalStateException("Unsupported type: " + i10);
                }
                return new HlsMediaSource.Factory(aVar).a(f2.d(uri));
            }
            return new SsMediaSource.Factory(new a.C0096a(aVar), aVar).a(f2.d(uri));
        }
        return new DashMediaSource.Factory(new c.a(aVar), aVar).a(f2.d(uri));
    }

    private static void setAudioAttributes(b0 b0Var, boolean z10) {
        b0Var.d(new e.C0144e().c(3).a(), !z10);
    }

    private void setUpVideoPlayer(final b0 b0Var, final QueuingEventSink queuingEventSink) {
        this.exoPlayer = b0Var;
        this.eventSink = queuingEventSink;
        this.eventChannel.setStreamHandler(new EventChannel.StreamHandler() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.1
            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onCancel(Object obj) {
                queuingEventSink.setDelegate(null);
            }

            @Override // io.flutter.plugin.common.EventChannel.StreamHandler
            public void onListen(Object obj, EventChannel.EventSink eventSink) {
                queuingEventSink.setDelegate(eventSink);
            }
        });
        Surface surface = new Surface(this.textureEntry.surfaceTexture());
        this.surface = surface;
        b0Var.g(surface);
        setAudioAttributes(b0Var, this.options.mixWithOthers);
        b0Var.x(new m3.d() { // from class: io.flutter.plugins.videoplayer.VideoPlayer.2
            private boolean isBuffering = false;

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onAudioAttributesChanged(d3.e eVar) {
                super.onAudioAttributesChanged(eVar);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i10) {
                super.onAudioSessionIdChanged(i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(m3.b bVar) {
                super.onAvailableCommandsChanged(bVar);
            }

            @Override // b3.m3.d
            @Deprecated
            public /* bridge */ /* synthetic */ void onCues(List list) {
                super.onCues(list);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onDeviceInfoChanged(y yVar) {
                super.onDeviceInfoChanged(yVar);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z10) {
                super.onDeviceVolumeChanged(i10, z10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onEvents(m3 m3Var, m3.c cVar) {
                super.onEvents(m3Var, cVar);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z10) {
                super.onIsLoadingChanged(z10);
            }

            @Override // b3.m3.d
            public void onIsPlayingChanged(boolean z10) {
                if (queuingEventSink != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "isPlayingStateUpdate");
                    hashMap.put("isPlaying", Boolean.valueOf(z10));
                    queuingEventSink.success(hashMap);
                }
            }

            @Override // b3.m3.d
            @Deprecated
            public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z10) {
                super.onLoadingChanged(z10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j10) {
                super.onMaxSeekToPreviousPositionChanged(j10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onMediaItemTransition(f2 f2Var, int i10) {
                super.onMediaItemTransition(f2Var, i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onMediaMetadataChanged(k2 k2Var) {
                super.onMediaMetadataChanged(k2Var);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onMetadata(t3.a aVar) {
                super.onMetadata(aVar);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPlayWhenReadyChanged(boolean z10, int i10) {
                super.onPlayWhenReadyChanged(z10, i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(l3 l3Var) {
                super.onPlaybackParametersChanged(l3Var);
            }

            @Override // b3.m3.d
            public void onPlaybackStateChanged(int i10) {
                if (i10 == 2) {
                    setBuffering(true);
                    VideoPlayer.this.sendBufferingUpdate();
                } else if (i10 == 3) {
                    VideoPlayer videoPlayer = VideoPlayer.this;
                    if (!videoPlayer.isInitialized) {
                        videoPlayer.isInitialized = true;
                        videoPlayer.sendInitialized();
                    }
                } else if (i10 == 4) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "completed");
                    queuingEventSink.success(hashMap);
                }
                if (i10 != 2) {
                    setBuffering(false);
                }
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
                super.onPlaybackSuppressionReasonChanged(i10);
            }

            @Override // b3.m3.d
            public void onPlayerError(i3 i3Var) {
                setBuffering(false);
                if (i3Var.f4099a == 1002) {
                    b0Var.l();
                    b0Var.b();
                    return;
                }
                QueuingEventSink queuingEventSink2 = queuingEventSink;
                if (queuingEventSink2 != null) {
                    queuingEventSink2.error("VideoError", "Video player had error " + i3Var, null);
                }
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPlayerErrorChanged(i3 i3Var) {
                super.onPlayerErrorChanged(i3Var);
            }

            @Override // b3.m3.d
            @Deprecated
            public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z10, int i10) {
                super.onPlayerStateChanged(z10, i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(k2 k2Var) {
                super.onPlaylistMetadataChanged(k2Var);
            }

            @Override // b3.m3.d
            @Deprecated
            public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i10) {
                super.onPositionDiscontinuity(i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
                super.onRenderedFirstFrame();
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i10) {
                super.onRepeatModeChanged(i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j10) {
                super.onSeekBackIncrementChanged(j10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j10) {
                super.onSeekForwardIncrementChanged(j10);
            }

            @Override // b3.m3.d
            @Deprecated
            public /* bridge */ /* synthetic */ void onSeekProcessed() {
                super.onSeekProcessed();
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
                super.onShuffleModeEnabledChanged(z10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
                super.onSkipSilenceEnabledChanged(z10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
                super.onSurfaceSizeChanged(i10, i11);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onTimelineChanged(g4 g4Var, int i10) {
                super.onTimelineChanged(g4Var, i10);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(f0 f0Var) {
                super.onTrackSelectionParametersChanged(f0Var);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onTracksChanged(l4 l4Var) {
                super.onTracksChanged(l4Var);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onVideoSizeChanged(a0 a0Var) {
                super.onVideoSizeChanged(a0Var);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onVolumeChanged(float f10) {
                super.onVolumeChanged(f10);
            }

            public void setBuffering(boolean z10) {
                String str;
                if (this.isBuffering != z10) {
                    this.isBuffering = z10;
                    HashMap hashMap = new HashMap();
                    if (this.isBuffering) {
                        str = "bufferingStart";
                    } else {
                        str = "bufferingEnd";
                    }
                    hashMap.put("event", str);
                    queuingEventSink.success(hashMap);
                }
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onCues(m4.e eVar) {
                super.onCues(eVar);
            }

            @Override // b3.m3.d
            public /* bridge */ /* synthetic */ void onPositionDiscontinuity(m3.e eVar, m3.e eVar2, int i10) {
                super.onPositionDiscontinuity(eVar, eVar2, i10);
            }
        });
    }

    public void buildHttpDataSourceFactory(Map<String, String> map) {
        String str;
        boolean z10 = !map.isEmpty();
        if (z10 && map.containsKey(USER_AGENT)) {
            str = map.get(USER_AGENT);
        } else {
            str = "ExoPlayer";
        }
        this.httpDataSourceFactory.e(str).c(true);
        if (z10) {
            this.httpDataSourceFactory.d(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispose() {
        if (this.isInitialized) {
            this.exoPlayer.stop();
        }
        this.textureEntry.release();
        this.eventChannel.setStreamHandler(null);
        Surface surface = this.surface;
        if (surface != null) {
            surface.release();
        }
        b0 b0Var = this.exoPlayer;
        if (b0Var != null) {
            b0Var.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPosition() {
        return this.exoPlayer.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pause() {
        this.exoPlayer.q(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void play() {
        this.exoPlayer.q(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void seekTo(int i10) {
        this.exoPlayer.o(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendBufferingUpdate() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "bufferingUpdate");
        hashMap.put("values", Collections.singletonList(Arrays.asList(0, Long.valueOf(this.exoPlayer.s()))));
        this.eventSink.success(hashMap);
    }

    void sendInitialized() {
        if (this.isInitialized) {
            HashMap hashMap = new HashMap();
            hashMap.put("event", "initialized");
            hashMap.put(MediaInformation.KEY_DURATION, Long.valueOf(this.exoPlayer.getDuration()));
            if (this.exoPlayer.a() != null) {
                x1 a10 = this.exoPlayer.a();
                int i10 = a10.f4519q;
                int i11 = a10.f4520r;
                int i12 = a10.f4522t;
                if (i12 == 90 || i12 == 270) {
                    i10 = this.exoPlayer.a().f4520r;
                    i11 = this.exoPlayer.a().f4519q;
                }
                hashMap.put(StreamInformation.KEY_WIDTH, Integer.valueOf(i10));
                hashMap.put(StreamInformation.KEY_HEIGHT, Integer.valueOf(i11));
                if (i12 == 180) {
                    hashMap.put("rotationCorrection", Integer.valueOf(i12));
                }
            }
            this.eventSink.success(hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLooping(boolean z10) {
        int i10;
        b0 b0Var = this.exoPlayer;
        if (z10) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        b0Var.A(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaybackSpeed(double d10) {
        this.exoPlayer.c(new l3((float) d10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVolume(double d10) {
        this.exoPlayer.e((float) Math.max(0.0d, Math.min(1.0d, d10)));
    }

    VideoPlayer(b0 b0Var, EventChannel eventChannel, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, VideoPlayerOptions videoPlayerOptions, QueuingEventSink queuingEventSink, s.b bVar) {
        this.isInitialized = false;
        new s.b();
        this.eventChannel = eventChannel;
        this.textureEntry = surfaceTextureEntry;
        this.options = videoPlayerOptions;
        this.httpDataSourceFactory = bVar;
        setUpVideoPlayer(b0Var, queuingEventSink);
    }
}
