package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.hl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0591hl implements Parcelable {
    public static final Parcelable.Creator<C0591hl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12558a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12559b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12560c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12561d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12562e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f12563f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f12564g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f12565h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f12566i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f12567j;

    /* renamed from: k  reason: collision with root package name */
    public final int f12568k;

    /* renamed from: l  reason: collision with root package name */
    public final int f12569l;

    /* renamed from: m  reason: collision with root package name */
    public final int f12570m;

    /* renamed from: n  reason: collision with root package name */
    public final int f12571n;

    /* renamed from: o  reason: collision with root package name */
    public final int f12572o;

    /* renamed from: p  reason: collision with root package name */
    public final List<C1029zl> f12573p;

    /* renamed from: com.yandex.metrica.impl.ob.hl$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0591hl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0591hl createFromParcel(Parcel parcel) {
            return new C0591hl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0591hl[] newArray(int i10) {
            return new C0591hl[i10];
        }
    }

    public C0591hl(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i10, int i11, int i12, int i13, int i14, List<C1029zl> list) {
        this.f12558a = z10;
        this.f12559b = z11;
        this.f12560c = z12;
        this.f12561d = z13;
        this.f12562e = z14;
        this.f12563f = z15;
        this.f12564g = z16;
        this.f12565h = z17;
        this.f12566i = z18;
        this.f12567j = z19;
        this.f12568k = i10;
        this.f12569l = i11;
        this.f12570m = i12;
        this.f12571n = i13;
        this.f12572o = i14;
        this.f12573p = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0591hl.class != obj.getClass()) {
            return false;
        }
        C0591hl c0591hl = (C0591hl) obj;
        if (this.f12558a != c0591hl.f12558a || this.f12559b != c0591hl.f12559b || this.f12560c != c0591hl.f12560c || this.f12561d != c0591hl.f12561d || this.f12562e != c0591hl.f12562e || this.f12563f != c0591hl.f12563f || this.f12564g != c0591hl.f12564g || this.f12565h != c0591hl.f12565h || this.f12566i != c0591hl.f12566i || this.f12567j != c0591hl.f12567j || this.f12568k != c0591hl.f12568k || this.f12569l != c0591hl.f12569l || this.f12570m != c0591hl.f12570m || this.f12571n != c0591hl.f12571n || this.f12572o != c0591hl.f12572o) {
            return false;
        }
        return this.f12573p.equals(c0591hl.f12573p);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((this.f12558a ? 1 : 0) * 31) + (this.f12559b ? 1 : 0)) * 31) + (this.f12560c ? 1 : 0)) * 31) + (this.f12561d ? 1 : 0)) * 31) + (this.f12562e ? 1 : 0)) * 31) + (this.f12563f ? 1 : 0)) * 31) + (this.f12564g ? 1 : 0)) * 31) + (this.f12565h ? 1 : 0)) * 31) + (this.f12566i ? 1 : 0)) * 31) + (this.f12567j ? 1 : 0)) * 31) + this.f12568k) * 31) + this.f12569l) * 31) + this.f12570m) * 31) + this.f12571n) * 31) + this.f12572o) * 31) + this.f12573p.hashCode();
    }

    public String toString() {
        return "UiCollectingConfig{textSizeCollecting=" + this.f12558a + ", relativeTextSizeCollecting=" + this.f12559b + ", textVisibilityCollecting=" + this.f12560c + ", textStyleCollecting=" + this.f12561d + ", infoCollecting=" + this.f12562e + ", nonContentViewCollecting=" + this.f12563f + ", textLengthCollecting=" + this.f12564g + ", viewHierarchical=" + this.f12565h + ", ignoreFiltered=" + this.f12566i + ", webViewUrlsCollecting=" + this.f12567j + ", tooLongTextBound=" + this.f12568k + ", truncatedTextBound=" + this.f12569l + ", maxEntitiesCount=" + this.f12570m + ", maxFullContentLength=" + this.f12571n + ", webViewUrlLimit=" + this.f12572o + ", filters=" + this.f12573p + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f12558a ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12559b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12560c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12561d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12562e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12563f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12564g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12565h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12566i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12567j ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f12568k);
        parcel.writeInt(this.f12569l);
        parcel.writeInt(this.f12570m);
        parcel.writeInt(this.f12571n);
        parcel.writeInt(this.f12572o);
        parcel.writeList(this.f12573p);
    }

    protected C0591hl(Parcel parcel) {
        this.f12558a = parcel.readByte() != 0;
        this.f12559b = parcel.readByte() != 0;
        this.f12560c = parcel.readByte() != 0;
        this.f12561d = parcel.readByte() != 0;
        this.f12562e = parcel.readByte() != 0;
        this.f12563f = parcel.readByte() != 0;
        this.f12564g = parcel.readByte() != 0;
        this.f12565h = parcel.readByte() != 0;
        this.f12566i = parcel.readByte() != 0;
        this.f12567j = parcel.readByte() != 0;
        this.f12568k = parcel.readInt();
        this.f12569l = parcel.readInt();
        this.f12570m = parcel.readInt();
        this.f12571n = parcel.readInt();
        this.f12572o = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, C1029zl.class.getClassLoader());
        this.f12573p = arrayList;
    }
}
