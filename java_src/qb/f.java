package qb;

import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: d  reason: collision with root package name */
    public static final a f28670d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f28671a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28672b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28673c;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a(JSONObject jsonObj) {
            String string;
            String string2;
            String string3;
            m.e(jsonObj, "jsonObj");
            if (jsonObj.isNull(Chapter.KEY_ID)) {
                string = CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
            } else {
                string = jsonObj.getString(Chapter.KEY_ID);
                m.b(string);
            }
            if (jsonObj.isNull("text")) {
                string2 = "";
            } else {
                string2 = jsonObj.getString("text");
                m.b(string2);
            }
            if (jsonObj.isNull("textColorRgb")) {
                string3 = null;
            } else {
                string3 = jsonObj.getString("textColorRgb");
            }
            return new f(string, string2, string3);
        }
    }

    public f(String id2, String text, String str) {
        m.e(id2, "id");
        m.e(text, "text");
        this.f28671a = id2;
        this.f28672b = text;
        this.f28673c = str;
    }

    public final String a() {
        return this.f28671a;
    }

    public final String b() {
        return this.f28672b;
    }

    public final String c() {
        return this.f28673c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (!m.a(this.f28671a, fVar.f28671a) || !m.a(this.f28672b, fVar.f28672b) || !m.a(this.f28673c, fVar.f28673c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.f28671a, this.f28672b, this.f28673c);
    }

    public String toString() {
        return "NotificationButton(id=" + this.f28671a + ", text=" + this.f28672b + ", textColorRgb=" + this.f28673c + ')';
    }
}
