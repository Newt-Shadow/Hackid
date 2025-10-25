package h0;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class a implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final Parcelable f16711a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f16710b = new C0180a();
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* renamed from: h0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0180a extends a {
        C0180a() {
            super((C0180a) null);
        }
    }

    /* loaded from: classes.dex */
    class b implements Parcelable.ClassLoaderCreator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: b */
        public a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return a.f16710b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: c */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* synthetic */ a(C0180a c0180a) {
        this();
    }

    public final Parcelable a() {
        return this.f16711a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f16711a, i10);
    }

    private a() {
        this.f16711a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f16711a = parcelable == f16710b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f16711a = readParcelable == null ? f16710b : readParcelable;
    }
}
