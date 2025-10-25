package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f846a;

    private a(Context context) {
        this.f846a = context;
    }

    public static a b(Context context) {
        return new a(context);
    }

    public boolean a() {
        if (this.f846a.getApplicationInfo().targetSdkVersion < 14) {
            return true;
        }
        return false;
    }

    public int c() {
        return this.f846a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int d() {
        Configuration configuration = this.f846a.getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        int i11 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i10 <= 600) {
            if (i10 <= 960 || i11 <= 720) {
                if (i10 <= 720 || i11 <= 960) {
                    if (i10 < 500) {
                        if (i10 <= 640 || i11 <= 480) {
                            if (i10 <= 480 || i11 <= 640) {
                                if (i10 >= 360) {
                                    return 3;
                                }
                                return 2;
                            }
                            return 4;
                        }
                        return 4;
                    }
                    return 4;
                }
                return 5;
            }
            return 5;
        }
        return 5;
    }

    public boolean e() {
        return this.f846a.getResources().getBoolean(h.b.f16467a);
    }

    public boolean f() {
        return true;
    }
}
