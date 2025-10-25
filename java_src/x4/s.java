package x4;

import android.net.Uri;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import o6.o0;
import org.apache.tika.metadata.HttpHeaders;
import x4.j;
import x4.s;
import y4.q0;
/* loaded from: classes.dex */
public class s extends f {

    /* renamed from: e  reason: collision with root package name */
    private final boolean f32450e;

    /* renamed from: f  reason: collision with root package name */
    private final int f32451f;

    /* renamed from: g  reason: collision with root package name */
    private final int f32452g;

    /* renamed from: h  reason: collision with root package name */
    private final String f32453h;

    /* renamed from: i  reason: collision with root package name */
    private final b0 f32454i;

    /* renamed from: j  reason: collision with root package name */
    private final b0 f32455j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f32456k;

    /* renamed from: l  reason: collision with root package name */
    private n6.n f32457l;

    /* renamed from: m  reason: collision with root package name */
    private n f32458m;

    /* renamed from: n  reason: collision with root package name */
    private HttpURLConnection f32459n;

    /* renamed from: o  reason: collision with root package name */
    private InputStream f32460o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f32461p;

    /* renamed from: q  reason: collision with root package name */
    private int f32462q;

    /* renamed from: r  reason: collision with root package name */
    private long f32463r;

    /* renamed from: s  reason: collision with root package name */
    private long f32464s;

    /* loaded from: classes.dex */
    public static final class b implements j.a {

        /* renamed from: b  reason: collision with root package name */
        private m0 f32466b;

        /* renamed from: c  reason: collision with root package name */
        private n6.n f32467c;

        /* renamed from: d  reason: collision with root package name */
        private String f32468d;

        /* renamed from: g  reason: collision with root package name */
        private boolean f32471g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f32472h;

        /* renamed from: a  reason: collision with root package name */
        private final b0 f32465a = new b0();

        /* renamed from: e  reason: collision with root package name */
        private int f32469e = 8000;

        /* renamed from: f  reason: collision with root package name */
        private int f32470f = 8000;

        @Override // x4.j.a
        /* renamed from: b */
        public s a() {
            s sVar = new s(this.f32468d, this.f32469e, this.f32470f, this.f32471g, this.f32465a, this.f32467c, this.f32472h);
            m0 m0Var = this.f32466b;
            if (m0Var != null) {
                sVar.d(m0Var);
            }
            return sVar;
        }

        public b c(boolean z10) {
            this.f32471g = z10;
            return this;
        }

        public final b d(Map map) {
            this.f32465a.a(map);
            return this;
        }

        public b e(String str) {
            this.f32468d = str;
            return this;
        }
    }

    /* loaded from: classes.dex */
    private static class c extends o6.l {

        /* renamed from: a  reason: collision with root package name */
        private final Map f32473a;

