package o1;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebResourceResponse;
import androidx.webkit.internal.o0;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final List f26942a;

    /* loaded from: classes.dex */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        private o0 f26943a;

        public a(Context context) {
            this.f26943a = new o0(context);
        }

        @Override // o1.r.d
        public WebResourceResponse handle(String str) {
            try {
                return new WebResourceResponse(o0.f(str), null, this.f26943a.h(str));
            } catch (IOException e10) {
                Log.e("WebViewAssetLoader", "Error opening asset path: " + str, e10);
                return new WebResourceResponse(null, null, null);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f26944a;

        /* renamed from: b  reason: collision with root package name */
        private String f26945b = "appassets.androidplatform.net";

        /* renamed from: c  reason: collision with root package name */
        private final List f26946c = new ArrayList();

        public b a(String str, d dVar) {
            this.f26946c.add(c0.c.a(str, dVar));
            return this;
        }

        public r b() {
            ArrayList arrayList = new ArrayList();
            for (c0.c cVar : this.f26946c) {
                arrayList.add(new e(this.f26945b, (String) cVar.f4786a, this.f26944a, (d) cVar.f4787b));
            }
            return new r(arrayList);
        }

        public b c(String str) {
            this.f26945b = str;
            return this;
        }

        public b d(boolean z10) {
            this.f26944a = z10;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f26947b = {"app_webview/", "databases/", "lib/", "shared_prefs/", "code_cache/"};

        /* renamed from: a  reason: collision with root package name */
        private final File f26948a;

        public c(Context context, File file) {
            try {
                this.f26948a = new File(o0.a(file));
                if (a(context)) {
                    return;
                }
                throw new IllegalArgumentException("The given directory \"" + file + "\" doesn't exist under an allowed app internal storage directory");
            } catch (IOException e10) {
                throw new IllegalArgumentException("Failed to resolve the canonical path for the given directory: " + file.getPath(), e10);
            }
        }

        private boolean a(Context context) {
            String a10 = o0.a(this.f26948a);
            String a11 = o0.a(context.getCacheDir());
            String a12 = o0.a(o0.c(context));
            if ((!a10.startsWith(a11) && !a10.startsWith(a12)) || a10.equals(a11) || a10.equals(a12)) {
                return false;
            }
            for (String str : f26947b) {
                if (a10.startsWith(a12 + str)) {
                    return false;
                }
            }
            return true;
        }

        @Override // o1.r.d
        public WebResourceResponse handle(String str) {
            File b10;
            try {
                b10 = o0.b(this.f26948a, str);
            } catch (IOException e10) {
                Log.e("WebViewAssetLoader", "Error opening the requested path: " + str, e10);
            }
            if (b10 != null) {
                return new WebResourceResponse(o0.f(str), null, o0.i(b10));
            }
            Log.e("WebViewAssetLoader", String.format("The requested file: %s is outside the mounted directory: %s", str, this.f26948a));
            return new WebResourceResponse(null, null, null);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        WebResourceResponse handle(String str);
    }

    /* loaded from: classes.dex */
    static class e {

        /* renamed from: a  reason: collision with root package name */
        final boolean f26949a;

        /* renamed from: b  reason: collision with root package name */
        final String f26950b;

        /* renamed from: c  reason: collision with root package name */
        final String f26951c;

        /* renamed from: d  reason: collision with root package name */
        final d f26952d;

        e(String str, String str2, boolean z10, d dVar) {
            if (!str2.isEmpty() && str2.charAt(0) == '/') {
                if (str2.endsWith("/")) {
                    this.f26950b = str;
                    this.f26951c = str2;
                    this.f26949a = z10;
                    this.f26952d = dVar;
                    return;
                }
                throw new IllegalArgumentException("Path should end with a slash '/'");
            }
            throw new IllegalArgumentException("Path should start with a slash '/'.");
        }

        public String a(String str) {
            return str.replaceFirst(this.f26951c, "");
        }

        public d b(Uri uri) {
            if (uri.getScheme().equals("http") && !this.f26949a) {
                return null;
            }
            if ((!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) || !uri.getAuthority().equals(this.f26950b) || !uri.getPath().startsWith(this.f26951c)) {
                return null;
            }
            return this.f26952d;
        }
    }

    /* loaded from: classes.dex */
    public static final class f implements d {

        /* renamed from: a  reason: collision with root package name */
        private o0 f26953a;

        public f(Context context) {
            this.f26953a = new o0(context);
        }

        @Override // o1.r.d
        public WebResourceResponse handle(String str) {
            try {
                return new WebResourceResponse(o0.f(str), null, this.f26953a.j(str));
            } catch (Resources.NotFoundException e10) {
                Log.e("WebViewAssetLoader", "Resource not found from the path: " + str, e10);
                return new WebResourceResponse(null, null, null);
            } catch (IOException e11) {
                Log.e("WebViewAssetLoader", "Error opening resource from the path: " + str, e11);
                return new WebResourceResponse(null, null, null);
            }
        }
    }

    r(List list) {
        this.f26942a = list;
    }

    public WebResourceResponse a(Uri uri) {
        WebResourceResponse handle;
        for (e eVar : this.f26942a) {
            d b10 = eVar.b(uri);
            if (b10 != null && (handle = b10.handle(eVar.a(uri.getPath()))) != null) {
                return handle;
            }
        }
        return null;
    }
}
