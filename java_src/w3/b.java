package w3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.k2;
import t3.a;
import y4.q0;
/* loaded from: classes.dex */
public class b implements a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f31733a;

    /* renamed from: b  reason: collision with root package name */
    public final String f31734b;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(String str, String str2) {
        this.f31733a = str;
        this.f31734b = str2;
    }

    @Override // t3.a.b
    public void B(k2.b bVar) {
        String str = this.f31733a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c10 = 0;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c10 = 1;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                bVar.N(this.f31734b);
                return;
            case 1:
                bVar.m0(this.f31734b);
                return;
            case 2:
                bVar.U(this.f31734b);
                return;
            case 3:
                bVar.M(this.f31734b);
                return;
            case 4:
                bVar.O(this.f31734b);
                return;
            default:
                return;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f31733a.equals(bVar.f31733a) && this.f31734b.equals(bVar.f31734b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.f31733a.hashCode()) * 31) + this.f31734b.hashCode();
    }

    public String toString() {
        return "VC: " + this.f31733a + "=" + this.f31734b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f31733a);
        parcel.writeString(this.f31734b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Parcel parcel) {
        this.f31733a = (String) q0.j(parcel.readString());
        this.f31734b = (String) q0.j(parcel.readString());
    }
}
