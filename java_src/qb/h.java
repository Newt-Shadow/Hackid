package qb;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    public static final a f28680c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f28681a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28682b;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a(String jsonString) {
            String string;
            String string2;
            m.e(jsonString, "jsonString");
            JSONObject jSONObject = new JSONObject(jsonString);
            if (jSONObject.isNull("metaDataName")) {
                string = "";
            } else {
                string = jSONObject.getString("metaDataName");
                m.b(string);
            }
            if (jSONObject.isNull("backgroundColorRgb")) {
                string2 = null;
            } else {
                string2 = jSONObject.getString("backgroundColorRgb");
            }
            return new h(string, string2);
        }
    }

    public h(String metaDataName, String str) {
        m.e(metaDataName, "metaDataName");
        this.f28681a = metaDataName;
        this.f28682b = str;
    }

    public final String a() {
        return this.f28682b;
    }

    public final String b() {
        return this.f28681a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return m.a(this.f28681a, hVar.f28681a) && m.a(this.f28682b, hVar.f28682b);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f28681a.hashCode() * 31;
        String str = this.f28682b;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "NotificationIcon(metaDataName=" + this.f28681a + ", backgroundColorRgb=" + this.f28682b + ')';
    }
}
