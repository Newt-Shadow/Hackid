package qb;

import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    public static final a f28654c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final d f28655a;

    /* renamed from: b  reason: collision with root package name */
    private final long f28656b;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(String jsonString) {
            d a10;
            long j10;
            m.e(jsonString, "jsonString");
            JSONObject jSONObject = new JSONObject(jsonString);
            if (jSONObject.isNull("taskEventType")) {
                a10 = d.f28658c;
            } else {
                a10 = d.f28657b.a(jSONObject.getInt("taskEventType"));
            }
            if (jSONObject.isNull("taskEventInterval")) {
                j10 = 5000;
            } else {
                j10 = jSONObject.getInt("taskEventInterval");
            }
            return new c(a10, j10);
        }
    }

    public c(d type, long j10) {
        m.e(type, "type");
        this.f28655a = type;
        this.f28656b = j10;
    }

    public final long a() {
        return this.f28656b;
    }

    public final d b() {
        return this.f28655a;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f28655a.b() != cVar.f28655a.b() || this.f28656b != cVar.f28656b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f28655a.b()), Long.valueOf(this.f28656b));
    }

    public String toString() {
        return "ForegroundTaskEventAction(type=" + this.f28655a + ", interval=" + this.f28656b + ')';
    }
}
