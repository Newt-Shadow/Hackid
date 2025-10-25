package io.flutter.plugins.videoplayer;

import android.util.Log;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.videoplayer.Messages;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public class Messages {

    /* loaded from: classes2.dex */
    public interface AndroidVideoPlayerApi {
        static MessageCodec<Object> getCodec() {
            return AndroidVideoPlayerApiCodec.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$0(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.initialize();
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$1(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, androidVideoPlayerApi.create((CreateMessage) ((ArrayList) obj).get(0)));
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$10(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.setMixWithOthers((MixWithOthersMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$2(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.dispose((TextureMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$3(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.setLooping((LoopingMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$4(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.setVolume((VolumeMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$5(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.setPlaybackSpeed((PlaybackSpeedMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$6(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.play((TextureMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$7(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                arrayList.add(0, androidVideoPlayerApi.position((TextureMessage) ((ArrayList) obj).get(0)));
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$8(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.seekTo((PositionMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$setup$9(AndroidVideoPlayerApi androidVideoPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
            ArrayList<Object> arrayList = new ArrayList<>();
            try {
                androidVideoPlayerApi.pause((TextureMessage) ((ArrayList) obj).get(0));
                arrayList.add(0, null);
            } catch (Throwable th) {
                arrayList = Messages.wrapError(th);
            }
            reply.reply(arrayList);
        }

        static void setup(BinaryMessenger binaryMessenger, final AndroidVideoPlayerApi androidVideoPlayerApi) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.initialize", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.a
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$0(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.create", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.d
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$1(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.dispose", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.e
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$2(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setLooping", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.f
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$3(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setVolume", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.g
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$4(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setPlaybackSpeed", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.h
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$5(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.play", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.i
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$6(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.position", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.j
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$7(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.seekTo", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.k
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$8(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.pause", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.b
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$9(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setMixWithOthers", getCodec());
            if (androidVideoPlayerApi != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.videoplayer.c
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        Messages.AndroidVideoPlayerApi.lambda$setup$10(Messages.AndroidVideoPlayerApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
        }

        TextureMessage create(CreateMessage createMessage);

        void dispose(TextureMessage textureMessage);

        void initialize();

        void pause(TextureMessage textureMessage);

        void play(TextureMessage textureMessage);

        PositionMessage position(TextureMessage textureMessage);

        void seekTo(PositionMessage positionMessage);

        void setLooping(LoopingMessage loopingMessage);

        void setMixWithOthers(MixWithOthersMessage mixWithOthersMessage);

        void setPlaybackSpeed(PlaybackSpeedMessage playbackSpeedMessage);

        void setVolume(VolumeMessage volumeMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AndroidVideoPlayerApiCodec extends StandardMessageCodec {
        public static final AndroidVideoPlayerApiCodec INSTANCE = new AndroidVideoPlayerApiCodec();

        private AndroidVideoPlayerApiCodec() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b10, ByteBuffer byteBuffer) {
            switch (b10) {
                case Byte.MIN_VALUE:
                    return CreateMessage.fromList((ArrayList) readValue(byteBuffer));
                case -127:
                    return LoopingMessage.fromList((ArrayList) readValue(byteBuffer));
                case -126:
                    return MixWithOthersMessage.fromList((ArrayList) readValue(byteBuffer));
                case -125:
                    return PlaybackSpeedMessage.fromList((ArrayList) readValue(byteBuffer));
                case -124:
                    return PositionMessage.fromList((ArrayList) readValue(byteBuffer));
                case -123:
                    return TextureMessage.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return VolumeMessage.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b10, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof CreateMessage) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, ((CreateMessage) obj).toList());
            } else if (obj instanceof LoopingMessage) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((LoopingMessage) obj).toList());
            } else if (obj instanceof MixWithOthersMessage) {
                byteArrayOutputStream.write(130);
                writeValue(byteArrayOutputStream, ((MixWithOthersMessage) obj).toList());
            } else if (obj instanceof PlaybackSpeedMessage) {
                byteArrayOutputStream.write(131);
                writeValue(byteArrayOutputStream, ((PlaybackSpeedMessage) obj).toList());
            } else if (obj instanceof PositionMessage) {
                byteArrayOutputStream.write(132);
                writeValue(byteArrayOutputStream, ((PositionMessage) obj).toList());
            } else if (obj instanceof TextureMessage) {
                byteArrayOutputStream.write(133);
                writeValue(byteArrayOutputStream, ((TextureMessage) obj).toList());
            } else if (obj instanceof VolumeMessage) {
                byteArrayOutputStream.write(134);
                writeValue(byteArrayOutputStream, ((VolumeMessage) obj).toList());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class CreateMessage {
        private String asset;
        private String formatHint;
        private Map<String, String> httpHeaders;
        private String packageName;
        private String uri;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private String asset;
            private String formatHint;
            private Map<String, String> httpHeaders;
            private String packageName;
            private String uri;

            public CreateMessage build() {
                CreateMessage createMessage = new CreateMessage();
                createMessage.setAsset(this.asset);
                createMessage.setUri(this.uri);
                createMessage.setPackageName(this.packageName);
                createMessage.setFormatHint(this.formatHint);
                createMessage.setHttpHeaders(this.httpHeaders);
                return createMessage;
            }

            public Builder setAsset(String str) {
                this.asset = str;
                return this;
            }

            public Builder setFormatHint(String str) {
                this.formatHint = str;
                return this;
            }

            public Builder setHttpHeaders(Map<String, String> map) {
                this.httpHeaders = map;
                return this;
            }

            public Builder setPackageName(String str) {
                this.packageName = str;
                return this;
            }

            public Builder setUri(String str) {
                this.uri = str;
                return this;
            }
        }

        CreateMessage() {
        }

        static CreateMessage fromList(ArrayList<Object> arrayList) {
            CreateMessage createMessage = new CreateMessage();
            createMessage.setAsset((String) arrayList.get(0));
            createMessage.setUri((String) arrayList.get(1));
            createMessage.setPackageName((String) arrayList.get(2));
            createMessage.setFormatHint((String) arrayList.get(3));
            createMessage.setHttpHeaders((Map) arrayList.get(4));
            return createMessage;
        }

        public String getAsset() {
            return this.asset;
        }

        public String getFormatHint() {
            return this.formatHint;
        }

        public Map<String, String> getHttpHeaders() {
            return this.httpHeaders;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public String getUri() {
            return this.uri;
        }

        public void setAsset(String str) {
            this.asset = str;
        }

        public void setFormatHint(String str) {
            this.formatHint = str;
        }

        public void setHttpHeaders(Map<String, String> map) {
            if (map != null) {
                this.httpHeaders = map;
                return;
            }
            throw new IllegalStateException("Nonnull field \"httpHeaders\" is null.");
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public void setUri(String str) {
            this.uri = str;
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(5);
            arrayList.add(this.asset);
            arrayList.add(this.uri);
            arrayList.add(this.packageName);
            arrayList.add(this.formatHint);
            arrayList.add(this.httpHeaders);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(String str, String str2, Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* loaded from: classes2.dex */
    public static final class LoopingMessage {
        private Boolean isLooping;
        private Long textureId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Boolean isLooping;
            private Long textureId;

            public LoopingMessage build() {
                LoopingMessage loopingMessage = new LoopingMessage();
                loopingMessage.setTextureId(this.textureId);
                loopingMessage.setIsLooping(this.isLooping);
                return loopingMessage;
            }

            public Builder setIsLooping(Boolean bool) {
                this.isLooping = bool;
                return this;
            }

            public Builder setTextureId(Long l10) {
                this.textureId = l10;
                return this;
            }
        }

        LoopingMessage() {
        }

        static LoopingMessage fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            LoopingMessage loopingMessage = new LoopingMessage();
            Object obj = arrayList.get(0);
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            loopingMessage.setTextureId(valueOf);
            loopingMessage.setIsLooping((Boolean) arrayList.get(1));
            return loopingMessage;
        }

        public Boolean getIsLooping() {
            return this.isLooping;
        }

        public Long getTextureId() {
            return this.textureId;
        }

        public void setIsLooping(Boolean bool) {
            if (bool != null) {
                this.isLooping = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"isLooping\" is null.");
        }

        public void setTextureId(Long l10) {
            if (l10 != null) {
                this.textureId = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"textureId\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.textureId);
            arrayList.add(this.isLooping);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class MixWithOthersMessage {
        private Boolean mixWithOthers;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Boolean mixWithOthers;

            public MixWithOthersMessage build() {
                MixWithOthersMessage mixWithOthersMessage = new MixWithOthersMessage();
                mixWithOthersMessage.setMixWithOthers(this.mixWithOthers);
                return mixWithOthersMessage;
            }

            public Builder setMixWithOthers(Boolean bool) {
                this.mixWithOthers = bool;
                return this;
            }
        }

        MixWithOthersMessage() {
        }

        static MixWithOthersMessage fromList(ArrayList<Object> arrayList) {
            MixWithOthersMessage mixWithOthersMessage = new MixWithOthersMessage();
            mixWithOthersMessage.setMixWithOthers((Boolean) arrayList.get(0));
            return mixWithOthersMessage;
        }

        public Boolean getMixWithOthers() {
            return this.mixWithOthers;
        }

        public void setMixWithOthers(Boolean bool) {
            if (bool != null) {
                this.mixWithOthers = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"mixWithOthers\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.mixWithOthers);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PlaybackSpeedMessage {
        private Double speed;
        private Long textureId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Double speed;
            private Long textureId;

            public PlaybackSpeedMessage build() {
                PlaybackSpeedMessage playbackSpeedMessage = new PlaybackSpeedMessage();
                playbackSpeedMessage.setTextureId(this.textureId);
                playbackSpeedMessage.setSpeed(this.speed);
                return playbackSpeedMessage;
            }

            public Builder setSpeed(Double d10) {
                this.speed = d10;
                return this;
            }

            public Builder setTextureId(Long l10) {
                this.textureId = l10;
                return this;
            }
        }

        PlaybackSpeedMessage() {
        }

        static PlaybackSpeedMessage fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            PlaybackSpeedMessage playbackSpeedMessage = new PlaybackSpeedMessage();
            Object obj = arrayList.get(0);
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            playbackSpeedMessage.setTextureId(valueOf);
            playbackSpeedMessage.setSpeed((Double) arrayList.get(1));
            return playbackSpeedMessage;
        }

        public Double getSpeed() {
            return this.speed;
        }

        public Long getTextureId() {
            return this.textureId;
        }

        public void setSpeed(Double d10) {
            if (d10 != null) {
                this.speed = d10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"speed\" is null.");
        }

        public void setTextureId(Long l10) {
            if (l10 != null) {
                this.textureId = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"textureId\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.textureId);
            arrayList.add(this.speed);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class PositionMessage {
        private Long position;
        private Long textureId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Long position;
            private Long textureId;

            public PositionMessage build() {
                PositionMessage positionMessage = new PositionMessage();
                positionMessage.setTextureId(this.textureId);
                positionMessage.setPosition(this.position);
                return positionMessage;
            }

            public Builder setPosition(Long l10) {
                this.position = l10;
                return this;
            }

            public Builder setTextureId(Long l10) {
                this.textureId = l10;
                return this;
            }
        }

        PositionMessage() {
        }

        static PositionMessage fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            long longValue2;
            PositionMessage positionMessage = new PositionMessage();
            Object obj = arrayList.get(0);
            Long l10 = null;
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            positionMessage.setTextureId(valueOf);
            Object obj2 = arrayList.get(1);
            if (obj2 != null) {
                if (obj2 instanceof Integer) {
                    longValue2 = ((Integer) obj2).intValue();
                } else {
                    longValue2 = ((Long) obj2).longValue();
                }
                l10 = Long.valueOf(longValue2);
            }
            positionMessage.setPosition(l10);
            return positionMessage;
        }

        public Long getPosition() {
            return this.position;
        }

        public Long getTextureId() {
            return this.textureId;
        }

        public void setPosition(Long l10) {
            if (l10 != null) {
                this.position = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"position\" is null.");
        }

        public void setTextureId(Long l10) {
            if (l10 != null) {
                this.textureId = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"textureId\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.textureId);
            arrayList.add(this.position);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class TextureMessage {
        private Long textureId;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Long textureId;

            public TextureMessage build() {
                TextureMessage textureMessage = new TextureMessage();
                textureMessage.setTextureId(this.textureId);
                return textureMessage;
            }

            public Builder setTextureId(Long l10) {
                this.textureId = l10;
                return this;
            }
        }

        TextureMessage() {
        }

        static TextureMessage fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            TextureMessage textureMessage = new TextureMessage();
            Object obj = arrayList.get(0);
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            textureMessage.setTextureId(valueOf);
            return textureMessage;
        }

        public Long getTextureId() {
            return this.textureId;
        }

        public void setTextureId(Long l10) {
            if (l10 != null) {
                this.textureId = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"textureId\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.textureId);
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static final class VolumeMessage {
        private Long textureId;
        private Double volume;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private Long textureId;
            private Double volume;

            public VolumeMessage build() {
                VolumeMessage volumeMessage = new VolumeMessage();
                volumeMessage.setTextureId(this.textureId);
                volumeMessage.setVolume(this.volume);
                return volumeMessage;
            }

            public Builder setTextureId(Long l10) {
                this.textureId = l10;
                return this;
            }

            public Builder setVolume(Double d10) {
                this.volume = d10;
                return this;
            }
        }

        VolumeMessage() {
        }

        static VolumeMessage fromList(ArrayList<Object> arrayList) {
            long longValue;
            Long valueOf;
            VolumeMessage volumeMessage = new VolumeMessage();
            Object obj = arrayList.get(0);
            if (obj == null) {
                valueOf = null;
            } else {
                if (obj instanceof Integer) {
                    longValue = ((Integer) obj).intValue();
                } else {
                    longValue = ((Long) obj).longValue();
                }
                valueOf = Long.valueOf(longValue);
            }
            volumeMessage.setTextureId(valueOf);
            volumeMessage.setVolume((Double) arrayList.get(1));
            return volumeMessage;
        }

        public Long getTextureId() {
            return this.textureId;
        }

        public Double getVolume() {
            return this.volume;
        }

        public void setTextureId(Long l10) {
            if (l10 != null) {
                this.textureId = l10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"textureId\" is null.");
        }

        public void setVolume(Double d10) {
            if (d10 != null) {
                this.volume = d10;
                return;
            }
            throw new IllegalStateException("Nonnull field \"volume\" is null.");
        }

        ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.textureId);
            arrayList.add(this.volume);
            return arrayList;
        }
    }

    protected static ArrayList<Object> wrapError(Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
        } else {
            arrayList.add(th.toString());
            arrayList.add(th.getClass().getSimpleName());
            arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        }
        return arrayList;
    }
}
