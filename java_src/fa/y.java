package fa;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Handler;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface y {
    void a(List list, CameraCaptureSession.StateCallback stateCallback, Handler handler);

    void b(SessionConfiguration sessionConfiguration);

    CaptureRequest.Builder c(int i10);

    void close();
}
