package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f508a;

    /* renamed from: b  reason: collision with root package name */
    final long f509b;

    /* renamed from: c  reason: collision with root package name */
    final long f510c;

    /* renamed from: d  reason: collision with root package name */
    final float f511d;

    /* renamed from: e  reason: collision with root package name */
    final long f512e;

    /* renamed from: f  reason: collision with root package name */
    final int f513f;

    /* renamed from: g  reason: collision with root package name */
    final CharSequence f514g;

    /* renamed from: h  reason: collision with root package name */
    final long f515h;

    /* renamed from: i  reason: collision with root package name */
    List f516i;

    /* renamed from: j  reason: collision with root package name */
    final long f517j;

    /* renamed from: k  reason: collision with root package name */
    final Bundle f518k;

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private final String f519a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f520b;

        /* renamed from: c  reason: collision with root package name */
        private final int f521c;

        /* renamed from: d  reason: collision with root package name */
        private final Bundle f522d;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }
        }

        CustomAction(Parcel parcel) {
            this.f519a = parcel.readString();
            this.f520b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f521c = parcel.readInt();
            this.f522d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f520b) + ", mIcon=" + this.f521c + ", mExtras=" + this.f522d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f519a);
            TextUtils.writeToParcel(this.f520b, parcel, i10);
            parcel.writeInt(this.f521c);
            parcel.writeBundle(this.f522d);
        }
    }

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f508a = parcel.readInt();
        this.f509b = parcel.readLong();
        this.f511d = parcel.readFloat();
        this.f515h = parcel.readLong();
        this.f510c = parcel.readLong();
        this.f512e = parcel.readLong();
        this.f514g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f516i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f517j = parcel.readLong();
        this.f518k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f513f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f508a + ", position=" + this.f509b + ", buffered position=" + this.f510c + ", speed=" + this.f511d + ", updated=" + this.f515h + ", actions=" + this.f512e + ", error code=" + this.f513f + ", error message=" + this.f514g + ", custom actions=" + this.f516i + ", active item id=" + this.f517j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f508a);
        parcel.writeLong(this.f509b);
        parcel.writeFloat(this.f511d);
        parcel.writeLong(this.f515h);
        parcel.writeLong(this.f510c);
        parcel.writeLong(this.f512e);
        TextUtils.writeToParcel(this.f514g, parcel, i10);
        parcel.writeTypedList(this.f516i);
        parcel.writeLong(this.f517j);
        parcel.writeBundle(this.f518k);
        parcel.writeInt(this.f513f);
    }
}
