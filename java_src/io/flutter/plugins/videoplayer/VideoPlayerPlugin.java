package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.util.LongSparseArray;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugins.videoplayer.Messages;
import io.flutter.view.TextureRegistry;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2.dex */
public class VideoPlayerPlugin implements FlutterPlugin, Messages.AndroidVideoPlayerApi {
    private static final String TAG = "VideoPlayerPlugin";
    private FlutterState flutterState;
    private final LongSparseArray<VideoPlayer> videoPlayers = new LongSparseArray<>();
    private final VideoPlayerOptions options = new VideoPlayerOptions();

    /* loaded from: classes2.dex */
    private static final class FlutterState {
        final Context applicationContext;
        final BinaryMessenger binaryMessenger;
        final KeyForAssetFn keyForAsset;
        final KeyForAssetAndPackageName keyForAssetAndPackageName;
        final TextureRegistry textureRegistry;

        FlutterState(Context context, BinaryMessenger binaryMessenger, KeyForAssetFn keyForAssetFn, KeyForAssetAndPackageName keyForAssetAndPackageName, TextureRegistry textureRegistry) {
            this.applicationContext = context;
            this.binaryMessenger = binaryMessenger;
            this.keyForAsset = keyForAssetFn;
            this.keyForAssetAndPackageName = keyForAssetAndPackageName;
            this.textureRegistry = textureRegistry;
        }

        void startListening(VideoPlayerPlugin videoPlayerPlugin, BinaryMessenger binaryMessenger) {
            Messages.AndroidVideoPlayerApi.setup(binaryMessenger, videoPlayerPlugin);
        }

        void stopListening(BinaryMessenger binaryMessenger) {
            Messages.AndroidVideoPlayerApi.setup(binaryMessenger, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface KeyForAssetAndPackageName {
        String get(String str, String str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface KeyForAssetFn {
        String get(String str);
    }

    private void disposeAllPlayers() {
        for (int i10 = 0; i10 < this.videoPlayers.size(); i10++) {
            this.videoPlayers.valueAt(i10).dispose();
        }
        this.videoPlayers.clear();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public Messages.TextureMessage create(Messages.CreateMessage createMessage) {
        VideoPlayer videoPlayer;
        String str;
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = this.flutterState.textureRegistry.createSurfaceTexture();
        BinaryMessenger binaryMessenger = this.flutterState.binaryMessenger;
        EventChannel eventChannel = new EventChannel(binaryMessenger, "flutter.io/videoPlayer/videoEvents" + createSurfaceTexture.id());
        if (createMessage.getAsset() != null) {
            if (createMessage.getPackageName() != null) {
                str = this.flutterState.keyForAssetAndPackageName.get(createMessage.getAsset(), createMessage.getPackageName());
            } else {
                str = this.flutterState.keyForAsset.get(createMessage.getAsset());
            }
            Context context = this.flutterState.applicationContext;
            videoPlayer = new VideoPlayer(context, eventChannel, createSurfaceTexture, "asset:///" + str, null, new HashMap(), this.options);
        } else {
            videoPlayer = new VideoPlayer(this.flutterState.applicationContext, eventChannel, createSurfaceTexture, createMessage.getUri(), createMessage.getFormatHint(), createMessage.getHttpHeaders(), this.options);
        }
        this.videoPlayers.put(createSurfaceTexture.id(), videoPlayer);
        return new Messages.TextureMessage.Builder().setTextureId(Long.valueOf(createSurfaceTexture.id())).build();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void dispose(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).dispose();
        this.videoPlayers.remove(textureMessage.getTextureId().longValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void initialize() {
        disposeAllPlayers();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        FlutterInjector instance = FlutterInjector.instance();
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        final FlutterLoader flutterLoader = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader);
        KeyForAssetFn keyForAssetFn = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.l
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                return FlutterLoader.this.getLookupKeyForAsset(str);
            }
        };
        final FlutterLoader flutterLoader2 = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader2);
        FlutterState flutterState = new FlutterState(applicationContext, binaryMessenger, keyForAssetFn, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.m
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                return FlutterLoader.this.getLookupKeyForAsset(str, str2);
            }
        }, flutterPluginBinding.getTextureRegistry());
        this.flutterState = flutterState;
        flutterState.startListening(this, flutterPluginBinding.getBinaryMessenger());
    }

    public void onDestroy() {
        disposeAllPlayers();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.flutterState == null) {
            Log.wtf(TAG, "Detached from the engine before registering to it.");
        }
        this.flutterState.stopListening(flutterPluginBinding.getBinaryMessenger());
        this.flutterState = null;
        onDestroy();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void pause(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).pause();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void play(Messages.TextureMessage textureMessage) {
        this.videoPlayers.get(textureMessage.getTextureId().longValue()).play();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public Messages.PositionMessage position(Messages.TextureMessage textureMessage) {
        VideoPlayer videoPlayer = this.videoPlayers.get(textureMessage.getTextureId().longValue());
        Messages.PositionMessage build = new Messages.PositionMessage.Builder().setPosition(Long.valueOf(videoPlayer.getPosition())).setTextureId(textureMessage.getTextureId()).build();
        videoPlayer.sendBufferingUpdate();
        return build;
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void seekTo(Messages.PositionMessage positionMessage) {
        this.videoPlayers.get(positionMessage.getTextureId().longValue()).seekTo(positionMessage.getPosition().intValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setLooping(Messages.LoopingMessage loopingMessage) {
        this.videoPlayers.get(loopingMessage.getTextureId().longValue()).setLooping(loopingMessage.getIsLooping().booleanValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setMixWithOthers(Messages.MixWithOthersMessage mixWithOthersMessage) {
        this.options.mixWithOthers = mixWithOthersMessage.getMixWithOthers().booleanValue();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setPlaybackSpeed(Messages.PlaybackSpeedMessage playbackSpeedMessage) {
        this.videoPlayers.get(playbackSpeedMessage.getTextureId().longValue()).setPlaybackSpeed(playbackSpeedMessage.getSpeed().doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setVolume(Messages.VolumeMessage volumeMessage) {
        this.videoPlayers.get(volumeMessage.getTextureId().longValue()).setVolume(volumeMessage.getVolume().doubleValue());
    }
}
