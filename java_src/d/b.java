package d;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import d.a;
/* loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final boolean f14274a = false;

    /* renamed from: b  reason: collision with root package name */
    final Handler f14275b = null;

    /* renamed from: c  reason: collision with root package name */
    d.a f14276c;

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

    /* renamed from: d.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class BinderC0138b extends a.AbstractBinderC0136a {
        BinderC0138b() {
        }

        @Override // d.a
        public void d1(int i10, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.f14275b;
            if (handler != null) {
                handler.post(new c(i10, bundle));
            } else {
                bVar.a(i10, bundle);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f14278a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f14279b;

        c(int i10, Bundle bundle) {
            this.f14278a = i10;
            this.f14279b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f14278a, this.f14279b);
        }
    }

    b(Parcel parcel) {
        this.f14276c = a.AbstractBinderC0136a.a(parcel.readStrongBinder());
    }

    protected void a(int i10, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            if (this.f14276c == null) {
                this.f14276c = new BinderC0138b();
            }
            parcel.writeStrongBinder(this.f14276c.asBinder());
        }
    }
}
