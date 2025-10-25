package b4;

import android.os.Parcel;
import android.os.Parcelable;
import w3.b;
/* loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new C0072a();

    /* renamed from: b4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0072a implements Parcelable.Creator {
        C0072a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(String str, String str2) {
        super(str, str2);
    }

    a(Parcel parcel) {
        super(parcel);
    }
}
