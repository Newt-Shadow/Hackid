package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.android.datatransport.cct.d;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import o2.n;
import o2.o;
import o2.p;
import o2.q;
import o2.r;
import o2.s;
import o2.t;
import o2.u;
import o2.v;
import o2.w;
import o2.x;
import org.apache.tika.metadata.HttpHeaders;
import p2.h;
import p2.i;
import q2.f;
import q2.g;
import q2.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d8.a f5562a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectivityManager f5563b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5564c;

    /* renamed from: d  reason: collision with root package name */
    final URL f5565d;

    /* renamed from: e  reason: collision with root package name */
    private final z2.a f5566e;

    /* renamed from: f  reason: collision with root package name */
    private final z2.a f5567f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5568g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final URL f5569a;

        /* renamed from: b  reason: collision with root package name */
        final n f5570b;

        /* renamed from: c  reason: collision with root package name */
        final String f5571c;

        a(URL url, n nVar, String str) {
            this.f5569a = url;
            this.f5570b = nVar;
            this.f5571c = str;
        }

        a a(URL url) {
            return new a(url, this.f5570b, this.f5571c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f5572a;

        /* renamed from: b  reason: collision with root package name */
        final URL f5573b;

        /* renamed from: c  reason: collision with root package name */
        final long f5574c;

        b(int i10, URL url, long j10) {
            this.f5572a = i10;
            this.f5573b = url;
            this.f5574c = j10;
        }
    }

    d(Context context, z2.a aVar, z2.a aVar2, int i10) {
        this.f5562a = n.b();
        this.f5564c = context;
        this.f5563b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f5565d = o(com.google.android.datatransport.cct.a.f5553c);
        this.f5566e = aVar2;
        this.f5567f = aVar;
        this.f5568g = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e(a aVar) {
        t2.a.f("CctTransportBackend", "Making request to: %s", aVar.f5569a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f5569a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f5568g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.3.0"));
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_ENCODING, "gzip");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f5571c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f5562a.a(aVar.f5570b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                t2.a.f("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                t2.a.b("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField(HttpHeaders.CONTENT_TYPE));
                t2.a.b("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream n10 = n(inputStream, httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
                        b bVar = new b(responseCode, null, v.b(new BufferedReader(new InputStreamReader(n10))).c());
                        if (n10 != null) {
                            n10.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        return bVar;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                return new b(responseCode, new URL(httpURLConnection.getHeaderField(HttpHeaders.LOCATION)), 0L);
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (d8.b e10) {
            e = e10;
            t2.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException e11) {
            e = e11;
            t2.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (UnknownHostException e12) {
            e = e12;
            t2.a.d("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b(500, null, 0L);
        } catch (IOException e13) {
            e = e13;
            t2.a.d("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        }
    }

    private static String f(Context context) {
        String simOperator = k(context).getSimOperator();
        if (simOperator != null) {
            return simOperator;
        }
        return "";
    }

    private static int g(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return w.b.UNKNOWN_MOBILE_SUBTYPE.b();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return w.b.COMBINED.b();
        }
        if (w.b.a(subtype) == null) {
            return 0;
        }
        return subtype;
    }

    private static int h(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return w.c.NONE.b();
        }
        return networkInfo.getType();
    }

    private static int i(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            t2.a.d("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    private n j(f fVar) {
        t.a l10;
        HashMap hashMap = new HashMap();
        for (i iVar : fVar.b()) {
            String n10 = iVar.n();
            if (!hashMap.containsKey(n10)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(iVar);
                hashMap.put(n10, arrayList);
            } else {
                ((List) hashMap.get(n10)).add(iVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            i iVar2 = (i) ((List) entry.getValue()).get(0);
            u.a b10 = u.a().f(x.DEFAULT).g(this.f5567f.a()).h(this.f5566e.a()).b(o.a().c(o.b.ANDROID_FIREBASE).b(o2.a.a().m(Integer.valueOf(iVar2.i("sdk-version"))).j(iVar2.b(CommonUrlParts.MODEL)).f(iVar2.b("hardware")).d(iVar2.b("device")).l(iVar2.b("product")).k(iVar2.b("os-uild")).h(iVar2.b(CommonUrlParts.MANUFACTURER)).e(iVar2.b("fingerprint")).c(iVar2.b("country")).g(iVar2.b(CommonUrlParts.LOCALE)).i(iVar2.b("mcc_mnc")).b(iVar2.b("application_build")).a()).a());
            try {
                b10.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                b10.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (i iVar3 : (List) entry.getValue()) {
                h e10 = iVar3.e();
                n2.c b11 = e10.b();
                if (b11.equals(n2.c.b("proto"))) {
                    l10 = t.l(e10.a());
                } else if (b11.equals(n2.c.b("json"))) {
                    l10 = t.k(new String(e10.a(), Charset.forName("UTF-8")));
                } else {
                    t2.a.g("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b11);
                }
                l10.d(iVar3.f()).e(iVar3.o()).j(iVar3.j("tz-offset")).g(w.a().c(w.c.a(iVar3.i("net-type"))).b(w.b.a(iVar3.i("mobile-subtype"))).a());
                if (iVar3.d() != null) {
                    l10.c(iVar3.d());
                }
                if (iVar3.l() != null) {
                    l10.b(p.a().b(s.a().b(r.a().b(iVar3.l()).a()).a()).c(p.b.EVENT_OVERRIDE).a());
                }
                if (iVar3.g() != null || iVar3.h() != null) {
                    q.a a10 = q.a();
                    if (iVar3.g() != null) {
                        a10.b(iVar3.g());
                    }
                    if (iVar3.h() != null) {
                        a10.c(iVar3.h());
                    }
                    l10.f(a10.a());
                }
                arrayList3.add(l10.a());
            }
            b10.c(arrayList3);
            arrayList2.add(b10.a());
        }
        return n.a(arrayList2);
    }

    private static TelephonyManager k(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    static long l() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a m(a aVar, b bVar) {
        URL url = bVar.f5573b;
        if (url != null) {
            t2.a.b("CctTransportBackend", "Following redirect to: %s", url);
            return aVar.a(bVar.f5573b);
        }
        return null;
    }

    private static InputStream n(InputStream inputStream, String str) {
        if ("gzip".equals(str)) {
            return new GZIPInputStream(inputStream);
        }
        return inputStream;
    }

    private static URL o(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // q2.m
    public i a(i iVar) {
        NetworkInfo activeNetworkInfo = this.f5563b.getActiveNetworkInfo();
        return iVar.p().a("sdk-version", Build.VERSION.SDK_INT).c(CommonUrlParts.MODEL, Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c(CommonUrlParts.MANUFACTURER, Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", l()).a("net-type", h(activeNetworkInfo)).a("mobile-subtype", g(activeNetworkInfo)).c("country", Locale.getDefault().getCountry()).c(CommonUrlParts.LOCALE, Locale.getDefault().getLanguage()).c("mcc_mnc", f(this.f5564c)).c("application_build", Integer.toString(i(this.f5564c))).d();
    }

    @Override // q2.m
    public g b(f fVar) {
        n j10 = j(fVar);
        URL url = this.f5565d;
        String str = null;
        if (fVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a c10 = com.google.android.datatransport.cct.a.c(fVar.c());
                if (c10.d() != null) {
                    str = c10.d();
                }
                if (c10.e() != null) {
                    url = o(c10.e());
                }
            } catch (IllegalArgumentException unused) {
                return g.a();
            }
        }
        try {
            b bVar = (b) u2.b.a(5, new a(url, j10, str), new u2.a() { // from class: com.google.android.datatransport.cct.b
                @Override // u2.a
                public final Object apply(Object obj) {
                    d.b e10;
                    e10 = d.this.e((d.a) obj);
                    return e10;
                }
            }, new u2.c() { // from class: com.google.android.datatransport.cct.c
                @Override // u2.c
                public final Object a(Object obj, Object obj2) {
                    d.a m10;
                    m10 = d.m((d.a) obj, (d.b) obj2);
                    return m10;
                }
            });
            int i10 = bVar.f5572a;
            if (i10 == 200) {
                return g.e(bVar.f5574c);
            }
            if (i10 < 500 && i10 != 404) {
                if (i10 == 400) {
                    return g.d();
                }
                return g.a();
            }
            return g.f();
        } catch (IOException e10) {
            t2.a.d("CctTransportBackend", "Could not make request to the backend", e10);
            return g.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, z2.a aVar, z2.a aVar2) {
        this(context, aVar, aVar2, 130000);
    }
}
