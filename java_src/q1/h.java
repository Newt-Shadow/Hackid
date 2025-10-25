package q1;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f27964a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ h b(a aVar, Object obj, String str, j jVar, g gVar, int i10, Object obj2) {
            if ((i10 & 2) != 0) {
                jVar = c.f27947a.a();
            }
            if ((i10 & 4) != 0) {
                gVar = q1.a.f27942a;
            }
            return aVar.a(obj, str, jVar, gVar);
        }

        public final h a(Object obj, String tag, j verificationMode, g logger) {
            m.e(obj, "<this>");
            m.e(tag, "tag");
            m.e(verificationMode, "verificationMode");
            m.e(logger, "logger");
            return new i(obj, tag, verificationMode, logger);
        }
    }

    public abstract Object a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(Object value, String message) {
        m.e(value, "value");
        m.e(message, "message");
        return message + " value: " + value;
    }

    public abstract h c(String str, id.l lVar);
}
