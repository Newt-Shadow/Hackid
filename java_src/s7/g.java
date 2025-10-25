package s7;

import io.flutter.plugins.firebase.analytics.Constants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f29492b = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final w7.g f29493a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends JSONObject {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29494a;

        a(String str) {
            this.f29494a = str;
            put(Constants.USER_ID, str);
        }
    }

    public g(w7.g gVar) {
        this.f29493a = gVar;
    }

    private static Map e(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, p(jSONObject, next));
        }
        return hashMap;
    }

    private static List f(String str) {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String string = jSONArray.getString(i10);
            try {
                arrayList.add(j.a(string));
            } catch (Exception e10) {
                n7.g f10 = n7.g.f();
                f10.l("Failed de-serializing rollouts state. " + string, e10);
            }
        }
        return arrayList;
    }

    private String g(String str) {
        return p(new JSONObject(str), Constants.USER_ID);
    }

    private static String h(Map map) {
        return new JSONObject(map).toString();
    }

    private static String l(List list) {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                jSONArray.put(new JSONObject(j.f29520a.b(list.get(i10))));
            } catch (JSONException e10) {
                n7.g.f().l("Exception parsing rollout assignment!", e10);
            }
        }
        hashMap.put("rolloutsState", jSONArray);
        return new JSONObject(hashMap).toString();
    }

    private static void m(File file) {
        if (file.exists() && file.delete()) {
            n7.g f10 = n7.g.f();
            f10.g("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static void n(File file, String str) {
        if (file.exists() && file.delete()) {
            n7.g.f().g(String.format("Deleted corrupt file: %s\nReason: %s", file.getAbsolutePath(), str));
        }
    }

    private static String o(String str) {
        return new a(str).toString();
    }

    private static String p(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public File a(String str) {
        return this.f29493a.q(str, "internal-keys");
    }

    public File b(String str) {
        return this.f29493a.q(str, "keys");
    }

    public File c(String str) {
        return this.f29493a.q(str, "rollouts-state");
    }

    public File d(String str) {
        return this.f29493a.q(str, "user-data");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map i(String str, boolean z10) {
        File b10;
        FileInputStream fileInputStream;
        Throwable th;
        Exception e10;
        if (z10) {
            b10 = a(str);
        } else {
            b10 = b(str);
        }
        if (b10.exists() && b10.length() != 0) {
            try {
                fileInputStream = new FileInputStream(b10);
                try {
                    try {
                        Map e11 = e(q7.j.B(fileInputStream));
                        q7.j.f(fileInputStream, "Failed to close user metadata file.");
                        return e11;
                    } catch (Exception e12) {
                        e10 = e12;
                        n7.g.f().l("Error deserializing user metadata.", e10);
                        m(b10);
                        q7.j.f(fileInputStream, "Failed to close user metadata file.");
                        return Collections.emptyMap();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    q7.j.f(fileInputStream, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e13) {
                fileInputStream = null;
                e10 = e13;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                q7.j.f(fileInputStream, "Failed to close user metadata file.");
                throw th;
            }
        } else {
            n(b10, "The file has a length of zero for session: " + str);
            return Collections.emptyMap();
        }
    }

    public List j(String str) {
        FileInputStream fileInputStream;
        File c10 = c(str);
        if (c10.exists() && c10.length() != 0) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(c10);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                List f10 = f(q7.j.B(fileInputStream));
                n7.g f11 = n7.g.f();
                f11.b("Loaded rollouts state:\n" + f10 + "\nfor session " + str);
                q7.j.f(fileInputStream, "Failed to close rollouts state file.");
                return f10;
            } catch (Exception e11) {
                e = e11;
                fileInputStream2 = fileInputStream;
                n7.g.f().l("Error deserializing rollouts state.", e);
                m(c10);
                q7.j.f(fileInputStream2, "Failed to close rollouts state file.");
                return Collections.emptyList();
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                q7.j.f(fileInputStream2, "Failed to close rollouts state file.");
                throw th;
            }
        }
        n(c10, "The file has a length of zero for session: " + str);
        return Collections.emptyList();
    }

    public String k(String str) {
        FileInputStream fileInputStream;
        File d10 = d(str);
        FileInputStream fileInputStream2 = null;
        if (d10.exists() && d10.length() != 0) {
            try {
                fileInputStream = new FileInputStream(d10);
                try {
                    try {
                        String g10 = g(q7.j.B(fileInputStream));
                        n7.g.f().b("Loaded userId " + g10 + " for session " + str);
                        q7.j.f(fileInputStream, "Failed to close user metadata file.");
                        return g10;
                    } catch (Exception e10) {
                        e = e10;
                        n7.g.f().l("Error deserializing user metadata.", e);
                        m(d10);
                        q7.j.f(fileInputStream, "Failed to close user metadata file.");
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    q7.j.f(fileInputStream2, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                q7.j.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } else {
            n7.g.f().b("No userId set for session " + str);
            m(d10);
            return null;
        }
    }

    public void q(String str, Map map) {
        r(str, map, false);
    }

    public void r(String str, Map map, boolean z10) {
        File b10;
        String h10;
        BufferedWriter bufferedWriter;
        if (z10) {
            b10 = a(str);
        } else {
            b10 = b(str);
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                h10 = h(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b10), f29492b));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            bufferedWriter.write(h10);
            bufferedWriter.flush();
            q7.j.f(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            n7.g.f().l("Error serializing key/value metadata.", e);
            m(b10);
            q7.j.f(bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            q7.j.f(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    public void s(String str, List list) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e10;
        File c10 = c(str);
        if (list.isEmpty()) {
            n(c10, "Rollout state is empty for session: " + str);
            return;
        }
        try {
            String l10 = l(list);
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c10), f29492b));
            try {
                try {
                    bufferedWriter.write(l10);
                    bufferedWriter.flush();
                } catch (Exception e11) {
                    e10 = e11;
                    n7.g.f().l("Error serializing rollouts state.", e10);
                    m(c10);
                    q7.j.f(bufferedWriter, "Failed to close rollouts state file.");
                }
            } catch (Throwable th2) {
                th = th2;
                q7.j.f(bufferedWriter, "Failed to close rollouts state file.");
                throw th;
            }
        } catch (Exception e12) {
            bufferedWriter = null;
            e10 = e12;
        } catch (Throwable th3) {
            bufferedWriter = null;
            th = th3;
            q7.j.f(bufferedWriter, "Failed to close rollouts state file.");
            throw th;
        }
        q7.j.f(bufferedWriter, "Failed to close rollouts state file.");
    }

    public void t(String str, String str2) {
        String o10;
        BufferedWriter bufferedWriter;
        File d10 = d(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                o10 = o(str2);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d10), f29492b));
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(o10);
            bufferedWriter.flush();
            q7.j.f(bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            n7.g.f().l("Error serializing user metadata.", e);
            q7.j.f(bufferedWriter2, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            q7.j.f(bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
