package sb;

import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0308a f29576a = new C0308a(null);

    /* renamed from: sb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0308a {
        private C0308a() {
        }

        public /* synthetic */ C0308a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(MethodChannel.Result result, Exception exception) {
            m.e(result, "result");
            m.e(exception, "exception");
            result.error(exception.getClass().getSimpleName(), exception.getMessage(), null);
        }
    }
}
