package androidx.webkit.internal;

import android.content.Context;
import android.util.TypedValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.tika.mime.MimeTypes;
/* loaded from: classes.dex */
public class o0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f3604a;

    public o0(Context context) {
        this.f3604a = context;
    }

    public static String a(File file) {
        String canonicalPath = file.getCanonicalPath();
        if (!canonicalPath.endsWith("/")) {
            return canonicalPath + "/";
        }
        return canonicalPath;
    }

    public static File b(File file, String str) {
        String a10 = a(file);
        String canonicalPath = new File(file, str).getCanonicalPath();
        if (canonicalPath.startsWith(a10)) {
            return new File(canonicalPath);
        }
        return null;
    }

    public static File c(Context context) {
        return c.e(context);
    }

    private int d(String str, String str2) {
        return this.f3604a.getResources().getIdentifier(str2, str, this.f3604a.getPackageName());
    }

    private int e(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f3604a.getResources().getValue(i10, typedValue, true);
        return typedValue.type;
    }

    public static String f(String str) {
        String a10 = u0.a(str);
        if (a10 == null) {
            return MimeTypes.PLAIN_TEXT;
        }
        return a10;
    }

    private static InputStream g(String str, InputStream inputStream) {
        if (str.endsWith(".svgz")) {
            return new GZIPInputStream(inputStream);
        }
        return inputStream;
    }

    public static InputStream i(File file) {
        return g(file.getPath(), new FileInputStream(file));
    }

    private static String k(String str) {
        if (str.length() > 1 && str.charAt(0) == '/') {
            return str.substring(1);
        }
        return str;
    }

    public InputStream h(String str) {
        String k10 = k(str);
        return g(k10, this.f3604a.getAssets().open(k10, 2));
    }

    public InputStream j(String str) {
        String k10 = k(str);
        String[] split = k10.split("/", -1);
        if (split.length == 2) {
            String str2 = split[0];
            String str3 = split[1];
            int lastIndexOf = str3.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str3 = str3.substring(0, lastIndexOf);
            }
            int d10 = d(str2, str3);
            int e10 = e(d10);
            if (e10 == 3) {
                return g(k10, this.f3604a.getResources().openRawResource(d10));
            }
            throw new IOException(String.format("Expected %s resource to be of TYPE_STRING but was %d", k10, Integer.valueOf(e10)));
        }
        throw new IllegalArgumentException("Incorrect resource path: " + k10);
    }
}
