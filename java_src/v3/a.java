package v3;

import android.os.Parcel;
import android.os.Parcelable;
import b3.x1;
import java.util.Arrays;
import t3.a;
import y4.q0;
/* loaded from: classes.dex */
public final class a implements a.b {

    /* renamed from: a  reason: collision with root package name */
    public final String f31197a;

    /* renamed from: b  reason: collision with root package name */
    public final String f31198b;

    /* renamed from: c  reason: collision with root package name */
    public final long f31199c;

    /* renamed from: d  reason: collision with root package name */
    public final long f31200d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f31201e;

    /* renamed from: f  reason: collision with root package name */
    private int f31202f;

    /* renamed from: g  reason: collision with root package name */
    private static final x1 f31195g = new x1.b().g0("application/id3").G();

    /* renamed from: h  reason: collision with root package name */
    private static final x1 f31196h = new x1.b().g0("application/x-scte35").G();
    public static final Parcelable.Creator<a> CREATOR = new C0348a();

    /* renamed from: v3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0348a implements Parcelable.Creator {
        C0348a() {
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

    public a(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f31197a = str;
        this.f31198b = str2;
        this.f31199c = j10;
        this.f31200d = j11;
        this.f31201e = bArr;
    }

    @Override // t3.a.b
    public byte[] A() {
        if (y() != null) {
            return this.f31201e;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f31199c == aVar.f31199c && this.f31200d == aVar.f31200d && q0.c(this.f31197a, aVar.f31197a) && q0.c(this.f31198b, aVar.f31198b) && Arrays.equals(this.f31201e, aVar.f31201e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        if (this.f31202f == 0) {
            String str = this.f31197a;
            int i11 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = (527 + i10) * 31;
            String str2 = this.f31198b;
            if (str2 != null) {
                i11 = str2.hashCode();
            }
            long j10 = this.f31199c;
            long j11 = this.f31200d;
            this.f31202f = ((((((i12 + i11) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f31201e);
        }
        return this.f31202f;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f31197a + ", id=" + this.f31200d + ", durationMs=" + this.f31199c + ", value=" + this.f31198b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f31197a);
        parcel.writeString(this.f31198b);
        parcel.writeLong(this.f31199c);
        parcel.writeLong(this.f31200d);
        parcel.writeByteArray(this.f31201e);
    }

    @Override // t3.a.b
    public x1 y() {
        String str = this.f31197a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    c10 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return f31196h;
            case 1:
            case 2:
                return f31195g;
            default:
                return null;
        }
    }

    a(Parcel parcel) {
        this.f31197a = (String) q0.j(parcel.readString());
        this.f31198b = (String) q0.j(parcel.readString());
        this.f31199c = parcel.readLong();
        this.f31200d = parcel.readLong();
        this.f31201e = (byte[]) q0.j(parcel.createByteArray());
    }
}
