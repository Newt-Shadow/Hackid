package m4;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import o6.q;
/* loaded from: classes.dex */
public final class c {
    public q a(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return y4.c.b(b.J, (ArrayList) y4.a.e(readBundle.getParcelableArrayList("c")));
    }
}