        public c(Map map) {
            this.f32473a = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean j(Map.Entry entry) {
            if (entry.getKey() != null) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean k(String str) {
            return str != null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // o6.m
        /* renamed from: b */
        public Map a() {
            return this.f32473a;
        }

        @Override // o6.l, java.util.Map
        public boolean containsKey(Object obj) {
            if (obj != null && super.containsKey(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return super.c(obj);
        }

        @Override // o6.l, java.util.Map
        public Set entrySet() {
            return o0.b(super.entrySet(), new n6.n() { // from class: x4.u
                @Override // n6.n
                public final boolean apply(Object obj) {
                    boolean j10;
                    j10 = s.c.j((Map.Entry) obj);
                    return j10;
                }
            });
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            if (obj != null && super.e(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map
        public int hashCode() {
            return super.f();
        }

        @Override // o6.l, java.util.Map
        /* renamed from: i */
        public List get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // o6.l, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            if (super.size() == 1 && super.containsKey(null)) {
                return true;
            }
            return false;
        }

        @Override // o6.l, java.util.Map
        public Set keySet() {
            return o0.b(super.keySet(), new n6.n() { // from class: x4.t
                @Override // n6.n
                public final boolean apply(Object obj) {
                    boolean k10;
                    k10 = s.c.k((String) obj);
                    return k10;
                }
            });
        }

        @Override // o6.l, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    private int B(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f32463r;
        if (j10 != -1) {
            long j11 = j10 - this.f32464s;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int read = ((InputStream) q0.j(this.f32460o)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        this.f32464s += read;
        q(read);
        return read;
    }

    private void C(long j10, n nVar) {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
        while (j10 > 0) {
            int read = ((InputStream) q0.j(this.f32460o)).read(bArr, 0, (int) Math.min(j10, (long) Base64Utils.IO_BUFFER_SIZE));
            if (!Thread.currentThread().isInterrupted()) {
                if (read != -1) {
                    j10 -= read;
                    q(read);
                } else {
                    throw new y(nVar, 2008, 1);
                }
            } else {
                throw new y(new InterruptedIOException(), nVar, 2000, 1);
            }
        }
    }

    private void u() {
        HttpURLConnection httpURLConnection = this.f32459n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                y4.r.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f32459n = null;
        }
    }

    private URL v(URL url, String str, n nVar) {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !"http".equals(protocol)) {
                    throw new y("Unsupported protocol redirect: " + protocol, nVar, 2001, 1);
                } else if (!this.f32450e && !protocol.equals(url.getProtocol())) {
                    throw new y("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", nVar, 2001, 1);
                } else {
                    return url2;
                }
            } catch (MalformedURLException e10) {
                throw new y(e10, nVar, 2001, 1);
            }
        }
        throw new y("Null location redirect", nVar, 2001, 1);
    }

    private static boolean w(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection x(URL url, int i10, byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map map) {
        String str;
        boolean z12;
        HttpURLConnection A = A(url);
        A.setConnectTimeout(this.f32451f);
        A.setReadTimeout(this.f32452g);
        HashMap hashMap = new HashMap();
        b0 b0Var = this.f32454i;
        if (b0Var != null) {
            hashMap.putAll(b0Var.b());
        }
        hashMap.putAll(this.f32455j.b());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            A.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String a10 = c0.a(j10, j11);
        if (a10 != null) {
            A.setRequestProperty("Range", a10);
        }
        String str2 = this.f32453h;
        if (str2 != null) {
            A.setRequestProperty("User-Agent", str2);
        }
        if (z10) {
            str = "gzip";
        } else {
            str = "identity";
        }
        A.setRequestProperty("Accept-Encoding", str);
        A.setInstanceFollowRedirects(z11);
        if (bArr != null) {
            z12 = true;
        } else {
            z12 = false;
        }
        A.setDoOutput(z12);
        A.setRequestMethod(n.c(i10));
        if (bArr != null) {
            A.setFixedLengthStreamingMode(bArr.length);
            A.connect();
            OutputStream outputStream = A.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            A.connect();
        }
        return A;
    }

    private HttpURLConnection y(n nVar) {
        HttpURLConnection x10;
        boolean z10;
        URL url = new URL(nVar.f32371a.toString());
        int i10 = nVar.f32373c;
        byte[] bArr = nVar.f32374d;
        long j10 = nVar.f32377g;
        long j11 = nVar.f32378h;
        boolean d10 = nVar.d(1);
        if (!this.f32450e && !this.f32456k) {
            return x(url, i10, bArr, j10, j11, d10, true, nVar.f32375e);
        }
        URL url2 = url;
        int i11 = i10;
        byte[] bArr2 = bArr;
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            if (i12 <= 20) {
                long j12 = j10;
                long j13 = j10;
                int i14 = i11;
                URL url3 = url2;
                long j14 = j11;
                x10 = x(url2, i11, bArr2, j12, j11, d10, false, nVar.f32375e);
                int responseCode = x10.getResponseCode();
                String headerField = x10.getHeaderField(HttpHeaders.LOCATION);
                if ((i14 != 1 && i14 != 3) || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308)) {
                    if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    }
                    x10.disconnect();
                    if (this.f32456k && responseCode == 302) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        bArr2 = null;
                        i11 = 1;
                    } else {
                        i11 = i14;
                    }
                    url2 = v(url3, headerField, nVar);
                } else {
                    x10.disconnect();
                    url2 = v(url3, headerField, nVar);
                    i11 = i14;
                }
                i12 = i13;
                j10 = j13;
                j11 = j14;
            } else {
                throw new y(new NoRouteToHostException("Too many redirects: " + i13), nVar, 2001, 1);
            }
        }
        return x10;
    }

