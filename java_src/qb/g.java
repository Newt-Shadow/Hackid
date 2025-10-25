package qb;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONArray;
import org.json.JSONObject;
import qb.f;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: f  reason: collision with root package name */
    public static final a f28674f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f28675a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28676b;

    /* renamed from: c  reason: collision with root package name */
    private final h f28677c;

    /* renamed from: d  reason: collision with root package name */
    private final List f28678d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28679e;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            m.e(context, "context");
            SharedPreferences.Editor edit = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0).edit();
            edit.clear();
            edit.commit();
        }

        public final g b(Context context) {
            String str;
            String str2;
            h hVar;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0);
            String string = sharedPreferences.getString("notificationContentTitle", null);
            if (string == null) {
                str = "";
            } else {
                str = string;
            }
            String string2 = sharedPreferences.getString("notificationContentText", null);
            if (string2 == null) {
                str2 = "";
            } else {
                str2 = string2;
            }
            String string3 = sharedPreferences.getString("icon", null);
            if (string3 != null) {
                hVar = h.f28680c.a(string3);
            } else {
                hVar = null;
            }
            String string4 = sharedPreferences.getString("buttons", null);
            ArrayList arrayList = new ArrayList();
            if (string4 != null) {
                JSONArray jSONArray = new JSONArray(string4);
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    f.a aVar = f.f28670d;
                    m.b(jSONObject);
                    arrayList.add(aVar.a(jSONObject));
                }
            }
            return new g(str, str2, hVar, arrayList, sharedPreferences.getString("initialRoute", null));
        }

        public final void c(Context context, Map map) {
            Object obj;
            String str;
            Object obj2;
            String str2;
            Object obj3;
            Map map2;
            String str3;
            Object obj4;
            List list;
            String str4;
            Object obj5;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0);
            String str5 = null;
            if (map != null) {
                obj = map.get("notificationContentTitle");
            } else {
                obj = null;
            }
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                str = null;
            }
            String str6 = "";
            if (str == null) {
                str = "";
            }
            if (map != null) {
                obj2 = map.get("notificationContentText");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof String) {
                str2 = (String) obj2;
            } else {
                str2 = null;
            }
            if (str2 != null) {
                str6 = str2;
            }
            if (map != null) {
                obj3 = map.get("icon");
            } else {
                obj3 = null;
            }
            if (obj3 instanceof Map) {
                map2 = (Map) obj3;
            } else {
                map2 = null;
            }
            if (map2 != null) {
                str3 = new JSONObject(map2).toString();
            } else {
                str3 = null;
            }
            if (map != null) {
                obj4 = map.get("buttons");
            } else {
                obj4 = null;
            }
            if (obj4 instanceof List) {
                list = (List) obj4;
            } else {
                list = null;
            }
            if (list != null) {
                str4 = new JSONArray((Collection) list).toString();
            } else {
                str4 = null;
            }
            if (map != null) {
                obj5 = map.get("initialRoute");
            } else {
                obj5 = null;
            }
            if (obj5 instanceof String) {
                str5 = (String) obj5;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("notificationContentTitle", str);
            edit.putString("notificationContentText", str6);
            edit.putString("icon", str3);
            edit.putString("buttons", str4);
            edit.putString("initialRoute", str5);
            edit.commit();
        }

        public final void d(Context context, Map map) {
            Object obj;
            String str;
            Object obj2;
            String str2;
            Object obj3;
            Map map2;
            String str3;
            Object obj4;
            List list;
            String str4;
            Object obj5;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS", 0);
            String str5 = null;
            if (map != null) {
                obj = map.get("notificationContentTitle");
            } else {
                obj = null;
            }
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                str = null;
            }
            if (map != null) {
                obj2 = map.get("notificationContentText");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof String) {
                str2 = (String) obj2;
            } else {
                str2 = null;
            }
            if (map != null) {
                obj3 = map.get("icon");
            } else {
                obj3 = null;
            }
            if (obj3 instanceof Map) {
                map2 = (Map) obj3;
            } else {
                map2 = null;
            }
            if (map2 != null) {
                str3 = new JSONObject(map2).toString();
            } else {
                str3 = null;
            }
            if (map != null) {
                obj4 = map.get("buttons");
            } else {
                obj4 = null;
            }
            if (obj4 instanceof List) {
                list = (List) obj4;
            } else {
                list = null;
            }
            if (list != null) {
                str4 = new JSONArray((Collection) list).toString();
            } else {
                str4 = null;
            }
            if (map != null) {
                obj5 = map.get("initialRoute");
            } else {
                obj5 = null;
            }
            if (obj5 instanceof String) {
                str5 = (String) obj5;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (str != null) {
                edit.putString("notificationContentTitle", str);
            }
            if (str2 != null) {
                edit.putString("notificationContentText", str2);
            }
            if (str3 != null) {
                edit.putString("icon", str3);
            }
            if (str4 != null) {
                edit.putString("buttons", str4);
            }
            if (str5 != null) {
                edit.putString("initialRoute", str5);
            }
            edit.commit();
        }
    }

    public g(String title, String text, h hVar, List buttons, String str) {
        m.e(title, "title");
        m.e(text, "text");
        m.e(buttons, "buttons");
        this.f28675a = title;
        this.f28676b = text;
        this.f28677c = hVar;
        this.f28678d = buttons;
        this.f28679e = str;
    }

    public final List a() {
        return this.f28678d;
    }

    public final h b() {
        return this.f28677c;
    }

    public final String c() {
        return this.f28679e;
    }

    public final String d() {
        return this.f28676b;
    }

    public final String e() {
        return this.f28675a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return m.a(this.f28675a, gVar.f28675a) && m.a(this.f28676b, gVar.f28676b) && m.a(this.f28677c, gVar.f28677c) && m.a(this.f28678d, gVar.f28678d) && m.a(this.f28679e, gVar.f28679e);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.f28675a.hashCode() * 31) + this.f28676b.hashCode()) * 31;
        h hVar = this.f28677c;
        int hashCode2 = (((hashCode + (hVar == null ? 0 : hVar.hashCode())) * 31) + this.f28678d.hashCode()) * 31;
        String str = this.f28679e;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "NotificationContent(title=" + this.f28675a + ", text=" + this.f28676b + ", icon=" + this.f28677c + ", buttons=" + this.f28678d + ", initialRoute=" + this.f28679e + ')';
    }
}
