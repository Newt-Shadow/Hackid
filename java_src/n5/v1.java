package n5;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class v1 extends c6.a implements k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // n5.k
    public final Account e() {
        Parcel a10 = a(2, k());
        Account account = (Account) c6.e.a(a10, Account.CREATOR);
        a10.recycle();
        return account;
    }
}