    private static void z(HttpURLConnection httpURLConnection, long j10) {
        int i10;
        if (httpURLConnection != null && (i10 = q0.f32946a) >= 19 && i10 <= 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j10 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j10 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = ((Class) y4.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }

    HttpURLConnection A(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // x4.j
    public void close() {
        try {
            InputStream inputStream = this.f32460o;
            if (inputStream != null) {
                long j10 = this.f32463r;
                long j11 = -1;
                if (j10 != -1) {
                    j11 = j10 - this.f32464s;
                }
                z(this.f32459n, j11);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new y(e10, (n) q0.j(this.f32458m), 2000, 3);
                }
            }
        } finally {
            this.f32460o = null;
            u();
            if (this.f32461p) {
                this.f32461p = false;
                r();
            }
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        byte[] bArr;
        k kVar;
        this.f32458m = nVar;
        long j10 = 0;
        this.f32464s = 0L;
        this.f32463r = 0L;
        s(nVar);
        try {
            HttpURLConnection y10 = y(nVar);
            this.f32459n = y10;
            this.f32462q = y10.getResponseCode();
            String responseMessage = y10.getResponseMessage();
            int i10 = this.f32462q;
            long j11 = -1;
            if (i10 >= 200 && i10 <= 299) {
                String contentType = y10.getContentType();
                n6.n nVar2 = this.f32457l;
                if (nVar2 != null && !nVar2.apply(contentType)) {
                    u();
                    throw new z(contentType, nVar);
                }
                if (this.f32462q == 200) {
                    long j12 = nVar.f32377g;
                    if (j12 != 0) {
                        j10 = j12;
                    }
                }
                boolean w10 = w(y10);
                if (!w10) {
                    long j13 = nVar.f32378h;
                    if (j13 != -1) {
                        this.f32463r = j13;
                    } else {
                        long b10 = c0.b(y10.getHeaderField(HttpHeaders.CONTENT_LENGTH), y10.getHeaderField("Content-Range"));
                        if (b10 != -1) {
                            j11 = b10 - j10;
                        }
                        this.f32463r = j11;
                    }
                } else {
                    this.f32463r = nVar.f32378h;
                }
                try {
                    this.f32460o = y10.getInputStream();
                    if (w10) {
                        this.f32460o = new GZIPInputStream(this.f32460o);
                    }
                    this.f32461p = true;
                    t(nVar);
                    try {
                        C(j10, nVar);
                        return this.f32463r;
                    } catch (IOException e10) {
                        u();
                        if (e10 instanceof y) {
                            throw ((y) e10);
                        }
                        throw new y(e10, nVar, 2000, 1);
                    }
                } catch (IOException e11) {
                    u();
                    throw new y(e11, nVar, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = y10.getHeaderFields();
            if (this.f32462q == 416) {
                if (nVar.f32377g == c0.c(y10.getHeaderField("Content-Range"))) {
                    this.f32461p = true;
                    t(nVar);
                    long j14 = nVar.f32378h;
                    if (j14 == -1) {
                        return 0L;
                    }
                    return j14;
                }
            }
            InputStream errorStream = y10.getErrorStream();
            try {
                if (errorStream != null) {
                    bArr = q0.T0(errorStream);
                } else {
                    bArr = q0.f32951f;
                }
            } catch (IOException unused) {
                bArr = q0.f32951f;
            }
            byte[] bArr2 = bArr;
            u();
            if (this.f32462q == 416) {
                kVar = new k(2008);
            } else {
                kVar = null;
            }
            throw new a0(this.f32462q, responseMessage, kVar, headerFields, nVar, bArr2);
        } catch (IOException e12) {
            u();
            throw y.c(e12, nVar, 1);
        }
    }

    @Override // x4.j
    public Map k() {
        HttpURLConnection httpURLConnection = this.f32459n;
        if (httpURLConnection == null) {
            return o6.r.k();
        }
        return new c(httpURLConnection.getHeaderFields());
    }

    @Override // x4.j
    public Uri o() {
        HttpURLConnection httpURLConnection = this.f32459n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        try {
            return B(bArr, i10, i11);
        } catch (IOException e10) {
            throw y.c(e10, (n) q0.j(this.f32458m), 2);
        }
    }

    private s(String str, int i10, int i11, boolean z10, b0 b0Var, n6.n nVar, boolean z11) {
        super(true);
        this.f32453h = str;
        this.f32451f = i10;
        this.f32452g = i11;
        this.f32450e = z10;
        this.f32454i = b0Var;
        this.f32457l = nVar;
        this.f32455j = new b0();
        this.f32456k = z11;
    }
}
