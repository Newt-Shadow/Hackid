package io.flutter.embedding.engine.systemchannels;

import com.arthenica.ffmpegkit.Chapter;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class PlatformViewsChannel2 {
    private static final String TAG = "PlatformViewsChannel2";
    private final MethodChannel channel;
    private PlatformViewsHandler handler;
    private final MethodChannel.MethodCallHandler parsingHandler;

    /* loaded from: classes2.dex */
    public static class PlatformViewCreationRequest {
        public final int direction;
        public final double logicalHeight;
        public final double logicalWidth;
        public final ByteBuffer params;
        public final int viewId;
        public final String viewType;

        public PlatformViewCreationRequest(int i10, String str, double d10, double d11, int i11, ByteBuffer byteBuffer) {
            this.viewId = i10;
            this.viewType = str;
            this.logicalWidth = d10;
            this.logicalHeight = d11;
            this.direction = i11;
            this.params = byteBuffer;
        }
    }

    /* loaded from: classes2.dex */
    public static class PlatformViewTouch {
        public final int action;
        public final int buttonState;
        public final int deviceId;
        public final Number downTime;
        public final int edgeFlags;
        public final Number eventTime;
        public final int flags;
        public final int metaState;
        public final long motionEventId;
        public final int pointerCount;
        public final Object rawPointerCoords;
        public final Object rawPointerPropertiesList;
        public final int source;
        public final int viewId;
        public final float xPrecision;
        public final float yPrecision;

        public PlatformViewTouch(int i10, Number number, Number number2, int i11, int i12, Object obj, Object obj2, int i13, int i14, float f10, float f11, int i15, int i16, int i17, int i18, long j10) {
            this.viewId = i10;
            this.downTime = number;
            this.eventTime = number2;
            this.action = i11;
            this.pointerCount = i12;
            this.rawPointerPropertiesList = obj;
            this.rawPointerCoords = obj2;
            this.metaState = i13;
            this.buttonState = i14;
            this.xPrecision = f10;
            this.yPrecision = f11;
            this.deviceId = i15;
            this.edgeFlags = i16;
            this.source = i17;
            this.flags = i18;
            this.motionEventId = j10;
        }
    }

    /* loaded from: classes2.dex */
    public interface PlatformViewsHandler {
        void clearFocus(int i10);

        void createPlatformView(PlatformViewCreationRequest platformViewCreationRequest);

        void dispose(int i10);

        boolean isSurfaceControlEnabled();

        void onTouch(PlatformViewTouch platformViewTouch);

        void setDirection(int i10, int i11);
    }

    public PlatformViewsChannel2(DartExecutor dartExecutor) {
        MethodChannel.MethodCallHandler methodCallHandler = new MethodChannel.MethodCallHandler() { // from class: io.flutter.embedding.engine.systemchannels.PlatformViewsChannel2.1
            private void clearFocus(MethodCall methodCall, MethodChannel.Result result) {
                try {
                    PlatformViewsChannel2.this.handler.clearFocus(((Integer) methodCall.arguments()).intValue());
                    result.success(null);
                } catch (IllegalStateException e10) {
                    result.error("error", PlatformViewsChannel2.detailedExceptionString(e10), null);
                }
            }

            private void create(MethodCall methodCall, MethodChannel.Result result) {
                ByteBuffer byteBuffer;
                Map map = (Map) methodCall.arguments();
                if (map.containsKey("params")) {
                    byteBuffer = ByteBuffer.wrap((byte[]) map.get("params"));
                } else {
                    byteBuffer = null;
                }
                try {
                    PlatformViewsChannel2.this.handler.createPlatformView(new PlatformViewCreationRequest(((Integer) map.get(Chapter.KEY_ID)).intValue(), (String) map.get("viewType"), 0.0d, 0.0d, ((Integer) map.get("direction")).intValue(), byteBuffer));
                    result.success(null);
                } catch (IllegalStateException e10) {
                    result.error("error", PlatformViewsChannel2.detailedExceptionString(e10), null);
                }
            }

            private void dispose(MethodCall methodCall, MethodChannel.Result result) {
                try {
                    PlatformViewsChannel2.this.handler.dispose(((Integer) ((Map) methodCall.arguments()).get(Chapter.KEY_ID)).intValue());
                    result.success(null);
                } catch (IllegalStateException e10) {
                    result.error("error", PlatformViewsChannel2.detailedExceptionString(e10), null);
                }
            }

            private void isSurfaceControlEnabled(MethodCall methodCall, MethodChannel.Result result) {
                result.success(Boolean.valueOf(PlatformViewsChannel2.this.handler.isSurfaceControlEnabled()));
            }

            private void setDirection(MethodCall methodCall, MethodChannel.Result result) {
                Map map = (Map) methodCall.arguments();
                try {
                    PlatformViewsChannel2.this.handler.setDirection(((Integer) map.get(Chapter.KEY_ID)).intValue(), ((Integer) map.get("direction")).intValue());
                    result.success(null);
                } catch (IllegalStateException e10) {
                    result.error("error", PlatformViewsChannel2.detailedExceptionString(e10), null);
                }
            }

            private void touch(MethodCall methodCall, MethodChannel.Result result) {
                MethodChannel.Result result2;
                List list = (List) methodCall.arguments();
                try {
                    PlatformViewsChannel2.this.handler.onTouch(new PlatformViewTouch(((Integer) list.get(0)).intValue(), (Number) list.get(1), (Number) list.get(2), ((Integer) list.get(3)).intValue(), ((Integer) list.get(4)).intValue(), list.get(5), list.get(6), ((Integer) list.get(7)).intValue(), ((Integer) list.get(8)).intValue(), (float) ((Double) list.get(9)).doubleValue(), (float) ((Double) list.get(10)).doubleValue(), ((Integer) list.get(11)).intValue(), ((Integer) list.get(12)).intValue(), ((Integer) list.get(13)).intValue(), ((Integer) list.get(14)).intValue(), ((Number) list.get(15)).longValue()));
                    result2 = result;
                } catch (IllegalStateException e10) {
                    e = e10;
                    result2 = result;
                }
                try {
                    result2.success(null);
                } catch (IllegalStateException e11) {
                    e = e11;
                    result2.error("error", PlatformViewsChannel2.detailedExceptionString(e), null);
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if (PlatformViewsChannel2.this.handler == null) {
                    return;
                }
                Log.v(PlatformViewsChannel2.TAG, "Received '" + methodCall.method + "' message.");
                String str = methodCall.method;
                str.hashCode();
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1352294148:
                        if (str.equals("create")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -756050293:
                        if (str.equals("clearFocus")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 110550847:
                        if (str.equals("touch")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 576796989:
                        if (str.equals("setDirection")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 751366695:
                        if (str.equals("isSurfaceControlEnabled")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1671767583:
                        if (str.equals("dispose")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        create(methodCall, result);
                        return;
                    case 1:
                        clearFocus(methodCall, result);
                        return;
                    case 2:
                        touch(methodCall, result);
                        return;
                    case 3:
                        setDirection(methodCall, result);
                        return;
                    case 4:
                        isSurfaceControlEnabled(methodCall, result);
                        return;
                    case 5:
                        dispose(methodCall, result);
                        return;
                    default:
                        result.notImplemented();
                        return;
                }
            }
        };
        this.parsingHandler = methodCallHandler;
        MethodChannel methodChannel = new MethodChannel(dartExecutor, "flutter/platform_views_2", StandardMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(methodCallHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String detailedExceptionString(Exception exc) {
        return Log.getStackTraceString(exc);
    }

    public void invokeViewFocused(int i10) {
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            return;
        }
        methodChannel.invokeMethod("viewFocused", Integer.valueOf(i10));
    }

    public void setPlatformViewsHandler(PlatformViewsHandler platformViewsHandler) {
        this.handler = platformViewsHandler;
    }
}
