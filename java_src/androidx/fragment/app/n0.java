package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n0 implements Parcelable {
    public static final Parcelable.Creator<n0> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final String f2735a;

    /* renamed from: b  reason: collision with root package name */
    final String f2736b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f2737c;

    /* renamed from: d  reason: collision with root package name */
    final int f2738d;

    /* renamed from: e  reason: collision with root package name */
    final int f2739e;

    /* renamed from: f  reason: collision with root package name */
    final String f2740f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f2741g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f2742h;

    /* renamed from: i  reason: collision with root package name */
    final boolean f2743i;

    /* renamed from: j  reason: collision with root package name */
    final boolean f2744j;

    /* renamed from: k  reason: collision with root package name */
    final int f2745k;

    /* renamed from: l  reason: collision with root package name */
    final String f2746l;

    /* renamed from: m  reason: collision with root package name */
    final int f2747m;

    /* renamed from: n  reason: collision with root package name */
    final boolean f2748n;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public n0 createFromParcel(Parcel parcel) {
            return new n0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public n0[] newArray(int i10) {
            return new n0[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(p pVar) {
        this.f2735a = pVar.getClass().getName();
        this.f2736b = pVar.mWho;
        this.f2737c = pVar.mFromLayout;
        this.f2738d = pVar.mFragmentId;
        this.f2739e = pVar.mContainerId;
        this.f2740f = pVar.mTag;
        this.f2741g = pVar.mRetainInstance;
        this.f2742h = pVar.mRemoving;
        this.f2743i = pVar.mDetached;
        this.f2744j = pVar.mHidden;
        this.f2745k = pVar.mMaxState.ordinal();
        this.f2746l = pVar.mTargetWho;
        this.f2747m = pVar.mTargetRequestCode;
        this.f2748n = pVar.mUserVisibleHint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p a(z zVar, ClassLoader classLoader) {
        p a10 = zVar.a(classLoader, this.f2735a);
        a10.mWho = this.f2736b;
        a10.mFromLayout = this.f2737c;
        a10.mRestored = true;
        a10.mFragmentId = this.f2738d;
        a10.mContainerId = this.f2739e;
        a10.mTag = this.f2740f;
        a10.mRetainInstance = this.f2741g;
        a10.mRemoving = this.f2742h;
        a10.mDetached = this.f2743i;
        a10.mHidden = this.f2744j;
        a10.mMaxState = i.b.values()[this.f2745k];
        a10.mTargetWho = this.f2746l;
        a10.mTargetRequestCode = this.f2747m;
        a10.mUserVisibleHint = this.f2748n;
        return a10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f2735a);
        sb2.append(" (");
        sb2.append(this.f2736b);
        sb2.append(")}:");
        if (this.f2737c) {
            sb2.append(" fromLayout");
        }
        if (this.f2739e != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.f2739e));
        }
        String str = this.f2740f;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(this.f2740f);
        }
        if (this.f2741g) {
            sb2.append(" retainInstance");
        }
        if (this.f2742h) {
            sb2.append(" removing");
        }
        if (this.f2743i) {
            sb2.append(" detached");
        }
        if (this.f2744j) {
            sb2.append(" hidden");
        }
        if (this.f2746l != null) {
            sb2.append(" targetWho=");
            sb2.append(this.f2746l);
            sb2.append(" targetRequestCode=");
            sb2.append(this.f2747m);
        }
        if (this.f2748n) {
            sb2.append(" userVisibleHint");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f2735a);
        parcel.writeString(this.f2736b);
        parcel.writeInt(this.f2737c ? 1 : 0);
        parcel.writeInt(this.f2738d);
        parcel.writeInt(this.f2739e);
        parcel.writeString(this.f2740f);
        parcel.writeInt(this.f2741g ? 1 : 0);
        parcel.writeInt(this.f2742h ? 1 : 0);
        parcel.writeInt(this.f2743i ? 1 : 0);
        parcel.writeInt(this.f2744j ? 1 : 0);
        parcel.writeInt(this.f2745k);
        parcel.writeString(this.f2746l);
        parcel.writeInt(this.f2747m);
        parcel.writeInt(this.f2748n ? 1 : 0);
    }

    n0(Parcel parcel) {
        this.f2735a = parcel.readString();
        this.f2736b = parcel.readString();
        this.f2737c = parcel.readInt() != 0;
        this.f2738d = parcel.readInt();
        this.f2739e = parcel.readInt();
        this.f2740f = parcel.readString();
        this.f2741g = parcel.readInt() != 0;
        this.f2742h = parcel.readInt() != 0;
        this.f2743i = parcel.readInt() != 0;
        this.f2744j = parcel.readInt() != 0;
        this.f2745k = parcel.readInt();
        this.f2746l = parcel.readString();
        this.f2747m = parcel.readInt();
        this.f2748n = parcel.readInt() != 0;
    }
}
