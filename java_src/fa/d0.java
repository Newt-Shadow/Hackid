package fa;

import android.app.Activity;
import io.flutter.plugin.common.PluginRegistry;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    boolean f15954a = false;

    /* loaded from: classes.dex */
    static final class a implements PluginRegistry.RequestPermissionsResultListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f15955a = false;

        /* renamed from: b  reason: collision with root package name */
        final c f15956b;

        a(c cVar) {
            this.f15956b = cVar;
        }

        @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
        public boolean onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
            if (this.f15955a || i10 != 9796) {
                return false;
            }
            this.f15955a = true;
            if (iArr.length != 0 && iArr[0] == 0) {
                if (iArr.length > 1 && iArr[1] != 0) {
                    this.f15956b.a("AudioAccessDenied", "Audio access permission was denied.");
                } else {
                    this.f15956b.a(null, null);
                }
            } else {
                this.f15956b.a("CameraAccessDenied", "Camera access permission was denied.");
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(PluginRegistry.RequestPermissionsResultListener requestPermissionsResultListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface c {
        void a(String str, String str2);
    }

    private boolean b(Activity activity) {
        if (androidx.core.content.a.a(activity, "android.permission.RECORD_AUDIO") == 0) {
            return true;
        }
        return false;
    }

    private boolean c(Activity activity) {
        if (androidx.core.content.a.a(activity, "android.permission.CAMERA") == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(c cVar, String str, String str2) {
        this.f15954a = false;
        cVar.a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(Activity activity, b bVar, boolean z10, final c cVar) {
        String[] strArr;
        if (this.f15954a) {
            cVar.a("CameraPermissionsRequestOngoing", "Another request is ongoing and multiple requests cannot be handled at once.");
        } else if (c(activity) && (!z10 || b(activity))) {
            cVar.a(null, null);
        } else {
            bVar.a(new a(new c() { // from class: fa.c0
                @Override // fa.d0.c
                public final void a(String str, String str2) {
                    d0.this.d(cVar, str, str2);
                }
            }));
            this.f15954a = true;
            if (z10) {
                strArr = new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"};
            } else {
                strArr = new String[]{"android.permission.CAMERA"};
            }
            androidx.core.app.b.v(activity, strArr, 9796);
        }
    }
}
