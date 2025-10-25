package n0;

import androidx.datastore.preferences.protobuf.z;
import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26081a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a(InputStream input) {
            m.e(input, "input");
            try {
                f V = f.V(input);
                m.d(V, "{\n                Prefer…From(input)\n            }");
                return V;
            } catch (z e10) {
                throw new j0.d("Unable to parse preferences proto.", e10);
            }
        }
    }
}
