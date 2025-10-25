package qb;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: m  reason: collision with root package name */
    public static final a f28683m = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f28684a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28685b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28686c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28687d;

    /* renamed from: e  reason: collision with root package name */
    private final int f28688e;

    /* renamed from: f  reason: collision with root package name */
    private final int f28689f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f28690g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f28691h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f28692i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f28693j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f28694k;

    /* renamed from: l  reason: collision with root package name */
    private final int f28695l;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            m.e(context, "context");
            SharedPreferences.Editor edit = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0).edit();
            edit.clear();
            edit.commit();
        }

        public final i b(Context context) {
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0);
            int i10 = sharedPreferences.getInt("serviceId", sharedPreferences.getInt("notificationId", 1000));
            String string = sharedPreferences.getString("notificationChannelId", null);
            if (string == null) {
                string = "foreground_service";
            }
            String str = string;
            String string2 = sharedPreferences.getString("notificationChannelName", null);
            if (string2 == null) {
                string2 = "Foreground Service";
            }
            return new i(i10, str, string2, sharedPreferences.getString("notificationChannelDescription", null), sharedPreferences.getInt("notificationChannelImportance", 2), sharedPreferences.getInt("notificationPriority", -1), sharedPreferences.getBoolean("enableVibration", false), sharedPreferences.getBoolean("playSound", false), sharedPreferences.getBoolean("showWhen", false), sharedPreferences.getBoolean("showBadge", false), sharedPreferences.getBoolean("onlyAlertOnce", false), sharedPreferences.getInt("visibility", 1));
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x013b  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0156  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0159  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x015c  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0161  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x016d  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x0174  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0177  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x017f  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x010a  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0110  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(android.content.Context r28, java.util.Map r29) {
            /*
                Method dump skipped, instructions count: 448
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: qb.i.a.c(android.content.Context, java.util.Map):void");
        }
    }

    public i(int i10, String channelId, String channelName, String str, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i13) {
        m.e(channelId, "channelId");
        m.e(channelName, "channelName");
        this.f28684a = i10;
        this.f28685b = channelId;
        this.f28686c = channelName;
        this.f28687d = str;
        this.f28688e = i11;
        this.f28689f = i12;
        this.f28690g = z10;
        this.f28691h = z11;
        this.f28692i = z12;
        this.f28693j = z13;
        this.f28694k = z14;
        this.f28695l = i13;
    }

    public final String a() {
        return this.f28687d;
    }

    public final String b() {
        return this.f28685b;
    }

    public final int c() {
        return this.f28688e;
    }

    public final String d() {
        return this.f28686c;
    }

    public final boolean e() {
        return this.f28690g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f28684a == iVar.f28684a && m.a(this.f28685b, iVar.f28685b) && m.a(this.f28686c, iVar.f28686c) && m.a(this.f28687d, iVar.f28687d) && this.f28688e == iVar.f28688e && this.f28689f == iVar.f28689f && this.f28690g == iVar.f28690g && this.f28691h == iVar.f28691h && this.f28692i == iVar.f28692i && this.f28693j == iVar.f28693j && this.f28694k == iVar.f28694k && this.f28695l == iVar.f28695l;
        }
        return false;
    }

    public final boolean f() {
        return this.f28694k;
    }

    public final boolean g() {
        return this.f28691h;
    }

    public final int h() {
        return this.f28689f;
    }

    public int hashCode() {
        int hashCode = ((((Integer.hashCode(this.f28684a) * 31) + this.f28685b.hashCode()) * 31) + this.f28686c.hashCode()) * 31;
        String str = this.f28687d;
        return ((((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.f28688e)) * 31) + Integer.hashCode(this.f28689f)) * 31) + Boolean.hashCode(this.f28690g)) * 31) + Boolean.hashCode(this.f28691h)) * 31) + Boolean.hashCode(this.f28692i)) * 31) + Boolean.hashCode(this.f28693j)) * 31) + Boolean.hashCode(this.f28694k)) * 31) + Integer.hashCode(this.f28695l);
    }

    public final int i() {
        return this.f28684a;
    }

    public final boolean j() {
        return this.f28693j;
    }

    public final boolean k() {
        return this.f28692i;
    }

    public final int l() {
        return this.f28695l;
    }

    public String toString() {
        return "NotificationOptions(serviceId=" + this.f28684a + ", channelId=" + this.f28685b + ", channelName=" + this.f28686c + ", channelDescription=" + this.f28687d + ", channelImportance=" + this.f28688e + ", priority=" + this.f28689f + ", enableVibration=" + this.f28690g + ", playSound=" + this.f28691h + ", showWhen=" + this.f28692i + ", showBadge=" + this.f28693j + ", onlyAlertOnce=" + this.f28694k + ", visibility=" + this.f28695l + ')';
    }
}
