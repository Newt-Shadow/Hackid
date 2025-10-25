package t5;

import android.content.Context;
/* loaded from: classes.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static final e f29935b = new e();

    /* renamed from: a  reason: collision with root package name */
    private d f29936a = null;

    public static d a(Context context) {
        return f29935b.b(context);
    }

    public final synchronized d b(Context context) {
        if (this.f29936a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f29936a = new d(context);
        }
        return this.f29936a;
    }
}
