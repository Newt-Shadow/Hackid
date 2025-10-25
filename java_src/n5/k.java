package n5;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public interface k extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends c6.d implements k {
        public static k d(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof k) {
                return (k) queryLocalInterface;
            }
            return new v1(iBinder);
        }
    }

    Account e();
}
