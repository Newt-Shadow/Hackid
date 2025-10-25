package eb;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public enum f {
    SNAPSHOT("$snapshot"),
    SET("$set"),
    IDENTIFY("$identify"),
    SCREEN("$screen"),
    GROUP_IDENTIFY("$groupidentify"),
    CREATE_ALIAS("$create_alias"),
    FEATURE_FLAG_CALLED("$feature_flag_called");
    

    /* renamed from: b  reason: collision with root package name */
    public static final a f15511b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f15520a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(String event) {
            f fVar;
            m.e(event, "event");
            f[] values = f.values();
            int length = values.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    fVar = values[i10];
                    if (m.a(fVar.b(), event)) {
                        break;
                    }
                    i10++;
                } else {
                    fVar = null;
                    break;
                }
            }
            if (fVar == null) {
                return false;
            }
            return true;
        }
    }

    f(String str) {
        this.f15520a = str;
    }

    public final String b() {
        return this.f15520a;
    }
}
