package io.sentry.transport;

import io.sentry.ILogger;
import io.sentry.a3;
import io.sentry.a4;
import io.sentry.j5;
import io.sentry.s5;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.tika.metadata.HttpHeaders;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: e  reason: collision with root package name */
    private static final Charset f23719e = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Proxy f23720a;

    /* renamed from: b  reason: collision with root package name */
    private final a3 f23721b;

    /* renamed from: c  reason: collision with root package name */
    private final s5 f23722c;

    /* renamed from: d  reason: collision with root package name */
    private final z f23723d;

    public o(s5 s5Var, a3 a3Var, z zVar) {
        this(s5Var, a3Var, m.a(), zVar);
    }

    private void a(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
        httpURLConnection.disconnect();
    }

    private HttpURLConnection b() {
        HttpURLConnection e10 = e();
        for (Map.Entry entry : this.f23721b.a().entrySet()) {
            e10.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        e10.setRequestMethod("POST");
        e10.setDoOutput(true);
        e10.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
        e10.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-sentry-envelope");
        e10.setRequestProperty("Accept", "application/json");
        e10.setRequestProperty("Connection", "close");
        e10.setConnectTimeout(this.f23722c.getConnectionTimeoutMillis());
        e10.setReadTimeout(this.f23722c.getReadTimeoutMillis());
        SSLSocketFactory sslSocketFactory = this.f23722c.getSslSocketFactory();
        if ((e10 instanceof HttpsURLConnection) && sslSocketFactory != null) {
            ((HttpsURLConnection) e10).setSSLSocketFactory(sslSocketFactory);
        }
        e10.connect();
        return e10;
    }

    private String c(HttpURLConnection httpURLConnection) {
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f23719e));
            try {
                StringBuilder sb2 = new StringBuilder();
                boolean z10 = true;
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if (!z10) {
                        sb2.append("\n");
                    }
                    sb2.append(readLine);
                    z10 = false;
                }
                String sb3 = sb2.toString();
                bufferedReader.close();
                if (errorStream != null) {
                    errorStream.close();
                }
                return sb3;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return "Failed to obtain error message while analyzing send failure.";
        }
    }

    private boolean d(int i10) {
        return i10 == 200;
    }

    private b0 f(HttpURLConnection httpURLConnection) {
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                i(httpURLConnection, responseCode);
                if (!d(responseCode)) {
                    ILogger logger = this.f23722c.getLogger();
                    j5 j5Var = j5.ERROR;
                    logger.c(j5Var, "Request failed, API returned %s", Integer.valueOf(responseCode));
                    if (this.f23722c.isDebug()) {
                        this.f23722c.getLogger().c(j5Var, "%s", c(httpURLConnection));
                    }
                    return b0.b(responseCode);
                }
                this.f23722c.getLogger().c(j5.DEBUG, "Envelope sent successfully.", new Object[0]);
                return b0.e();
            } catch (IOException e10) {
                this.f23722c.getLogger().a(j5.ERROR, e10, "Error reading and logging the response stream", new Object[0]);
                a(httpURLConnection);
                return b0.a();
            }
        } finally {
            a(httpURLConnection);
        }
    }

    private Proxy g(s5.i iVar) {
        Proxy.Type type;
        if (iVar != null) {
            String c10 = iVar.c();
            String a10 = iVar.a();
            if (c10 != null && a10 != null) {
                try {
                    if (iVar.d() != null) {
                        type = iVar.d();
                    } else {
                        type = Proxy.Type.HTTP;
                    }
                    return new Proxy(type, new InetSocketAddress(a10, Integer.parseInt(c10)));
                } catch (NumberFormatException e10) {
                    ILogger logger = this.f23722c.getLogger();
                    j5 j5Var = j5.ERROR;
                    logger.a(j5Var, e10, "Failed to parse Sentry Proxy port: " + iVar.c() + ". Proxy is ignored", new Object[0]);
                }
            }
        }
        return null;
    }

    HttpURLConnection e() {
        URLConnection openConnection;
        if (this.f23720a == null) {
            openConnection = this.f23721b.b().openConnection();
        } else {
            openConnection = this.f23721b.b().openConnection(this.f23720a);
        }
        return (HttpURLConnection) openConnection;
    }

    public b0 h(a4 a4Var) {
        HttpURLConnection b10;
        OutputStream outputStream;
        GZIPOutputStream gZIPOutputStream;
        try {
            outputStream = b().getOutputStream();
            gZIPOutputStream = new GZIPOutputStream(outputStream);
        } finally {
            try {
                return f(b10);
            } finally {
            }
        }
        try {
            this.f23722c.getSerializer().b(a4Var, gZIPOutputStream);
            gZIPOutputStream.close();
            if (outputStream != null) {
                outputStream.close();
            }
            return f(b10);
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void i(HttpURLConnection httpURLConnection, int i10) {
        String headerField = httpURLConnection.getHeaderField("Retry-After");
        this.f23723d.E(httpURLConnection.getHeaderField("X-Sentry-Rate-Limits"), headerField, i10);
    }

    o(s5 s5Var, a3 a3Var, m mVar, z zVar) {
        this.f23721b = a3Var;
        this.f23722c = s5Var;
        this.f23723d = zVar;
        Proxy g10 = g(s5Var.getProxy());
        this.f23720a = g10;
        if (g10 == null || s5Var.getProxy() == null) {
            return;
        }
        String e10 = s5Var.getProxy().e();
        String b10 = s5Var.getProxy().b();
        if (e10 == null || b10 == null) {
            return;
        }
        mVar.b(new v(e10, b10));
    }
}
