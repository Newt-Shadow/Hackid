package i6;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.o0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.measurement.internal.ae;
import com.google.android.gms.measurement.internal.ud;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.List;
/* loaded from: classes.dex */
public abstract class d extends o0 implements e {
    public d() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        k kVar = null;
        h hVar = null;
        switch (i10) {
            case 1:
                p0.f(parcel);
                b0((com.google.android.gms.measurement.internal.g0) p0.b(parcel, com.google.android.gms.measurement.internal.g0.CREATOR), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 2:
                p0.f(parcel);
                s0((ud) p0.b(parcel, ud.CREATOR), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 3:
            case 8:
            case Build.API_LEVELS.API_22 /* 22 */:
            case Build.API_LEVELS.API_23 /* 23 */:
            case Build.API_LEVELS.API_28 /* 28 */:
            default:
                return false;
            case 4:
                p0.f(parcel);
                G0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 5:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                p0.f(parcel);
                w((com.google.android.gms.measurement.internal.g0) p0.b(parcel, com.google.android.gms.measurement.internal.g0.CREATOR), readString, readString2);
                parcel2.writeNoException();
                break;
            case 6:
                p0.f(parcel);
                e0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 7:
                boolean a10 = p0.a(parcel);
                p0.f(parcel);
                List b12 = b1((ae) p0.b(parcel, ae.CREATOR), a10);
                parcel2.writeNoException();
                parcel2.writeTypedList(b12);
                break;
            case 9:
                String readString3 = parcel.readString();
                p0.f(parcel);
                byte[] m02 = m0((com.google.android.gms.measurement.internal.g0) p0.b(parcel, com.google.android.gms.measurement.internal.g0.CREATOR), readString3);
                parcel2.writeNoException();
                parcel2.writeByteArray(m02);
                break;
            case 10:
                long readLong = parcel.readLong();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                p0.f(parcel);
                F(readLong, readString4, readString5, readString6);
                parcel2.writeNoException();
                break;
            case 11:
                p0.f(parcel);
                String U0 = U0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(U0);
                break;
            case 12:
                p0.f(parcel);
                o((com.google.android.gms.measurement.internal.i) p0.b(parcel, com.google.android.gms.measurement.internal.i.CREATOR), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 13:
                p0.f(parcel);
                o0((com.google.android.gms.measurement.internal.i) p0.b(parcel, com.google.android.gms.measurement.internal.i.CREATOR));
                parcel2.writeNoException();
                break;
            case 14:
                p0.f(parcel);
                List P0 = P0(parcel.readString(), parcel.readString(), p0.a(parcel), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(P0);
                break;
            case 15:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                boolean a11 = p0.a(parcel);
                p0.f(parcel);
                List l10 = l(readString7, readString8, readString9, a11);
                parcel2.writeNoException();
                parcel2.writeTypedList(l10);
                break;
            case 16:
                p0.f(parcel);
                List V0 = V0(parcel.readString(), parcel.readString(), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(V0);
                break;
            case 17:
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                p0.f(parcel);
                List J = J(readString10, readString11, readString12);
                parcel2.writeNoException();
                parcel2.writeTypedList(J);
                break;
            case 18:
                p0.f(parcel);
                H((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case C1415p9.C /* 19 */:
                p0.f(parcel);
                w0((Bundle) p0.b(parcel, Bundle.CREATOR), (ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 20:
                p0.f(parcel);
                a1((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 21:
                p0.f(parcel);
                a t02 = t0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                if (t02 == null) {
                    parcel2.writeInt(0);
                    break;
                } else {
                    parcel2.writeInt(1);
                    t02.writeToParcel(parcel2, 1);
                    break;
                }
            case Build.API_LEVELS.API_24 /* 24 */:
                p0.f(parcel);
                List X = X((ae) p0.b(parcel, ae.CREATOR), (Bundle) p0.b(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(X);
                break;
            case 25:
                p0.f(parcel);
                T((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 26:
                p0.f(parcel);
                g0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 27:
                p0.f(parcel);
                L0((ae) p0.b(parcel, ae.CREATOR));
                parcel2.writeNoException();
                break;
            case 29:
                ae aeVar = (ae) p0.b(parcel, ae.CREATOR);
                g0 g0Var = (g0) p0.b(parcel, g0.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    if (queryLocalInterface instanceof k) {
                        kVar = (k) queryLocalInterface;
                    } else {
                        kVar = new i(readStrongBinder);
                    }
                }
                p0.f(parcel);
                O(aeVar, g0Var, kVar);
                parcel2.writeNoException();
                break;
            case Build.API_LEVELS.API_30 /* 30 */:
                p0.f(parcel);
                k0((ae) p0.b(parcel, ae.CREATOR), (com.google.android.gms.measurement.internal.g) p0.b(parcel, com.google.android.gms.measurement.internal.g.CREATOR));
                parcel2.writeNoException();
                break;
            case Build.API_LEVELS.API_31 /* 31 */:
                ae aeVar2 = (ae) p0.b(parcel, ae.CREATOR);
                Bundle bundle = (Bundle) p0.b(parcel, Bundle.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    if (queryLocalInterface2 instanceof h) {
                        hVar = (h) queryLocalInterface2;
                    } else {
                        hVar = new f(readStrongBinder2);
                    }
                }
                p0.f(parcel);
                t(aeVar2, bundle, hVar);
                parcel2.writeNoException();
                break;
        }
        return true;
    }
}
