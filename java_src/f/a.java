package f;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final int f15541a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f15542b;

    /* renamed from: c  reason: collision with root package name */
    public static final b f15540c = new b(null);
    public static final Parcelable.Creator<a> CREATOR = new C0161a();

    /* renamed from: f.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0161a implements Parcelable.Creator {
        C0161a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            m.e(parcel, "parcel");
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i10) {
            if (i10 != -1) {
                if (i10 != 0) {
                    return String.valueOf(i10);
                }
                return "RESULT_CANCELED";
            }
            return "RESULT_OK";
        }
    }

    public a(int i10, Intent intent) {
        this.f15541a = i10;
        this.f15542b = intent;
    }

    public final Intent a() {
        return this.f15542b;
    }

    public final int b() {
        return this.f15541a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + f15540c.a(this.f15541a) + ", data=" + this.f15542b + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        int i11;
        m.e(dest, "dest");
        dest.writeInt(this.f15541a);
        if (this.f15542b == null) {
            i11 = 0;
        } else {
            i11 = 1;
        }
        dest.writeInt(i11);
        Intent intent = this.f15542b;
        if (intent != null) {
            intent.writeToParcel(dest, i10);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel));
        m.e(parcel, "parcel");
    }
}
