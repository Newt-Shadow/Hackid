package b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import m2.b;
import m2.c;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: b5.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0073a extends b implements a {

        /* renamed from: b5.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0074a extends m2.a implements a {
            C0074a(IBinder iBinder) {
                super(iBinder);
            }

            @Override // b5.a
            public final Bundle R(Bundle bundle) {
                Parcel k10 = k();
                c.b(k10, bundle);
                Parcel e12 = e1(k10);
                Bundle bundle2 = (Bundle) c.a(e12, Bundle.CREATOR);
                e12.recycle();
                return bundle2;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (queryLocalInterface instanceof a) {
                return (a) queryLocalInterface;
            }
            return new C0074a(iBinder);
        }
    }

    Bundle R(Bundle bundle);
}
