package fa;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
/* loaded from: classes.dex */
public class h0 implements e0 {

    /* renamed from: a  reason: collision with root package name */
    private final CameraCharacteristics f15961a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15962b;

    public h0(String str, CameraManager cameraManager) {
        this.f15962b = str;
        this.f15961a = cameraManager.getCameraCharacteristics(str);
    }

    @Override // fa.e0
    public Integer a() {
        return (Integer) this.f15961a.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
    }

    @Override // fa.e0
    public double b() {
        Rational rational = (Rational) this.f15961a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
        if (rational == null) {
            return 0.0d;
        }
        return rational.doubleValue();
    }

    @Override // fa.e0
    public Boolean c() {
        return (Boolean) this.f15961a.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
    }

    @Override // fa.e0
    public int d() {
        return ((Integer) this.f15961a.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue();
    }

    @Override // fa.e0
    public Float e() {
        CameraCharacteristics.Key key;
        CameraCharacteristics cameraCharacteristics = this.f15961a;
        key = CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE;
        return (Float) ((Range) cameraCharacteristics.get(key)).getLower();
    }

    @Override // fa.e0
    public Rect f() {
        return (Rect) this.f15961a.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE);
    }

    @Override // fa.e0
    public Range[] g() {
        return (Range[]) this.f15961a.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
    }

    @Override // fa.e0
    public Float h() {
        return (Float) this.f15961a.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
    }

    @Override // fa.e0
    public Float i() {
        CameraCharacteristics.Key key;
        CameraCharacteristics cameraCharacteristics = this.f15961a;
        key = CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE;
        return (Float) ((Range) cameraCharacteristics.get(key)).getUpper();
    }

    @Override // fa.e0
    public int j() {
        return ((Integer) this.f15961a.get(CameraCharacteristics.LENS_FACING)).intValue();
    }

    @Override // fa.e0
    public int[] k() {
        return (int[]) this.f15961a.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES);
    }

    @Override // fa.e0
    public Range l() {
        return (Range) this.f15961a.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
    }

    @Override // fa.e0
    public Rect m() {
        return (Rect) this.f15961a.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
    }

    @Override // fa.e0
    public int n() {
        return ((Integer) this.f15961a.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
    }

    @Override // fa.e0
    public int[] o() {
        return (int[]) this.f15961a.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
    }

    @Override // fa.e0
    public int[] p() {
        CameraCharacteristics.Key key;
        CameraCharacteristics cameraCharacteristics = this.f15961a;
        key = CameraCharacteristics.DISTORTION_CORRECTION_AVAILABLE_MODES;
        return (int[]) cameraCharacteristics.get(key);
    }

    @Override // fa.e0
    public Float q() {
        return (Float) this.f15961a.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE);
    }

    @Override // fa.e0
    public Size r() {
        return (Size) this.f15961a.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
    }

    @Override // fa.e0
    public Integer s() {
        return (Integer) this.f15961a.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
    }

    @Override // fa.e0
    public String t() {
        return this.f15962b;
    }
}
