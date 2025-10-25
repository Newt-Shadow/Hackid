package l5;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import n5.o;
/* loaded from: classes.dex */
public final class b extends o5.a {

    /* renamed from: a  reason: collision with root package name */
    final int f25261a;

    /* renamed from: b  reason: collision with root package name */
    private final int f25262b;

    /* renamed from: c  reason: collision with root package name */
    private final PendingIntent f25263c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25264d;

    /* renamed from: e  reason: collision with root package name */
    public static final b f25260e = new b(0);
    public static final Parcelable.Creator<b> CREATOR = new q();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i10, int i11, PendingIntent pendingIntent, String str) {
        this.f25261a = i10;
        this.f25262b = i11;
        this.f25263c = pendingIntent;
        this.f25264d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(int i10) {
        if (i10 != 99) {
            if (i10 != 1500) {
                switch (i10) {
                    case -1:
                        return "UNKNOWN";
                    case 0:
                        return "SUCCESS";
                    case 1:
                        return "SERVICE_MISSING";
                    case 2:
                        return "SERVICE_VERSION_UPDATE_REQUIRED";
                    case 3:
                        return "SERVICE_DISABLED";
                    case 4:
                        return "SIGN_IN_REQUIRED";
                    case 5:
                        return "INVALID_ACCOUNT";
                    case 6:
                        return "RESOLUTION_REQUIRED";
                    case 7:
                        return "NETWORK_ERROR";
                    case 8:
                        return "INTERNAL_ERROR";
                    case 9:
                        return "SERVICE_INVALID";
                    case 10:
                        return "DEVELOPER_ERROR";
                    case 11:
                        return "LICENSE_CHECK_FAILED";
                    default:
                        switch (i10) {
                            case 13:
                                return "CANCELED";
                            case 14:
                                return "TIMEOUT";
                            case 15:
                                return "INTERRUPTED";
                            case 16:
                                return "API_UNAVAILABLE";
                            case 17:
                                return "SIGN_IN_FAILED";
                            case 18:
                                return "SERVICE_UPDATING";
                            case C1415p9.C /* 19 */:
                                return "SERVICE_MISSING_PERMISSION";
                            case 20:
                                return "RESTRICTED_PROFILE";
                            case 21:
                                return "API_VERSION_UPDATE_REQUIRED";
                            case Build.API_LEVELS.API_22 /* 22 */:
                                return "RESOLUTION_ACTIVITY_NOT_FOUND";
                            case Build.API_LEVELS.API_23 /* 23 */:
                                return "API_DISABLED";
                            case Build.API_LEVELS.API_24 /* 24 */:
                                return "API_DISABLED_FOR_CONNECTION";
                            case 25:
                                return "API_INSTALL_REQUIRED";
                            default:
                                return "UNKNOWN_ERROR_CODE(" + i10 + ")";
                        }
                }
            }
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        return "UNFINISHED";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f25262b == bVar.f25262b && n5.o.a(this.f25263c, bVar.f25263c) && n5.o.a(this.f25264d, bVar.f25264d)) {
            return true;
        }
        return false;
    }

    public int g() {
        return this.f25262b;
    }

    public int hashCode() {
        return n5.o.b(Integer.valueOf(this.f25262b), this.f25263c, this.f25264d);
    }

    public String i() {
        return this.f25264d;
    }

    public PendingIntent l() {
        return this.f25263c;
    }

    public boolean m() {
        return (this.f25262b == 0 || this.f25263c == null) ? false : true;
    }

    public boolean n() {
        return this.f25262b == 0;
    }

    public String toString() {
        o.a c10 = n5.o.c(this);
        c10.a("statusCode", o(this.f25262b));
        c10.a("resolution", this.f25263c);
        c10.a("message", this.f25264d);
        return c10.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f25261a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.k(parcel, 2, g());
        o5.c.p(parcel, 3, l(), i10, false);
        o5.c.q(parcel, 4, i(), false);
        o5.c.b(parcel, a10);
    }

    public b(int i10) {
        this(i10, null, null);
    }

    public b(int i10, PendingIntent pendingIntent) {
        this(i10, pendingIntent, null);
    }

    public b(int i10, PendingIntent pendingIntent, String str) {
        this(1, i10, pendingIntent, str);
    }
}
