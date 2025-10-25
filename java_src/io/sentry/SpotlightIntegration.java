package io.sentry;

import io.sentry.s5;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.concurrent.RejectedExecutionException;
import java.util.zip.GZIPOutputStream;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes2.dex */
public final class SpotlightIntegration implements e1, s5.c, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private s5 f21966a;

    /* renamed from: b  reason: collision with root package name */
    private ILogger f21967b = z1.e();

    /* renamed from: c  reason: collision with root package name */
    private x0 f21968c = e2.f();

    private void c(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
        httpURLConnection.disconnect();
    }

    private HttpURLConnection e(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) URI.create(str).toURL().openConnection();
        httpURLConnection.setReadTimeout(1000);
        httpURLConnection.setConnectTimeout(1000);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-sentry-envelope");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("Connection", "close");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void h(a4 a4Var) {
        try {
            if (this.f21966a != null) {
                HttpURLConnection e10 = e(g());
                OutputStream outputStream = e10.getOutputStream();
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f21966a.getSerializer().b(a4Var, gZIPOutputStream);
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    this.f21967b.c(j5.DEBUG, "Envelope sent to spotlight: %d", Integer.valueOf(e10.getResponseCode()));
                    c(e10);
                    return;
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException("SentryOptions are required to send envelopes.");
        } catch (Exception e11) {
            this.f21967b.b(j5.ERROR, "An exception occurred while creating the connection to spotlight.", e11);
        }
    }

    @Override // io.sentry.s5.c
    public void a(final a4 a4Var, c0 c0Var) {
        try {
            this.f21968c.submit(new Runnable() { // from class: io.sentry.q6
                @Override // java.lang.Runnable
                public final void run() {
                    SpotlightIntegration.this.h(a4Var);
                }
            });
        } catch (RejectedExecutionException e10) {
            this.f21967b.b(j5.WARNING, "Spotlight envelope submission rejected.", e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21968c.a(0L);
        s5 s5Var = this.f21966a;
        if (s5Var != null && s5Var.getBeforeEnvelopeCallback() == this) {
            this.f21966a.setBeforeEnvelopeCallback(null);
        }
    }

    @Override // io.sentry.e1
    public void f(o0 o0Var, s5 s5Var) {
        this.f21966a = s5Var;
        this.f21967b = s5Var.getLogger();
        if (s5Var.getBeforeEnvelopeCallback() == null && s5Var.isEnableSpotlight()) {
            this.f21968c = new b5();
            s5Var.setBeforeEnvelopeCallback(this);
            this.f21967b.c(j5.DEBUG, "SpotlightIntegration enabled.", new Object[0]);
            return;
        }
        this.f21967b.c(j5.DEBUG, "SpotlightIntegration is not enabled. BeforeEnvelopeCallback is already set or spotlight is not enabled.", new Object[0]);
    }

    public String g() {
        s5 s5Var = this.f21966a;
        if (s5Var != null && s5Var.getSpotlightConnectionUrl() != null) {
            return this.f21966a.getSpotlightConnectionUrl();
        }
        if (io.sentry.util.s.a()) {
            return "http://10.0.2.2:8969/stream";
        }
        return "http://localhost:8969/stream";
    }
}
