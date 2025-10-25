package n5;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class x0 extends c6.d implements y0 {
    public static y0 d(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        if (queryLocalInterface instanceof y0) {
            return (y0) queryLocalInterface;
        }
        return new w0(iBinder);
    }
}
