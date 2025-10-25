package g6;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class q extends d6.o implements r {
    public static r d(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        if (queryLocalInterface instanceof r) {
            return (r) queryLocalInterface;
        }
        return new p(iBinder);
    }
}
