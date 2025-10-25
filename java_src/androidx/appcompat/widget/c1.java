package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class c1 extends ContextWrapper {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f1447c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static ArrayList f1448d;

    /* renamed from: a  reason: collision with root package name */
    private final Resources f1449a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources.Theme f1450b;

    private c1(Context context) {
        super(context);
        if (p1.c()) {
            p1 p1Var = new p1(this, context.getResources());
            this.f1449a = p1Var;
            Resources.Theme newTheme = p1Var.newTheme();
            this.f1450b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f1449a = new e1(this, context.getResources());
        this.f1450b = null;
    }

    private static boolean a(Context context) {
        if ((context instanceof c1) || (context.getResources() instanceof e1) || (context.getResources() instanceof p1) || !p1.c()) {
            return false;
        }
        return true;
    }

    public static Context b(Context context) {
        c1 c1Var;
        if (a(context)) {
            synchronized (f1447c) {
                ArrayList arrayList = f1448d;
                if (arrayList == null) {
                    f1448d = new ArrayList();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference weakReference = (WeakReference) f1448d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f1448d.remove(size);
                        }
                    }
                    for (int size2 = f1448d.size() - 1; size2 >= 0; size2--) {
                        WeakReference weakReference2 = (WeakReference) f1448d.get(size2);
                        if (weakReference2 != null) {
                            c1Var = (c1) weakReference2.get();
                        } else {
                            c1Var = null;
                        }
                        if (c1Var != null && c1Var.getBaseContext() == context) {
                            return c1Var;
                        }
                    }
                }
                c1 c1Var2 = new c1(context);
                f1448d.add(new WeakReference(c1Var2));
                return c1Var2;
            }
        }
        return context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1449a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1449a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1450b;
        if (theme == null) {
            return super.getTheme();
        }
        return theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        Resources.Theme theme = this.f1450b;
        if (theme == null) {
            super.setTheme(i10);
        } else {
            theme.applyStyle(i10, true);
        }
    }
}
