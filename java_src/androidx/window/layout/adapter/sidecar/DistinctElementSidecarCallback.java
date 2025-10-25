package androidx.window.layout.adapter.sidecar;

import android.os.IBinder;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class DistinctElementSidecarCallback implements SidecarInterface.SidecarCallback {

    /* renamed from: b  reason: collision with root package name */
    private SidecarDeviceState f3637b;

    /* renamed from: d  reason: collision with root package name */
    private final w1.a f3639d;

    /* renamed from: e  reason: collision with root package name */
    private final SidecarInterface.SidecarCallback f3640e;

    /* renamed from: a  reason: collision with root package name */
    private final Object f3636a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Map f3638c = new WeakHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DistinctElementSidecarCallback(w1.a aVar, SidecarInterface.SidecarCallback sidecarCallback) {
        this.f3639d = aVar;
        this.f3640e = sidecarCallback;
    }

    public void onDeviceStateChanged(SidecarDeviceState sidecarDeviceState) {
        if (sidecarDeviceState == null) {
            return;
        }
        synchronized (this.f3636a) {
            if (this.f3639d.a(this.f3637b, sidecarDeviceState)) {
                return;
            }
            this.f3637b = sidecarDeviceState;
            this.f3640e.onDeviceStateChanged(sidecarDeviceState);
        }
    }

    public void onWindowLayoutChanged(IBinder iBinder, SidecarWindowLayoutInfo sidecarWindowLayoutInfo) {
        synchronized (this.f3636a) {
            if (this.f3639d.d((SidecarWindowLayoutInfo) this.f3638c.get(iBinder), sidecarWindowLayoutInfo)) {
                return;
            }
            this.f3638c.put(iBinder, sidecarWindowLayoutInfo);
            this.f3640e.onWindowLayoutChanged(iBinder, sidecarWindowLayoutInfo);
        }
    }
}
