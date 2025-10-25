package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.wl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0957wl implements Parcelable {
    public static final Parcelable.Creator<C0957wl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f13901a;

    /* renamed from: b  reason: collision with root package name */
    public final int f13902b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13903c;

    /* renamed from: d  reason: collision with root package name */
    public final long f13904d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f13905e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f13906f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f13907g;

    /* renamed from: h  reason: collision with root package name */
    public final List<C1029zl> f13908h;

    /* renamed from: com.yandex.metrica.impl.ob.wl$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0957wl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0957wl createFromParcel(Parcel parcel) {
            return new C0957wl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0957wl[] newArray(int i10) {
            return new C0957wl[i10];
        }
    }

    public C0957wl(int i10, int i11, int i12, long j10, boolean z10, boolean z11, boolean z12, List<C1029zl> list) {
        this.f13901a = i10;
        this.f13902b = i11;
        this.f13903c = i12;
        this.f13904d = j10;
        this.f13905e = z10;
        this.f13906f = z11;
        this.f13907g = z12;
        this.f13908h = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0957wl.class != obj.getClass()) {
            return false;
        }
        C0957wl c0957wl = (C0957wl) obj;
        if (this.f13901a != c0957wl.f13901a || this.f13902b != c0957wl.f13902b || this.f13903c != c0957wl.f13903c || this.f13904d != c0957wl.f13904d || this.f13905e != c0957wl.f13905e || this.f13906f != c0957wl.f13906f || this.f13907g != c0957wl.f13907g) {
            return false;
        }
        return this.f13908h.equals(c0957wl.f13908h);
    }

    public int hashCode() {
        long j10 = this.f13904d;
        return (((((((((((((this.f13901a * 31) + this.f13902b) * 31) + this.f13903c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.f13905e ? 1 : 0)) * 31) + (this.f13906f ? 1 : 0)) * 31) + (this.f13907g ? 1 : 0)) * 31) + this.f13908h.hashCode();
    }

    public String toString() {
        return "UiParsingConfig{tooLongTextBound=" + this.f13901a + ", truncatedTextBound=" + this.f13902b + ", maxVisitedChildrenInLevel=" + this.f13903c + ", afterCreateTimeout=" + this.f13904d + ", relativeTextSizeCalculation=" + this.f13905e + ", errorReporting=" + this.f13906f + ", parsingAllowedByDefault=" + this.f13907g + ", filters=" + this.f13908h + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f13901a);
        parcel.writeInt(this.f13902b);
        parcel.writeInt(this.f13903c);
        parcel.writeLong(this.f13904d);
        parcel.writeByte(this.f13905e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f13906f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f13907g ? (byte) 1 : (byte) 0);
        parcel.writeList(this.f13908h);
    }

    protected C0957wl(Parcel parcel) {
        this.f13901a = parcel.readInt();
        this.f13902b = parcel.readInt();
        this.f13903c = parcel.readInt();
        this.f13904d = parcel.readLong();
        this.f13905e = parcel.readByte() != 0;
        this.f13906f = parcel.readByte() != 0;
        this.f13907g = parcel.readByte() != 0;
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, C1029zl.class.getClassLoader());
        this.f13908h = arrayList;
    }
}
