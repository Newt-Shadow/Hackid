package g;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0170a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f16070a;

        public C0170a(Object obj) {
            this.f16070a = obj;
        }

        public final Object a() {
            return this.f16070a;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public C0170a b(Context context, Object obj) {
        m.e(context, "context");
        return null;
    }

    public abstract Object c(int i10, Intent intent);
}
