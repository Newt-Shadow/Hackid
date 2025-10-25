package com.yandex.metrica.impl.ob;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.yandex.metrica.impl.ob.fl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0541fl implements Parcelable {
    public static final Parcelable.Creator<C0541fl> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12422a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12423b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12424c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12425d;

    /* renamed from: e  reason: collision with root package name */
    public final C0957wl f12426e;

    /* renamed from: f  reason: collision with root package name */
    public final C0591hl f12427f;

    /* renamed from: g  reason: collision with root package name */
    public final C0591hl f12428g;

    /* renamed from: h  reason: collision with root package name */
    public final C0591hl f12429h;

    /* renamed from: com.yandex.metrica.impl.ob.fl$a */
    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<C0541fl> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public C0541fl createFromParcel(Parcel parcel) {
            return new C0541fl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0541fl[] newArray(int i10) {
            return new C0541fl[i10];
        }
    }

    public C0541fl(C0787pi c0787pi) {
        this(c0787pi.f().f11298j, c0787pi.f().f11300l, c0787pi.f().f11299k, c0787pi.f().f11301m, c0787pi.T(), c0787pi.S(), c0787pi.R(), c0787pi.U());
    }

    public boolean a() {
        if (this.f12426e != null && this.f12427f != null && this.f12428g != null && this.f12429h != null) {
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0541fl.class != obj.getClass()) {
            return false;
        }
        C0541fl c0541fl = (C0541fl) obj;
        if (this.f12422a != c0541fl.f12422a || this.f12423b != c0541fl.f12423b || this.f12424c != c0541fl.f12424c || this.f12425d != c0541fl.f12425d) {
            return false;
        }
        C0957wl c0957wl = this.f12426e;
        if (c0957wl == null ? c0541fl.f12426e != null : !c0957wl.equals(c0541fl.f12426e)) {
            return false;
        }
        C0591hl c0591hl = this.f12427f;
        if (c0591hl == null ? c0541fl.f12427f != null : !c0591hl.equals(c0541fl.f12427f)) {
            return false;
        }
        C0591hl c0591hl2 = this.f12428g;
        if (c0591hl2 == null ? c0541fl.f12428g != null : !c0591hl2.equals(c0541fl.f12428g)) {
            return false;
        }
        C0591hl c0591hl3 = this.f12429h;
        if (c0591hl3 != null) {
            return c0591hl3.equals(c0541fl.f12429h);
        }
        if (c0541fl.f12429h == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13 = (((((((this.f12422a ? 1 : 0) * 31) + (this.f12423b ? 1 : 0)) * 31) + (this.f12424c ? 1 : 0)) * 31) + (this.f12425d ? 1 : 0)) * 31;
        C0957wl c0957wl = this.f12426e;
        int i14 = 0;
        if (c0957wl != null) {
            i10 = c0957wl.hashCode();
        } else {
            i10 = 0;
        }
        int i15 = (i13 + i10) * 31;
        C0591hl c0591hl = this.f12427f;
        if (c0591hl != null) {
            i11 = c0591hl.hashCode();
        } else {
            i11 = 0;
        }
        int i16 = (i15 + i11) * 31;
        C0591hl c0591hl2 = this.f12428g;
        if (c0591hl2 != null) {
            i12 = c0591hl2.hashCode();
        } else {
            i12 = 0;
        }
        int i17 = (i16 + i12) * 31;
        C0591hl c0591hl3 = this.f12429h;
        if (c0591hl3 != null) {
            i14 = c0591hl3.hashCode();
        }
        return i17 + i14;
    }

    public String toString() {
        return "UiAccessConfig{uiParsingEnabled=" + this.f12422a + ", uiEventSendingEnabled=" + this.f12423b + ", uiCollectingForBridgeEnabled=" + this.f12424c + ", uiRawEventSendingEnabled=" + this.f12425d + ", uiParsingConfig=" + this.f12426e + ", uiEventSendingConfig=" + this.f12427f + ", uiCollectingForBridgeConfig=" + this.f12428g + ", uiRawEventSendingConfig=" + this.f12429h + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f12422a ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12423b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12424c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12425d ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f12426e, i10);
        parcel.writeParcelable(this.f12427f, i10);
        parcel.writeParcelable(this.f12428g, i10);
        parcel.writeParcelable(this.f12429h, i10);
    }

    public C0541fl(boolean z10, boolean z11, boolean z12, boolean z13, C0957wl c0957wl, C0591hl c0591hl, C0591hl c0591hl2, C0591hl c0591hl3) {
        this.f12422a = z10;
        this.f12423b = z11;
        this.f12424c = z12;
        this.f12425d = z13;
        this.f12426e = c0957wl;
        this.f12427f = c0591hl;
        this.f12428g = c0591hl2;
        this.f12429h = c0591hl3;
    }

    protected C0541fl(Parcel parcel) {
        this.f12422a = parcel.readByte() != 0;
        this.f12423b = parcel.readByte() != 0;
        this.f12424c = parcel.readByte() != 0;
        this.f12425d = parcel.readByte() != 0;
        this.f12426e = (C0957wl) parcel.readParcelable(C0957wl.class.getClassLoader());
        this.f12427f = (C0591hl) parcel.readParcelable(C0591hl.class.getClassLoader());
        this.f12428g = (C0591hl) parcel.readParcelable(C0591hl.class.getClassLoader());
        this.f12429h = (C0591hl) parcel.readParcelable(C0591hl.class.getClassLoader());
    }
}
