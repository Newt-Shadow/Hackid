package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public int f503a;

    /* renamed from: b  reason: collision with root package name */
    public int f504b;

    /* renamed from: c  reason: collision with root package name */
    public int f505c;

    /* renamed from: d  reason: collision with root package name */
    public int f506d;

    /* renamed from: e  reason: collision with root package name */
    public int f507e;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ParcelableVolumeInfo[] newArray(int i10) {
            return new ParcelableVolumeInfo[i10];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f503a = parcel.readInt();
        this.f505c = parcel.readInt();
        this.f506d = parcel.readInt();
        this.f507e = parcel.readInt();
        this.f504b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f503a);
        parcel.writeInt(this.f505c);
        parcel.writeInt(this.f506d);
        parcel.writeInt(this.f507e);
        parcel.writeInt(this.f504b);
    }
}
