package f;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class g implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final IntentSender f15567a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f15568b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15569c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15570d;

    /* renamed from: e  reason: collision with root package name */
    public static final c f15566e = new c(null);
    public static final Parcelable.Creator<g> CREATOR = new b();

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final IntentSender f15571a;

        /* renamed from: b  reason: collision with root package name */
        private Intent f15572b;

        /* renamed from: c  reason: collision with root package name */
        private int f15573c;

        /* renamed from: d  reason: collision with root package name */
        private int f15574d;

        public a(IntentSender intentSender) {
            m.e(intentSender, "intentSender");
            this.f15571a = intentSender;
        }

        public final g a() {
            return new g(this.f15571a, this.f15572b, this.f15573c, this.f15574d);
        }

        public final a b(Intent intent) {
            this.f15572b = intent;
            return this;
        }

        public final a c(int i10, int i11) {
            this.f15574d = i10;
            this.f15573c = i11;
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(android.app.PendingIntent r2) {
            /*
                r1 = this;
                java.lang.String r0 = "pendingIntent"
                kotlin.jvm.internal.m.e(r2, r0)
                android.content.IntentSender r2 = r2.getIntentSender()
                java.lang.String r0 = "pendingIntent.intentSender"
                kotlin.jvm.internal.m.d(r2, r0)
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.g.a.<init>(android.app.PendingIntent):void");
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements Parcelable.Creator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public g createFromParcel(Parcel inParcel) {
            m.e(inParcel, "inParcel");
            return new g(inParcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public g[] newArray(int i10) {
            return new g[i10];
        }
    }

    /* loaded from: classes.dex */
    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g(IntentSender intentSender, Intent intent, int i10, int i11) {
        m.e(intentSender, "intentSender");
        this.f15567a = intentSender;
        this.f15568b = intent;
        this.f15569c = i10;
        this.f15570d = i11;
    }

    public final Intent a() {
        return this.f15568b;
    }

    public final int b() {
        return this.f15569c;
    }

    public final int c() {
        return this.f15570d;
    }

    public final IntentSender d() {
        return this.f15567a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        m.e(dest, "dest");
        dest.writeParcelable(this.f15567a, i10);
        dest.writeParcelable(this.f15568b, i10);
        dest.writeInt(this.f15569c);
        dest.writeInt(this.f15570d);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g(android.os.Parcel r4) {
        /*
            r3 = this;
            java.lang.String r0 = "parcel"
            kotlin.jvm.internal.m.e(r4, r0)
            java.lang.Class<android.content.IntentSender> r0 = android.content.IntentSender.class
            java.lang.ClassLoader r0 = r0.getClassLoader()
            android.os.Parcelable r0 = r4.readParcelable(r0)
            kotlin.jvm.internal.m.b(r0)
            android.content.IntentSender r0 = (android.content.IntentSender) r0
            java.lang.Class<android.content.Intent> r1 = android.content.Intent.class
            java.lang.ClassLoader r1 = r1.getClassLoader()
            android.os.Parcelable r1 = r4.readParcelable(r1)
            android.content.Intent r1 = (android.content.Intent) r1
            int r2 = r4.readInt()
            int r4 = r4.readInt()
            r3.<init>(r0, r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.g.<init>(android.os.Parcel):void");
    }
}
