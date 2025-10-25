package n5;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import n5.k;
/* loaded from: classes.dex */
public class g extends o5.a {
    public static final Parcelable.Creator<g> CREATOR = new m1();

    /* renamed from: o  reason: collision with root package name */
    static final Scope[] f26300o = new Scope[0];

    /* renamed from: p  reason: collision with root package name */
    static final l5.d[] f26301p = new l5.d[0];

    /* renamed from: a  reason: collision with root package name */
    final int f26302a;

    /* renamed from: b  reason: collision with root package name */
    final int f26303b;

    /* renamed from: c  reason: collision with root package name */
    final int f26304c;

    /* renamed from: d  reason: collision with root package name */
    String f26305d;

    /* renamed from: e  reason: collision with root package name */
    IBinder f26306e;

    /* renamed from: f  reason: collision with root package name */
    Scope[] f26307f;

    /* renamed from: g  reason: collision with root package name */
    Bundle f26308g;

    /* renamed from: h  reason: collision with root package name */
    Account f26309h;

    /* renamed from: i  reason: collision with root package name */
    l5.d[] f26310i;

    /* renamed from: j  reason: collision with root package name */
    l5.d[] f26311j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f26312k;

    /* renamed from: l  reason: collision with root package name */
    final int f26313l;

    /* renamed from: m  reason: collision with root package name */
    boolean f26314m;

    /* renamed from: n  reason: collision with root package name */
    private final String f26315n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i10, int i11, int i12, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, l5.d[] dVarArr, l5.d[] dVarArr2, boolean z10, int i13, boolean z11, String str2) {
        Account account2;
        scopeArr = scopeArr == null ? f26300o : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        dVarArr = dVarArr == null ? f26301p : dVarArr;
        dVarArr2 = dVarArr2 == null ? f26301p : dVarArr2;
        this.f26302a = i10;
        this.f26303b = i11;
        this.f26304c = i12;
        if ("com.google.android.gms".equals(str)) {
            this.f26305d = "com.google.android.gms";
        } else {
            this.f26305d = str;
        }
        if (i10 < 2) {
            if (iBinder != null) {
                account2 = a.k(k.a.d(iBinder));
            } else {
                account2 = null;
            }
            this.f26309h = account2;
        } else {
            this.f26306e = iBinder;
            this.f26309h = account;
        }
        this.f26307f = scopeArr;
        this.f26308g = bundle;
        this.f26310i = dVarArr;
        this.f26311j = dVarArr2;
        this.f26312k = z10;
        this.f26313l = i13;
        this.f26314m = z11;
        this.f26315n = str2;
    }

    public String g() {
        return this.f26315n;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        m1.a(this, parcel, i10);
    }
}
