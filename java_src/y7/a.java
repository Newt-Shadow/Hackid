package y7;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final File f33028a;

    public a(w7.g gVar) {
        this.f33028a = gVar.g("com.crashlytics.settings.json");
    }

    private File a() {
        return this.f33028a;
    }

    public JSONObject b() {
        Throwable th;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        n7.g.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File a10 = a();
                if (a10.exists()) {
                    fileInputStream = new FileInputStream(a10);
                    try {
                        jSONObject = new JSONObject(q7.j.B(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e10) {
                        e = e10;
                        n7.g.f().e("Failed to fetch cached settings", e);
                        q7.j.f(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    n7.g.f().i("Settings file does not exist.");
                    jSONObject = null;
                }
                q7.j.f(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                q7.j.f(null, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            q7.j.f(null, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void c(long j10, JSONObject jSONObject) {
        FileWriter fileWriter;
        n7.g.f().i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            try {
                try {
                    jSONObject.put("expires_at", j10);
                    fileWriter = new FileWriter(a());
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e10) {
                e = e10;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                q7.j.f(fileWriter, "Failed to close settings writer.");
            } catch (Exception e11) {
                e = e11;
                fileWriter2 = fileWriter;
                n7.g.f().e("Failed to cache settings", e);
                q7.j.f(fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                q7.j.f(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
