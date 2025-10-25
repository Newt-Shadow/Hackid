package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.q0;
import androidx.lifecycle.i;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int[] f2561a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList f2562b;

    /* renamed from: c  reason: collision with root package name */
    final int[] f2563c;

    /* renamed from: d  reason: collision with root package name */
    final int[] f2564d;

    /* renamed from: e  reason: collision with root package name */
    final int f2565e;

    /* renamed from: f  reason: collision with root package name */
    final String f2566f;

    /* renamed from: g  reason: collision with root package name */
    final int f2567g;

    /* renamed from: h  reason: collision with root package name */
    final int f2568h;

    /* renamed from: i  reason: collision with root package name */
    final CharSequence f2569i;

    /* renamed from: j  reason: collision with root package name */
    final int f2570j;

    /* renamed from: k  reason: collision with root package name */
    final CharSequence f2571k;

    /* renamed from: l  reason: collision with root package name */
    final ArrayList f2572l;

    /* renamed from: m  reason: collision with root package name */
    final ArrayList f2573m;

    /* renamed from: n  reason: collision with root package name */
    final boolean f2574n;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(androidx.fragment.app.a aVar) {
        int size = aVar.f2804c.size();
        this.f2561a = new int[size * 6];
        if (aVar.f2810i) {
            this.f2562b = new ArrayList(size);
            this.f2563c = new int[size];
            this.f2564d = new int[size];
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                q0.a aVar2 = (q0.a) aVar.f2804c.get(i10);
                int i12 = i11 + 1;
                this.f2561a[i11] = aVar2.f2821a;
                ArrayList arrayList = this.f2562b;
                p pVar = aVar2.f2822b;
                arrayList.add(pVar != null ? pVar.mWho : null);
                int[] iArr = this.f2561a;
                int i13 = i12 + 1;
                iArr[i12] = aVar2.f2823c ? 1 : 0;
                int i14 = i13 + 1;
                iArr[i13] = aVar2.f2824d;
                int i15 = i14 + 1;
                iArr[i14] = aVar2.f2825e;
                int i16 = i15 + 1;
                iArr[i15] = aVar2.f2826f;
                iArr[i16] = aVar2.f2827g;
                this.f2563c[i10] = aVar2.f2828h.ordinal();
                this.f2564d[i10] = aVar2.f2829i.ordinal();
                i10++;
                i11 = i16 + 1;
            }
            this.f2565e = aVar.f2809h;
            this.f2566f = aVar.f2812k;
            this.f2567g = aVar.f2554v;
            this.f2568h = aVar.f2813l;
            this.f2569i = aVar.f2814m;
            this.f2570j = aVar.f2815n;
            this.f2571k = aVar.f2816o;
            this.f2572l = aVar.f2817p;
            this.f2573m = aVar.f2818q;
            this.f2574n = aVar.f2819r;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    private void a(androidx.fragment.app.a aVar) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 < this.f2561a.length) {
                q0.a aVar2 = new q0.a();
                int i12 = i10 + 1;
                aVar2.f2821a = this.f2561a[i10];
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i11 + " base fragment #" + this.f2561a[i12]);
                }
                aVar2.f2828h = i.b.values()[this.f2563c[i11]];
                aVar2.f2829i = i.b.values()[this.f2564d[i11]];
                int[] iArr = this.f2561a;
                int i13 = i12 + 1;
                if (iArr[i12] == 0) {
                    z10 = false;
                }
                aVar2.f2823c = z10;
                int i14 = i13 + 1;
                int i15 = iArr[i13];
                aVar2.f2824d = i15;
                int i16 = i14 + 1;
                int i17 = iArr[i14];
                aVar2.f2825e = i17;
                int i18 = i16 + 1;
                int i19 = iArr[i16];
                aVar2.f2826f = i19;
                int i20 = iArr[i18];
                aVar2.f2827g = i20;
                aVar.f2805d = i15;
                aVar.f2806e = i17;
                aVar.f2807f = i19;
                aVar.f2808g = i20;
                aVar.e(aVar2);
                i11++;
                i10 = i18 + 1;
            } else {
                aVar.f2809h = this.f2565e;
                aVar.f2812k = this.f2566f;
                aVar.f2810i = true;
                aVar.f2813l = this.f2568h;
                aVar.f2814m = this.f2569i;
                aVar.f2815n = this.f2570j;
                aVar.f2816o = this.f2571k;
                aVar.f2817p = this.f2572l;
                aVar.f2818q = this.f2573m;
                aVar.f2819r = this.f2574n;
                return;
            }
        }
    }

    public androidx.fragment.app.a b(i0 i0Var) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(i0Var);
        a(aVar);
        aVar.f2554v = this.f2567g;
        for (int i10 = 0; i10 < this.f2562b.size(); i10++) {
            String str = (String) this.f2562b.get(i10);
            if (str != null) {
                ((q0.a) aVar.f2804c.get(i10)).f2822b = i0Var.g0(str);
            }
        }
        aVar.n(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f2561a);
        parcel.writeStringList(this.f2562b);
        parcel.writeIntArray(this.f2563c);
        parcel.writeIntArray(this.f2564d);
        parcel.writeInt(this.f2565e);
        parcel.writeString(this.f2566f);
        parcel.writeInt(this.f2567g);
        parcel.writeInt(this.f2568h);
        TextUtils.writeToParcel(this.f2569i, parcel, 0);
        parcel.writeInt(this.f2570j);
        TextUtils.writeToParcel(this.f2571k, parcel, 0);
        parcel.writeStringList(this.f2572l);
        parcel.writeStringList(this.f2573m);
        parcel.writeInt(this.f2574n ? 1 : 0);
    }

    b(Parcel parcel) {
        this.f2561a = parcel.createIntArray();
        this.f2562b = parcel.createStringArrayList();
        this.f2563c = parcel.createIntArray();
        this.f2564d = parcel.createIntArray();
        this.f2565e = parcel.readInt();
        this.f2566f = parcel.readString();
        this.f2567g = parcel.readInt();
        this.f2568h = parcel.readInt();
        this.f2569i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2570j = parcel.readInt();
        this.f2571k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2572l = parcel.createStringArrayList();
        this.f2573m = parcel.createStringArrayList();
        this.f2574n = parcel.readInt() != 0;
    }
}
