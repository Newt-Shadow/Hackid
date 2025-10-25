package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.arthenica.ffmpegkit.StreamInformation;
import com.yandex.metrica.impl.ob.C1029zl;
import com.yandex.metrica.impl.ob.If;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Tl {

    /* loaded from: classes2.dex */
    public static class a extends JSONObject {
        public a() {
        }

        public Long a(String str) {
            try {
                return Long.valueOf(getLong(str));
            } catch (Throwable unused) {
                return null;
            }
        }

        public String b(String str) {
            if (!has(str) || !has(str)) {
                return "";
            }
            try {
                return getString(str);
            } catch (Throwable unused) {
                return "";
            }
        }

        public String c(String str) {
            if (has(str)) {
                try {
                    return getString(str);
                } catch (Throwable unused) {
                }
            }
            return "";
        }

        public boolean d(String str) {
            try {
                if (JSONObject.NULL == get(str)) {
                    return false;
                }
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        public a(String str) {
            super(str);
        }
    }

    public static <T> T a(T t10, T t11) {
        return t10 == null ? t11 : t10;
    }

    public static byte[] b(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.reset();
        messageDigest.update(str.getBytes("UTF-8"));
        return messageDigest.digest();
    }

    public static String c(Map<String, String> map) {
        if (A2.b(map)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(":");
            sb2.append(entry.getValue());
            sb2.append(StringUtils.COMMA);
        }
        sb2.setLength(sb2.length() - 1);
        return sb2.toString();
    }

    public static boolean d(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return false;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                Integer.parseInt(entry.getValue());
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }

    public static JSONObject e(Map map) {
        if (A2.b(map)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONObject(map);
        }
        return h(map);
    }

    public static JSONObject f(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return new JSONObject();
        }
        return e(map);
    }

    public static String g(Map map) {
        if (A2.b(map)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONObject(map).toString();
        }
        return a((Object) map).toString();
    }

    private static JSONObject h(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String obj = entry.getKey().toString();
            if (obj != null) {
                linkedHashMap.put(obj, a(entry.getValue()));
            }
        }
        return new JSONObject(linkedHashMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        if (r2 != (-1)) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> i(java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            if (r8 == 0) goto L6e
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        Lf:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L6e
            java.lang.Object r1 = r8.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L43
            java.lang.String r3 = ":"
            boolean r3 = r2.contains(r3)
            if (r3 != 0) goto L43
            java.lang.String r3 = ","
            boolean r3 = r2.contains(r3)
            if (r3 != 0) goto L43
            java.lang.String r3 = "&"
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L43
            r2 = r4
            goto L44
        L43:
            r2 = r5
        L44:
            if (r2 == 0) goto Lf
            java.lang.Object r2 = r1.getValue()
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L5f
            r6 = -1
            long r2 = java.lang.Long.parseLong(r2)     // Catch: java.lang.NumberFormatException -> L59
            goto L5a
        L59:
            r2 = r6
        L5a:
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 == 0) goto L5f
            goto L60
        L5f:
            r4 = r5
        L60:
            if (r4 == 0) goto Lf
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getValue()
            r0.put(r2, r1)
            goto Lf
        L6e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Tl.i(java.util.Map):java.util.Map");
    }

    public static String a(Context context, String str) {
        byte[] a10 = a(context, Base64.decode(str.getBytes("UTF-8"), 0));
        if (a10 != null) {
            try {
                return new String(L0.a(new String(a10, "UTF-8")), "UTF-8");
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static HashMap<String, String> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return b(new JSONObject(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static C0447c2 f(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            return new C0447c2(jSONObject.optInt(StreamInformation.KEY_WIDTH), jSONObject.optInt(StreamInformation.KEY_HEIGHT), jSONObject.optInt("dpi"), (float) jSONObject.optDouble("scaleFactor", 0.0d), com.yandex.metrica.c.a(jSONObject.optString("deviceType")));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context, String str) {
        String str2;
        try {
            str2 = L0.a(str.getBytes("UTF-8"));
        } catch (Throwable unused) {
            str2 = null;
        }
        return Base64.encodeToString(a(context, str2.getBytes("UTF-8")), 0);
    }

    public static HashMap<String, String> e(String str) {
        return b(new JSONObject(str));
    }

    public static Map<String, String> a(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(StringUtils.COMMA)) {
                int indexOf = str2.indexOf(":");
                if (indexOf != -1) {
                    hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                }
            }
        }
        return hashMap;
    }

    public static String c(List<String> list) {
        if (A2.b(list)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONArray((Collection) list).toString();
        }
        return a((Object) list).toString();
    }

    private static JSONArray b(Collection<?> collection) {
        if (collection == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return new JSONArray((Collection) arrayList);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static List<String> c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    try {
                        arrayList.add(jSONArray.getString(i10));
                    } catch (Throwable unused) {
                        return arrayList;
                    }
                }
                return arrayList;
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static JSONArray b(List<?> list) {
        if (A2.b(list)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONArray((Collection) list);
        }
        return b((Collection<?>) list);
    }

    public static long a(Long l10, TimeUnit timeUnit, long j10) {
        return l10 == null ? j10 : timeUnit.toMillis(l10.longValue());
    }

    private static byte[] a(Context context, byte[] bArr) {
        try {
            byte[] b10 = b(context.getPackageName());
            byte[] bArr2 = new byte[bArr.length];
            for (int i10 = 0; i10 < bArr.length; i10++) {
                bArr2[i10] = (byte) (bArr[i10] ^ b10[i10 % b10.length]);
            }
            return bArr2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static C0541fl c(JSONObject jSONObject) {
        C0957wl c0957wl;
        If.i iVar = new If.i();
        JSONObject optJSONObject = jSONObject.optJSONObject("upc");
        JSONObject optJSONObject2 = jSONObject.optJSONObject("uecc");
        JSONObject optJSONObject3 = jSONObject.optJSONObject("ucfbc");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ruecc");
        boolean optBoolean = jSONObject.optBoolean("upe", iVar.f10295o);
        boolean optBoolean2 = jSONObject.optBoolean("uece", iVar.f10296p);
        boolean optBoolean3 = jSONObject.optBoolean("ucfbe", iVar.f10297q);
        boolean optBoolean4 = jSONObject.optBoolean("ruece", iVar.f10301u);
        if (optJSONObject == null) {
            c0957wl = null;
        } else {
            If.w wVar = new If.w();
            c0957wl = new C0957wl(optJSONObject.optInt("tltb", wVar.f10393a), optJSONObject.optInt("ttb", wVar.f10394b), optJSONObject.optInt("mvcl", wVar.f10395c), optJSONObject.optLong("act", wVar.f10396d), optJSONObject.optBoolean("rtsc", wVar.f10397e), optJSONObject.optBoolean("er", wVar.f10398f), optJSONObject.optBoolean("pabd", wVar.f10399g), a(optJSONObject.optJSONArray("f")));
        }
        return new C0541fl(optBoolean, optBoolean2, optBoolean3, optBoolean4, c0957wl, optJSONObject2 == null ? null : a(optJSONObject2, C0694m0.b()), optJSONObject3 == null ? null : a(optJSONObject3, C0694m0.a()), optJSONObject4 != null ? a(optJSONObject4, C0694m0.b()) : null);
    }

    public static HashMap<String, String> b(JSONObject jSONObject) {
        if (JSONObject.NULL.equals(jSONObject)) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    public static Object a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                ArrayList arrayList = new ArrayList(length);
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(a(Array.get(obj, i10)));
                }
                return new JSONArray((Collection) arrayList);
            } else if (obj instanceof Collection) {
                return b((Collection) obj);
            } else {
                return obj instanceof Map ? h((Map) obj) : obj;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return jSONObject.getString(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static List<String> b(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            arrayList.add(jSONArray.getString(i10));
        }
        return arrayList;
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        return map.isEmpty() ? "" : g(map);
    }

    public static Long a(JSONObject jSONObject, String str, Long l10) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return l10;
        }
        try {
            return Long.valueOf(jSONObject.getLong(str));
        } catch (Throwable unused) {
            return l10;
        }
    }

    public static String b(Map<String, List<String>> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                JSONArray b10 = b((List<?>) entry.getValue());
                if (b10 != null) {
                    jSONObject.put(entry.getKey(), b10.toString());
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public static String a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        String b10 = b(jSONObject, str);
        if (jSONObject2 == null || !jSONObject2.has(str)) {
            return b10;
        }
        try {
            return jSONObject2.getString(str);
        } catch (Throwable unused) {
            return b10;
        }
    }

    public static Integer a(JSONObject jSONObject, String str, Integer num) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return num;
        }
        try {
            return Integer.valueOf(jSONObject.getInt(str));
        } catch (Throwable unused) {
            return num;
        }
    }

    public static boolean a(JSONObject jSONObject, String str, boolean z10) {
        Boolean a10 = a(jSONObject, str, (Boolean) null);
        return a10 == null ? z10 : a10.booleanValue();
    }

    public static Boolean a(JSONObject jSONObject, String str, Boolean bool) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return bool;
        }
        try {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        } catch (Throwable unused) {
            return bool;
        }
    }

    public static JSONArray a(Collection<C0907uj> collection) {
        JSONArray jSONArray = new JSONArray();
        if (collection != null) {
            for (C0907uj c0907uj : collection) {
                try {
                    jSONArray.put(a(c0907uj));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject a(C0907uj c0907uj) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cell_id", c0907uj.b());
        jSONObject.put("signal_strength", c0907uj.p());
        jSONObject.put("lac", c0907uj.e());
        jSONObject.put("country_code", c0907uj.k());
        jSONObject.put("operator_id", c0907uj.l());
        jSONObject.put("operator_name", c0907uj.n());
        jSONObject.put("is_connected", c0907uj.q());
        jSONObject.put("cell_type", c0907uj.c());
        jSONObject.put("pci", c0907uj.o());
        jSONObject.put("last_visible_time_offset", c0907uj.d());
        jSONObject.put("lte_rsrq", c0907uj.h());
        jSONObject.put("lte_rssnr", c0907uj.j());
        jSONObject.put("arfcn", c0907uj.a());
        jSONObject.put("lte_rssi", c0907uj.i());
        jSONObject.put("lte_bandwidth", c0907uj.f());
        jSONObject.put("lte_cqi", c0907uj.g());
        return jSONObject;
    }

    public static JSONObject a(C0541fl c0541fl) {
        JSONObject put = new JSONObject().put("upe", c0541fl.f12422a).put("uece", c0541fl.f12423b).put("ruece", c0541fl.f12425d).put("ucfbe", c0541fl.f12424c);
        C0957wl c0957wl = c0541fl.f12426e;
        JSONObject putOpt = put.putOpt("upc", c0957wl == null ? null : new JSONObject().put("tltb", c0957wl.f13901a).put("ttb", c0957wl.f13902b).put("mvcl", c0957wl.f13903c).put("act", c0957wl.f13904d).put("rtsc", c0957wl.f13905e).put("er", c0957wl.f13906f).put("pabd", c0957wl.f13907g).put("f", a(c0957wl.f13908h)));
        C0591hl c0591hl = c0541fl.f12427f;
        JSONObject putOpt2 = putOpt.putOpt("uecc", c0591hl == null ? null : a(c0591hl));
        C0591hl c0591hl2 = c0541fl.f12429h;
        JSONObject putOpt3 = putOpt2.putOpt("ruecc", c0591hl2 == null ? null : a(c0591hl2));
        C0591hl c0591hl3 = c0541fl.f12428g;
        return putOpt3.putOpt("ucfbc", c0591hl3 != null ? a(c0591hl3) : null);
    }

    private static JSONObject a(C0591hl c0591hl) {
        return new JSONObject().put("tsc", c0591hl.f12558a).put("rtsc1", c0591hl.f12559b).put("tvc", c0591hl.f12560c).put("tsc1", c0591hl.f12561d).put("ic", c0591hl.f12562e).put("ncvc", c0591hl.f12563f).put("tlc", c0591hl.f12564g).put("vh", c0591hl.f12565h).put("if", c0591hl.f12566i).put("wvuc", c0591hl.f12567j).put("tltb", c0591hl.f12568k).put("ttb", c0591hl.f12569l).put("mec", c0591hl.f12570m).put("mfcl", c0591hl.f12571n).put("wvul", c0591hl.f12572o).put("f", a(c0591hl.f12573p));
    }

    private static C0591hl a(JSONObject jSONObject, If.v vVar) {
        return new C0591hl(jSONObject.optBoolean("tsc", vVar.f10377a), jSONObject.optBoolean("rtsc1", vVar.f10378b), jSONObject.optBoolean("tvc", vVar.f10379c), jSONObject.optBoolean("tsc1", vVar.f10380d), jSONObject.optBoolean("ic", vVar.f10385i), jSONObject.optBoolean("ncvc", vVar.f10386j), jSONObject.optBoolean("tlc", vVar.f10387k), jSONObject.optBoolean("vh", vVar.f10388l), jSONObject.optBoolean("if", vVar.f10390n), jSONObject.optBoolean("wvuc", vVar.f10391o), jSONObject.optInt("tltb", vVar.f10381e), jSONObject.optInt("ttb", vVar.f10382f), jSONObject.optInt("mec", vVar.f10383g), jSONObject.optInt("mfcl", vVar.f10384h), jSONObject.optInt("wvul", vVar.f10392p), a(jSONObject.optJSONArray("f")));
    }

    private static JSONArray a(List<C1029zl> list) {
        JSONArray jSONArray = new JSONArray();
        for (C1029zl c1029zl : list) {
            try {
                jSONArray.put(new JSONObject().put("ft", c1029zl.f14084a.f14091a).put("fv", c1029zl.f14085b));
            } catch (Throwable unused) {
            }
        }
        return jSONArray;
    }

    private static List<C1029zl> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    arrayList.add(new C1029zl(C1029zl.b.a(jSONObject.getInt("ft")), jSONObject.optString("fv")));
                } catch (Throwable unused) {
                }
            }
        }
        return arrayList;
    }

    public static C0826ra a(JSONObject jSONObject) {
        return new C0826ra(a(jSONObject, "activation"), a(jSONObject, "satellite_clids"), a(jSONObject, "preload_info"));
    }

    public static JSONObject a(C0826ra c0826ra) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("activation", a(c0826ra.f13490a));
            jSONObject.putOpt("preload_info", a(c0826ra.f13492c));
            jSONObject.putOpt("satellite_clids", a(c0826ra.f13491b));
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static C0803qa a(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            return new C0803qa(optJSONObject.optLong("exp_t"), optJSONObject.optInt("interval"));
        }
        return null;
    }

    private static JSONObject a(C0803qa c0803qa) {
        if (c0803qa == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("exp_t", c0803qa.f13255a).put("interval", c0803qa.f13256b);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static String a(C0447c2 c0447c2) {
        JSONObject jSONObject;
        if (c0447c2 == null) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(StreamInformation.KEY_WIDTH, c0447c2.e()).put(StreamInformation.KEY_HEIGHT, c0447c2.c()).put("dpi", c0447c2.b()).put("scaleFactor", c0447c2.d()).putOpt("deviceType", c0447c2.a() == null ? null : c0447c2.a().b());
            } catch (Throwable unused) {
            }
        }
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.toString();
    }
}
