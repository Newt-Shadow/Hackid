package x8;

import android.net.Uri;
import id.Function2;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import org.json.JSONObject;
import td.l0;
import xc.t;
/* loaded from: classes.dex */
public final class e implements x8.a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f32556c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final u8.b f32557a;

    /* renamed from: b  reason: collision with root package name */
    private final ad.i f32558b;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32559a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f32561c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function2 f32562d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function2 f32563e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Map map, Function2 function2, Function2 function22, ad.e eVar) {
            super(2, eVar);
            this.f32561c = map;
            this.f32562d = function2;
            this.f32563e = function22;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new b(this.f32561c, this.f32562d, this.f32563e, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32559a;
            try {
                if (i10 != 0) {
                    if (i10 != 1 && i10 != 2) {
                        if (i10 == 3) {
                            xc.m.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        xc.m.b(obj);
                    }
                } else {
                    xc.m.b(obj);
                    URLConnection openConnection = e.this.c().openConnection();
                    kotlin.jvm.internal.m.c(openConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
                    httpsURLConnection.setRequestMethod("GET");
                    httpsURLConnection.setRequestProperty("Accept", "application/json");
                    for (Map.Entry entry : this.f32561c.entrySet()) {
                        httpsURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        InputStream inputStream = httpsURLConnection.getInputStream();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        StringBuilder sb2 = new StringBuilder();
                        c0 c0Var = new c0();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            c0Var.f24971a = readLine;
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(readLine);
                        }
                        bufferedReader.close();
                        inputStream.close();
                        JSONObject jSONObject = new JSONObject(sb2.toString());
                        Function2 function2 = this.f32562d;
                        this.f32559a = 1;
                        if (function2.invoke(jSONObject, this) == e10) {
                            return e10;
                        }
                    } else {
                        Function2 function22 = this.f32563e;
                        String str = "Bad response code: " + responseCode;
                        this.f32559a = 2;
                        if (function22.invoke(str, this) == e10) {
                            return e10;
                        }
                    }
                }
            } catch (Exception e11) {
                Function2 function23 = this.f32563e;
                String message = e11.getMessage();
                if (message == null) {
                    message = e11.toString();
                }
                this.f32559a = 3;
                if (function23.invoke(message, this) == e10) {
                    return e10;
                }
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((b) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public e(u8.b appInfo, ad.i blockingDispatcher) {
        kotlin.jvm.internal.m.e(appInfo, "appInfo");
        kotlin.jvm.internal.m.e(blockingDispatcher, "blockingDispatcher");
        this.f32557a = appInfo;
        this.f32558b = blockingDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL c() {
        return new URL(new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.f32557a.b()).appendPath("settings").appendQueryParameter("build_version", this.f32557a.a().a()).appendQueryParameter("display_version", this.f32557a.a().f()).build().toString());
    }

    @Override // x8.a
    public Object a(Map map, Function2 function2, Function2 function22, ad.e eVar) {
        Object e10;
        Object g10 = td.g.g(this.f32558b, new b(map, function2, function22, null), eVar);
        e10 = bd.d.e();
        if (g10 == e10) {
            return g10;
        }
        return t.f32733a;
    }
}
