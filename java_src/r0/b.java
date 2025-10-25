package r0;

import android.text.Editable;
/* loaded from: classes.dex */
final class b extends Editable.Factory {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f28848a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile Editable.Factory f28849b;

    /* renamed from: c  reason: collision with root package name */
    private static Class f28850c;

    private b() {
        try {
            f28850c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f28849b == null) {
            synchronized (f28848a) {
                if (f28849b == null) {
                    f28849b = new b();
                }
            }
        }
        return f28849b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class cls = f28850c;
        if (cls != null) {
            return p0.c.c(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
