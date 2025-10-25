package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
/* loaded from: classes.dex */
class b extends a {

    /* renamed from: d  reason: collision with root package name */
    private final SparseIntArray f3529d;

    /* renamed from: e  reason: collision with root package name */
    private final Parcel f3530e;

    /* renamed from: f  reason: collision with root package name */
    private final int f3531f;

    /* renamed from: g  reason: collision with root package name */
    private final int f3532g;

    /* renamed from: h  reason: collision with root package name */
    private final String f3533h;

    /* renamed from: i  reason: collision with root package name */
    private int f3534i;

    /* renamed from: j  reason: collision with root package name */
    private int f3535j;

    /* renamed from: k  reason: collision with root package name */
    private int f3536k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new r.a(), new r.a(), new r.a());
    }

    @Override // androidx.versionedparcelable.a
    public void A(byte[] bArr) {
        if (bArr != null) {
            this.f3530e.writeInt(bArr.length);
            this.f3530e.writeByteArray(bArr);
            return;
        }
        this.f3530e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.a
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3530e, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void E(int i10) {
        this.f3530e.writeInt(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void G(Parcelable parcelable) {
        this.f3530e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void I(String str) {
        this.f3530e.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a() {
        int i10 = this.f3534i;
        if (i10 >= 0) {
            int i11 = this.f3529d.get(i10);
            int dataPosition = this.f3530e.dataPosition();
            this.f3530e.setDataPosition(i11);
            this.f3530e.writeInt(dataPosition - i11);
            this.f3530e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected a b() {
        Parcel parcel = this.f3530e;
        int dataPosition = parcel.dataPosition();
        int i10 = this.f3535j;
        if (i10 == this.f3531f) {
            i10 = this.f3532g;
        }
        int i11 = i10;
        return new b(parcel, dataPosition, i11, this.f3533h + "  ", this.f3526a, this.f3527b, this.f3528c);
    }

    @Override // androidx.versionedparcelable.a
    public boolean g() {
        if (this.f3530e.readInt() != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.versionedparcelable.a
    public byte[] i() {
        int readInt = this.f3530e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f3530e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3530e);
    }

    @Override // androidx.versionedparcelable.a
    public boolean m(int i10) {
        while (this.f3535j < this.f3532g) {
            int i11 = this.f3536k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f3530e.setDataPosition(this.f3535j);
            int readInt = this.f3530e.readInt();
            this.f3536k = this.f3530e.readInt();
            this.f3535j += readInt;
        }
        if (this.f3536k == i10) {
            return true;
        }
        return false;
    }

    @Override // androidx.versionedparcelable.a
    public int o() {
        return this.f3530e.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public Parcelable q() {
        return this.f3530e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public String s() {
        return this.f3530e.readString();
    }

    @Override // androidx.versionedparcelable.a
    public void w(int i10) {
        a();
        this.f3534i = i10;
        this.f3529d.put(i10, this.f3530e.dataPosition());
        E(0);
        E(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void y(boolean z10) {
        this.f3530e.writeInt(z10 ? 1 : 0);
    }

    private b(Parcel parcel, int i10, int i11, String str, r.a aVar, r.a aVar2, r.a aVar3) {
        super(aVar, aVar2, aVar3);
        this.f3529d = new SparseIntArray();
        this.f3534i = -1;
        this.f3536k = -1;
        this.f3530e = parcel;
        this.f3531f = i10;
        this.f3532g = i11;
        this.f3535j = i10;
        this.f3533h = str;
    }
}
