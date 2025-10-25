package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.i0;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k0 implements Parcelable {
    public static final Parcelable.Creator<k0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    ArrayList f2694a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList f2695b;

    /* renamed from: c  reason: collision with root package name */
    b[] f2696c;

    /* renamed from: d  reason: collision with root package name */
    int f2697d;

    /* renamed from: e  reason: collision with root package name */
    String f2698e;

    /* renamed from: f  reason: collision with root package name */
    ArrayList f2699f;

    /* renamed from: g  reason: collision with root package name */
    ArrayList f2700g;

    /* renamed from: h  reason: collision with root package name */
    ArrayList f2701h;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public k0 createFromParcel(Parcel parcel) {
            return new k0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public k0[] newArray(int i10) {
            return new k0[i10];
        }
    }

    public k0() {
        this.f2698e = null;
        this.f2699f = new ArrayList();
        this.f2700g = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f2694a);
        parcel.writeStringList(this.f2695b);
        parcel.writeTypedArray(this.f2696c, i10);
        parcel.writeInt(this.f2697d);
        parcel.writeString(this.f2698e);
        parcel.writeStringList(this.f2699f);
        parcel.writeTypedList(this.f2700g);
        parcel.writeTypedList(this.f2701h);
    }

    public k0(Parcel parcel) {
        this.f2698e = null;
        this.f2699f = new ArrayList();
        this.f2700g = new ArrayList();
        this.f2694a = parcel.createStringArrayList();
        this.f2695b = parcel.createStringArrayList();
        this.f2696c = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f2697d = parcel.readInt();
        this.f2698e = parcel.readString();
        this.f2699f = parcel.createStringArrayList();
        this.f2700g = parcel.createTypedArrayList(c.CREATOR);
        this.f2701h = parcel.createTypedArrayList(i0.l.CREATOR);
    }
}
