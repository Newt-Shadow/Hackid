package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import h.i;
/* loaded from: classes.dex */
public class d extends ContextWrapper {

    /* renamed from: f  reason: collision with root package name */
    private static Configuration f849f;

    /* renamed from: a  reason: collision with root package name */
    private int f850a;

    /* renamed from: b  reason: collision with root package name */
    private Resources.Theme f851b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f852c;

    /* renamed from: d  reason: collision with root package name */
    private Configuration f853d;

    /* renamed from: e  reason: collision with root package name */
    private Resources f854e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static Context a(d dVar, Configuration configuration) {
            return dVar.createConfigurationContext(configuration);
        }
    }

    public d(Context context, int i10) {
        super(context);
        this.f850a = i10;
    }

    private Resources b() {
        if (this.f854e == null) {
            Configuration configuration = this.f853d;
            if (configuration != null && (Build.VERSION.SDK_INT < 26 || !e(configuration))) {
                this.f854e = a.a(this, this.f853d).getResources();
            } else {
                this.f854e = super.getResources();
            }
        }
        return this.f854e;
    }

    private void d() {
        boolean z10;
        if (this.f851b == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f851b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f851b.setTo(theme);
            }
        }
        f(this.f851b, this.f850a, z10);
    }

    private static boolean e(Configuration configuration) {
        if (configuration == null) {
            return true;
        }
        if (f849f == null) {
            Configuration configuration2 = new Configuration();
            configuration2.fontScale = 0.0f;
            f849f = configuration2;
        }
        return configuration.equals(f849f);
    }

    public void a(Configuration configuration) {
        if (this.f854e == null) {
            if (this.f853d == null) {
                this.f853d = new Configuration(configuration);
                return;
            }
            throw new IllegalStateException("Override configuration has already been set");
        }
        throw new IllegalStateException("getResources() or getAssets() has already been called");
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.f850a;
    }

    protected void f(Resources.Theme theme, int i10, boolean z10) {
        theme.applyStyle(i10, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f852c == null) {
                this.f852c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f852c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f851b;
        if (theme != null) {
            return theme;
        }
        if (this.f850a == 0) {
            this.f850a = i.f16579e;
        }
        d();
        return this.f851b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        if (this.f850a != i10) {
            this.f850a = i10;
            d();
        }
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f851b = theme;
    }
}
