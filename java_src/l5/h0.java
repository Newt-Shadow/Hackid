package l5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import n5.x1;
/* loaded from: classes.dex */
public final class h0 extends o5.a {
    public static final Parcelable.Creator<h0> CREATOR = new i0();

    /* renamed from: a  reason: collision with root package name */
    private final String f25296a;

    /* renamed from: b  reason: collision with root package name */
    private final y f25297b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f25298c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f25299d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(String str, y yVar, boolean z10, boolean z11) {
        this.f25296a = str;
        this.f25297b = yVar;
        this.f25298c = z10;
        this.f25299d = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f25296a;
        int a10 = o5.c.a(parcel);
        o5.c.q(parcel, 1, str, false);
        y yVar = this.f25297b;
        if (yVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            yVar = null;
        }
        o5.c.j(parcel, 2, yVar, false);
        o5.c.c(parcel, 3, this.f25298c);
        o5.c.c(parcel, 4, this.f25299d);
        o5.c.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(String str, IBinder iBinder, boolean z10, boolean z11) {
        this.f25296a = str;
        z zVar = null;
        if (iBinder != null) {
            try {
                u5.a g10 = x1.d(iBinder).g();
                byte[] bArr = g10 == null ? null : (byte[]) u5.b.k(g10);
                if (bArr != null) {
                    zVar = new z(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.f25297b = zVar;
        this.f25298c = z10;
        this.f25299d = z11;
    }
}
