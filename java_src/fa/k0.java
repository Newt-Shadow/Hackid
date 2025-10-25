package fa;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import android.util.Size;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import java.util.Arrays;
import java.util.function.IntPredicate;
/* loaded from: classes.dex */
public abstract class k0 {

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15966a;

        static {
            int[] iArr = new int[PlatformChannel.DeviceOrientation.values().length];
            f15966a = iArr;
            try {
                iArr[PlatformChannel.DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15966a[PlatformChannel.DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15966a[PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15966a[PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    static class b {
        public static MeteringRectangle a(int i10, int i11, int i12, int i13, int i14) {
            return new MeteringRectangle(i10, i11, i12, i13, i14);
        }
    }

    /* loaded from: classes.dex */
    static class c {
        public static Size a(int i10, int i11) {
            return new Size(i10, i11);
        }
    }

    public static MeteringRectangle b(Size size, double d10, double d11, PlatformChannel.DeviceOrientation deviceOrientation) {
        int i10 = a.f15966a[deviceOrientation.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 4) {
                    d10 = 1.0d - d10;
                    d11 = 1.0d - d11;
                }
            } else {
                double d12 = 1.0d - d11;
                d11 = d10;
                d10 = d12;
            }
        } else {
            double d13 = 1.0d - d10;
            d10 = d11;
            d11 = d13;
        }
        int round = (int) Math.round(size.getWidth() / 10.0d);
        int round2 = (int) Math.round(size.getHeight() / 10.0d);
        int round3 = ((int) Math.round(d10 * (size.getWidth() - 1))) - (round / 2);
        int round4 = ((int) Math.round(d11 * (size.getHeight() - 1))) - (round2 / 2);
        if (round3 < 0) {
            round3 = 0;
        }
        if (round4 < 0) {
            round4 = 0;
        }
        int width = (size.getWidth() - 1) - round;
        int height = (size.getHeight() - 1) - round2;
        if (round3 > width) {
            round3 = width;
        }
        if (round4 > height) {
            round4 = height;
        }
        return b.a(round3, round4, round, round2, 1);
    }

    public static Size c(e0 e0Var, CaptureRequest.Builder builder) {
        CaptureRequest.Key key;
        Rect f10;
        if (Build.VERSION.SDK_INT >= 28 && e(e0Var)) {
            key = CaptureRequest.DISTORTION_CORRECTION_MODE;
            Integer num = (Integer) builder.get(key);
            if (num != null && num.intValue() != 0) {
                f10 = e0Var.m();
            } else {
                f10 = e0Var.f();
            }
            return c.a(f10.width(), f10.height());
        }
        return e0Var.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(int i10) {
        return i10 != 0;
    }

    private static boolean e(e0 e0Var) {
        int[] p10 = e0Var.p();
        if (p10 == null) {
            p10 = new int[0];
        }
        if (Arrays.stream(p10).filter(new IntPredicate() { // from class: fa.j0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i10) {
                boolean d10;
                d10 = k0.d(i10);
                return d10;
            }
        }).count() <= 0) {
            return false;
        }
        return true;
    }
}
