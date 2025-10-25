package u5;

import android.os.IBinder;
import android.os.IInterface;
import c6.d;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: u5.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0341a extends d implements a {
        public AbstractBinderC0341a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a d(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            if (queryLocalInterface instanceof a) {
                return (a) queryLocalInterface;
            }
            return new c(iBinder);
        }
    }
}
