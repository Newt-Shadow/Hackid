package lb;

import java.util.List;
import java.util.Map;
import java.util.Set;
import yc.m0;
/* loaded from: classes.dex */
public interface m {

    /* renamed from: a  reason: collision with root package name */
    public static final a f25459a = a.f25460a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f25460a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Set f25461b;

        static {
            Set d10;
            d10 = m0.d("groups", "anonymousId", "distinctId", "isIdentified", "personProcessingEnabled", "opt-out", "featureFlags", "featureFlagsPayload", "sessionReplay", "surveys", "surveySeen", "version", "build", "stringifiedKeys", "feature_flag_request_id", "flags");
            f25461b = d10;
        }

        private a() {
        }

        public final Set a() {
            return f25461b;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        public static /* synthetic */ Object a(m mVar, String str, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 2) != 0) {
                    obj = null;
                }
                return mVar.a(str, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getValue");
        }
    }

    Object a(String str, Object obj);

    void b(String str, Object obj);

    void c(List list);

    Map getAll();

    void remove(String str);
}
