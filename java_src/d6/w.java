package d6;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    private static final ClassLoader f15048a = w.class.getClassLoader();

    public static void a(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static Parcelable b(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void c(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
