package q7;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.util.List;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f28388a;

    /* renamed from: b  reason: collision with root package name */
    public final String f28389b;

    /* renamed from: c  reason: collision with root package name */
    public final List f28390c;

    /* renamed from: d  reason: collision with root package name */
    public final String f28391d;

    /* renamed from: e  reason: collision with root package name */
    public final String f28392e;

    /* renamed from: f  reason: collision with root package name */
    public final String f28393f;

    /* renamed from: g  reason: collision with root package name */
    public final String f28394g;

    /* renamed from: h  reason: collision with root package name */
    public final n7.f f28395h;

    public b(String str, String str2, List list, String str3, String str4, String str5, String str6, n7.f fVar) {
        this.f28388a = str;
        this.f28389b = str2;
        this.f28390c = list;
        this.f28391d = str3;
        this.f28392e = str4;
        this.f28393f = str5;
        this.f28394g = str6;
        this.f28395h = fVar;
    }

    public static b a(Context context, o0 o0Var, String str, String str2, List list, n7.f fVar) {
        String packageName = context.getPackageName();
        String g10 = o0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String b10 = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new b(str, str2, list, g10, packageName, b10, str3, fVar);
    }

    private static String b(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return Long.toString(longVersionCode);
        }
        return Integer.toString(packageInfo.versionCode);
    }
}
