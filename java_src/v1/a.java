package v1;

import androidx.window.extensions.layout.WindowLayoutComponent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class a implements u1.a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0347a f31155a = new C0347a(null);

    /* renamed from: v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0347a {
        private C0347a() {
        }

        public /* synthetic */ C0347a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final u1.a a(WindowLayoutComponent component, q1.d adapter) {
            m.e(component, "component");
            m.e(adapter, "adapter");
            int a10 = q1.e.f27955a.a();
            if (a10 >= 2) {
                return new e(component);
            }
            if (a10 == 1) {
                return new d(component, adapter);
            }
            return new c();
        }
    }
}
