package io.flutter.embedding.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.os.Build;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class AndroidTouchProcessor {
    static final int BYTES_PER_FIELD = 8;
    static final int DEFAULT_HORIZONTAL_SCROLL_FACTOR = 48;
    static final int DEFAULT_VERTICAL_SCROLL_FACTOR = 48;
    private static final Matrix IDENTITY_TRANSFORM = new Matrix();
    private static final int IMPLICIT_VIEW_ID = 0;
    static final int POINTER_DATA_FIELD_COUNT = 36;
    private static final int POINTER_DATA_FLAG_BATCHED = 1;
    private static final String TAG = "AndroidTouchProcessor";
    private int cachedVerticalScrollFactor;
    private final FlutterRenderer renderer;
    private final boolean trackMotionEvents;
    private final Map<Integer, float[]> ongoingPans = new HashMap();
    private final MotionEventTracker motionEventTracker = MotionEventTracker.getInstance();

    /* loaded from: classes2.dex */
    public @interface PointerChange {
        public static final int ADD = 1;
        public static final int CANCEL = 0;
        public static final int DOWN = 4;
        public static final int HOVER = 3;
        public static final int MOVE = 5;
        public static final int PAN_ZOOM_END = 9;
        public static final int PAN_ZOOM_START = 7;
        public static final int PAN_ZOOM_UPDATE = 8;
        public static final int REMOVE = 2;
        public static final int UP = 6;
    }

    /* loaded from: classes2.dex */
    public @interface PointerDeviceKind {
        public static final int INVERTED_STYLUS = 3;
        public static final int MOUSE = 1;
        public static final int STYLUS = 2;
        public static final int TOUCH = 0;
        public static final int TRACKPAD = 4;
        public static final int UNKNOWN = 5;
    }

    /* loaded from: classes2.dex */
    public @interface PointerSignalKind {
        public static final int NONE = 0;
        public static final int SCALE = 3;
        public static final int SCROLL = 1;
        public static final int SCROLL_INERTIA_CANCEL = 2;
        public static final int UNKNOWN = 4;
    }

    public AndroidTouchProcessor(FlutterRenderer flutterRenderer, boolean z10) {
        this.renderer = flutterRenderer;
        this.trackMotionEvents = z10;
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i10, int i11, int i12, Matrix matrix, ByteBuffer byteBuffer) {
        addPointerForIndex(motionEvent, i10, i11, i12, matrix, byteBuffer, null);
    }

    private float getHorizontalScrollFactor(Context context) {
        float scaledHorizontalScrollFactor;
        if (Build.VERSION.SDK_INT >= 26) {
            scaledHorizontalScrollFactor = ViewConfiguration.get(context).getScaledHorizontalScrollFactor();
            return scaledHorizontalScrollFactor;
        }
        return getVerticalScrollFactorPre26(context);
    }

    @PointerChange
    private int getPointerChangeForAction(int i10) {
        if (i10 == 0) {
            return 4;
        }
        if (i10 == 1) {
            return 6;
        }
        if (i10 == 5) {
            return 4;
        }
        if (i10 == 6) {
            return 6;
        }
        if (i10 == 2) {
            return 5;
        }
        if (i10 == 7) {
            return 3;
        }
        if (i10 == 3) {
            return 0;
        }
        return i10 == 8 ? 3 : -1;
    }

    @PointerChange
    private int getPointerChangeForPanZoom(int i10) {
        if (i10 == 4) {
            return 7;
        }
        if (i10 == 5) {
            return 8;
        }
        return (i10 == 6 || i10 == 0) ? 9 : -1;
    }

    @PointerDeviceKind
    private int getPointerDeviceTypeForToolType(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return i10 != 4 ? 5 : 3;
                }
                return 1;
            }
            return 2;
        }
        return 0;
    }

    private float getVerticalScrollFactor(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return getVerticalScrollFactorAbove26(context);
        }
        return getVerticalScrollFactorPre26(context);
    }

    @TargetApi(26)
    private float getVerticalScrollFactorAbove26(Context context) {
        float scaledVerticalScrollFactor;
        scaledVerticalScrollFactor = ViewConfiguration.get(context).getScaledVerticalScrollFactor();
        return scaledVerticalScrollFactor;
    }

    private int getVerticalScrollFactorPre26(Context context) {
        if (this.cachedVerticalScrollFactor == 0) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                return 48;
            }
            this.cachedVerticalScrollFactor = (int) typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.cachedVerticalScrollFactor;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent, Context context) {
        boolean z10;
        boolean isFromSource = motionEvent.isFromSource(2);
        if (motionEvent.getActionMasked() != 7 && motionEvent.getActionMasked() != 8) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!isFromSource || !z10) {
            return false;
        }
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(motionEvent.getPointerCount() * 36 * 8);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, IDENTITY_TRANSFORM, allocateDirect, context);
        if (allocateDirect.position() % 288 == 0) {
            this.renderer.dispatchPointerDataPacket(allocateDirect, allocateDirect.position());
            return true;
        }
        throw new AssertionError("Packet position is not on field boundary.");
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent, IDENTITY_TRANSFORM);
    }

    private void addPointerForIndex(MotionEvent motionEvent, int i10, int i11, int i12, Matrix matrix, ByteBuffer byteBuffer, Context context) {
        long j10;
        int i13;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        InputDevice.MotionRange motionRange;
        int i14 = -1;
        if (i11 == -1) {
            return;
        }
        int pointerId = motionEvent.getPointerId(i10);
        int pointerDeviceTypeForToolType = getPointerDeviceTypeForToolType(motionEvent.getToolType(i10));
        float[] fArr = {motionEvent.getX(i10), motionEvent.getY(i10)};
        matrix.mapPoints(fArr);
        if (pointerDeviceTypeForToolType == 1) {
            j10 = motionEvent.getButtonState() & 31;
            if (j10 == 0 && motionEvent.getSource() == 8194 && i11 == 4) {
                this.ongoingPans.put(Integer.valueOf(pointerId), fArr);
            }
        } else {
            j10 = pointerDeviceTypeForToolType == 2 ? (motionEvent.getButtonState() >> 4) & 15 : 0L;
        }
        boolean containsKey = this.ongoingPans.containsKey(Integer.valueOf(pointerId));
        if (containsKey) {
            int pointerChangeForPanZoom = getPointerChangeForPanZoom(i11);
            if (pointerChangeForPanZoom == -1) {
                return;
            }
            i14 = pointerChangeForPanZoom;
        }
        long id2 = this.trackMotionEvents ? this.motionEventTracker.track(motionEvent).getId() : 0L;
        int i15 = motionEvent.getActionMasked() == 8 ? 1 : 0;
        int i16 = i14;
        byteBuffer.putLong(id2);
        byteBuffer.putLong(motionEvent.getEventTime() * 1000);
        if (containsKey) {
            i13 = i16;
            byteBuffer.putLong(i13);
            byteBuffer.putLong(4L);
        } else {
            i13 = i16;
            byteBuffer.putLong(i11);
            byteBuffer.putLong(pointerDeviceTypeForToolType);
        }
        byteBuffer.putLong(i15);
        byteBuffer.putLong(pointerId);
        byteBuffer.putLong(0L);
        if (containsKey) {
            float[] fArr2 = this.ongoingPans.get(Integer.valueOf(pointerId));
            byteBuffer.putDouble(fArr2[0]);
            byteBuffer.putDouble(fArr2[1]);
        } else {
            byteBuffer.putDouble(fArr[0]);
            byteBuffer.putDouble(fArr[1]);
        }
        byteBuffer.putDouble(0.0d);
        byteBuffer.putDouble(0.0d);
        byteBuffer.putLong(j10);
        byteBuffer.putLong(0L);
        byteBuffer.putLong(0L);
        byteBuffer.putDouble(motionEvent.getPressure(i10));
        if (motionEvent.getDevice() == null || (motionRange = motionEvent.getDevice().getMotionRange(2)) == null) {
            d10 = 1.0d;
            d11 = 0.0d;
        } else {
            d11 = motionRange.getMin();
            d10 = motionRange.getMax();
        }
        byteBuffer.putDouble(d11);
        byteBuffer.putDouble(d10);
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(24, i10));
            d12 = 0.0d;
            byteBuffer.putDouble(0.0d);
        } else {
            d12 = 0.0d;
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putDouble(motionEvent.getSize(i10));
        byteBuffer.putDouble(motionEvent.getToolMajor(i10));
        byteBuffer.putDouble(motionEvent.getToolMinor(i10));
        byteBuffer.putDouble(d12);
        byteBuffer.putDouble(d12);
        byteBuffer.putDouble(motionEvent.getAxisValue(8, i10));
        if (pointerDeviceTypeForToolType == 2) {
            byteBuffer.putDouble(motionEvent.getAxisValue(25, i10));
        } else {
            byteBuffer.putDouble(d12);
        }
        byteBuffer.putLong(i12);
        if (i15 == 1) {
            if (context != null) {
                d14 = getHorizontalScrollFactor(context);
                d15 = getVerticalScrollFactor(context);
            } else {
                d14 = 48.0d;
                d15 = 48.0d;
            }
            byteBuffer.putDouble(d14 * (-motionEvent.getAxisValue(10, i10)));
            byteBuffer.putDouble(d15 * (-motionEvent.getAxisValue(9, i10)));
        } else {
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        if (containsKey) {
            float[] fArr3 = this.ongoingPans.get(Integer.valueOf(pointerId));
            byteBuffer.putDouble(fArr[0] - fArr3[0]);
            byteBuffer.putDouble(fArr[1] - fArr3[1]);
            d13 = 0.0d;
        } else {
            d13 = 0.0d;
            byteBuffer.putDouble(0.0d);
            byteBuffer.putDouble(0.0d);
        }
        byteBuffer.putDouble(d13);
        byteBuffer.putDouble(d13);
        byteBuffer.putDouble(1.0d);
        byteBuffer.putDouble(d13);
        byteBuffer.putLong(0L);
        if (containsKey && i13 == 9) {
            this.ongoingPans.remove(Integer.valueOf(pointerId));
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent, Matrix matrix) {
        int actionMasked = motionEvent.getActionMasked();
        int pointerChangeForAction = getPointerChangeForAction(motionEvent.getActionMasked());
        boolean z10 = actionMasked == 0 || actionMasked == 5;
        boolean z11 = !z10 && (actionMasked == 1 || actionMasked == 6);
        int i10 = (z11 && getPointerDeviceTypeForToolType(motionEvent.getToolType(motionEvent.getActionIndex())) == 0) ? 1 : 0;
        int pointerCount = motionEvent.getPointerCount();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect((pointerCount + i10) * 36 * 8);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        if (z10) {
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, allocateDirect);
        } else if (z11) {
            for (int i11 = 0; i11 < pointerCount; i11++) {
                if (i11 != motionEvent.getActionIndex() && motionEvent.getToolType(i11) == 1) {
                    addPointerForIndex(motionEvent, i11, 5, 1, matrix, allocateDirect);
                }
            }
            addPointerForIndex(motionEvent, motionEvent.getActionIndex(), pointerChangeForAction, 0, matrix, allocateDirect);
            if (i10 != 0) {
                addPointerForIndex(motionEvent, motionEvent.getActionIndex(), 2, 0, matrix, allocateDirect);
            }
        } else {
            for (int i12 = 0; i12 < pointerCount; i12++) {
                addPointerForIndex(motionEvent, i12, pointerChangeForAction, 0, matrix, allocateDirect);
            }
        }
        if (allocateDirect.position() % 288 == 0) {
            this.renderer.dispatchPointerDataPacket(allocateDirect, allocateDirect.position());
            return true;
        }
        throw new AssertionError("Packet position is not on field boundary");
    }
}
