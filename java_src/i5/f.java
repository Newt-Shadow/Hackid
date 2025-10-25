package i5;

import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static final q5.a f17264c = new q5.a("RevokeAccessOperation", new String[0]);

    /* renamed from: a  reason: collision with root package name */
    private final String f17265a;

    /* renamed from: b  reason: collision with root package name */
    private final m5.t f17266b = new m5.t(null);

    public f(String str) {
        this.f17265a = n5.q.e(str);
    }

    public static com.google.android.gms.common.api.h a(String str) {
        if (str == null) {
            return com.google.android.gms.common.api.i.a(new Status(4), null);
        }
        f fVar = new f(str);
        new Thread(fVar).start();
        return fVar.f17266b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f5867h;
        try {
            String str = this.f17265a;
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://accounts.google.com/o/oauth2/revoke?token=" + str).openConnection();
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f5865f;
            } else {
                f17264c.b("Unable to revoke access!", new Object[0]);
            }
            q5.a aVar = f17264c;
            aVar.a("Response Code: " + responseCode, new Object[0]);
        } catch (IOException e10) {
            f17264c.b("IOException when revoking access: ".concat(String.valueOf(e10.toString())), new Object[0]);
        } catch (Exception e11) {
            f17264c.b("Exception when revoking access: ".concat(String.valueOf(e11.toString())), new Object[0]);
        }
        this.f17266b.f(status);
    }
}
