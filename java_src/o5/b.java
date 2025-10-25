package o5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class b {

    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(java.lang.String r3, android.os.Parcel r4) {
            /*
                r2 = this;
                int r0 = r4.dataPosition()
                int r4 = r4.dataSize()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                r1.append(r3)
                java.lang.String r3 = " Parcel: pos="
                r1.append(r3)
                r1.append(r0)
                java.lang.String r3 = " size="
                r1.append(r3)
                r1.append(r4)
                java.lang.String r3 = r1.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: o5.b.a.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    public static Bundle a(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + v10);
        return readBundle;
    }

    public static byte[] b(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + v10);
        return createByteArray;
    }

    public static int[] c(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + v10);
        return createIntArray;
    }

    public static ArrayList d(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int readInt = parcel.readInt();
        for (int i11 = 0; i11 < readInt; i11++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + v10);
        return arrayList;
    }

    public static Parcelable e(Parcel parcel, int i10, Parcelable.Creator creator) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + v10);
        return parcelable;
    }

    public static String f(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + v10);
        return readString;
    }

    public static ArrayList g(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + v10);
        return createStringArrayList;
    }

    public static Object[] h(Parcel parcel, int i10, Parcelable.Creator creator) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        Object[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + v10);
        return createTypedArray;
    }

    public static ArrayList i(Parcel parcel, int i10, Parcelable.Creator creator) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + v10);
        return createTypedArrayList;
    }

    public static void j(Parcel parcel, int i10) {
        if (parcel.dataPosition() == i10) {
            return;
        }
        throw new a("Overread allowed size end=" + i10, parcel);
    }

    public static int k(int i10) {
        return (char) i10;
    }

    public static boolean l(Parcel parcel, int i10) {
        z(parcel, i10, 4);
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    public static Boolean m(Parcel parcel, int i10) {
        boolean z10;
        int v10 = v(parcel, i10);
        if (v10 == 0) {
            return null;
        }
        y(parcel, i10, v10, 4);
        if (parcel.readInt() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    public static Double n(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        if (v10 == 0) {
            return null;
        }
        y(parcel, i10, v10, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float o(Parcel parcel, int i10) {
        z(parcel, i10, 4);
        return parcel.readFloat();
    }

    public static Float p(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        if (v10 == 0) {
            return null;
        }
        y(parcel, i10, v10, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int q(Parcel parcel) {
        return parcel.readInt();
    }

    public static IBinder r(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        int dataPosition = parcel.dataPosition();
        if (v10 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + v10);
        return readStrongBinder;
    }

    public static int s(Parcel parcel, int i10) {
        z(parcel, i10, 4);
        return parcel.readInt();
    }

    public static long t(Parcel parcel, int i10) {
        z(parcel, i10, 8);
        return parcel.readLong();
    }

    public static Long u(Parcel parcel, int i10) {
        int v10 = v(parcel, i10);
        if (v10 == 0) {
            return null;
        }
        y(parcel, i10, v10, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int v(Parcel parcel, int i10) {
        if ((i10 & (-65536)) != -65536) {
            return (char) (i10 >> 16);
        }
        return parcel.readInt();
    }

    public static void w(Parcel parcel, int i10) {
        parcel.setDataPosition(parcel.dataPosition() + v(parcel, i10));
    }

    public static int x(Parcel parcel) {
        int q10 = q(parcel);
        int v10 = v(parcel, q10);
        int k10 = k(q10);
        int dataPosition = parcel.dataPosition();
        if (k10 == 20293) {
            int i10 = v10 + dataPosition;
            if (i10 >= dataPosition && i10 <= parcel.dataSize()) {
                return i10;
            }
            throw new a("Size read is invalid start=" + dataPosition + " end=" + i10, parcel);
        }
        throw new a("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(q10))), parcel);
    }

    private static void y(Parcel parcel, int i10, int i11, int i12) {
        if (i11 == i12) {
            return;
        }
        String hexString = Integer.toHexString(i11);
        throw new a("Expected size " + i12 + " got " + i11 + " (0x" + hexString + ")", parcel);
    }

    private static void z(Parcel parcel, int i10, int i11) {
        int v10 = v(parcel, i10);
        if (v10 == i11) {
            return;
        }
        String hexString = Integer.toHexString(v10);
        throw new a("Expected size " + i11 + " got " + v10 + " (0x" + hexString + ")", parcel);
    }
}
