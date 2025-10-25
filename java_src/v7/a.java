package v7;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import n7.g;
import r7.i;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f31265a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f31266b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f31267c = new HashMap();

    public a(String str, Map map) {
        this.f31265a = str;
        this.f31266b = map;
    }

    private String a(Map map) {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb2.append((String) entry.getKey());
        sb2.append("=");
        if (entry.getValue() == null) {
            str = "";
        } else {
            str = URLEncoder.encode((String) entry.getValue(), "UTF-8");
        }
        sb2.append(str);
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb2.append("&");
            sb2.append((String) entry2.getKey());
            sb2.append("=");
            if (entry2.getValue() == null) {
                str2 = "";
            } else {
                str2 = URLEncoder.encode((String) entry2.getValue(), "UTF-8");
            }
            sb2.append(str2);
        }
        return sb2.toString();
    }

    private String b(String str, Map map) {
        String a10 = a(map);
        if (a10.isEmpty()) {
            return str;
        }
        if (str.contains("?")) {
            if (!str.endsWith("&")) {
                a10 = "&" + a10;
            }
            return str + a10;
        }
        return str + "?" + a10;
    }

    private String e(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        char[] cArr = new char[8192];
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                sb2.append(cArr, 0, read);
            } else {
                return sb2.toString();
            }
        }
    }

    public c c() {
        HttpsURLConnection httpsURLConnection;
        i.d();
        InputStream inputStream = null;
        String e10 = null;
        inputStream = null;
        try {
            String b10 = b(this.f31265a, this.f31266b);
            g.f().i("GET Request URL: " + b10);
            httpsURLConnection = (HttpsURLConnection) new URL(b10).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : this.f31267c.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        e10 = e(inputStream2);
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new c(responseCode, e10);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
        }
    }

    public a d(String str, String str2) {
        this.f31267c.put(str, str2);
        return this;
    }
}
