package n7;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f26469a;

    /* renamed from: b  reason: collision with root package name */
    private b f26470b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f26471a;

        /* renamed from: b  reason: collision with root package name */
        private final String f26472b;

        private b() {
            int p10 = q7.j.p(f.this.f26469a, "com.google.firebase.crashlytics.unity_version", "string");
            if (p10 == 0) {
                if (f.this.c("flutter_assets/NOTICES.Z")) {
                    this.f26471a = "Flutter";
                    this.f26472b = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
                this.f26471a = null;
                this.f26472b = null;
                return;
            }
            this.f26471a = "Unity";
            String string = f.this.f26469a.getResources().getString(p10);
            this.f26472b = string;
            g f10 = g.f();
            f10.i("Unity Editor version is: " + string);
        }
    }

    public f(Context context) {
        this.f26469a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (this.f26469a.getAssets() == null) {
            return false;
        }
        try {
            InputStream open = this.f26469a.getAssets().open(str);
            if (open != null) {
                open.close();
                return true;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.f26470b == null) {
            this.f26470b = new b();
        }
        return this.f26470b;
    }

    public String d() {
        return f().f26471a;
    }

    public String e() {
        return f().f26472b;
    }
}
