package u;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.tika.metadata.Font;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        static int a(TypedArray typedArray, int i10) {
            return typedArray.getType(i10);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* loaded from: classes.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final C0338d[] f30763a;

        public c(C0338d[] c0338dArr) {
            this.f30763a = c0338dArr;
        }

        public C0338d[] a() {
            return this.f30763a;
        }
    }

    /* renamed from: u.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0338d {

        /* renamed from: a  reason: collision with root package name */
        private final String f30764a;

        /* renamed from: b  reason: collision with root package name */
        private final int f30765b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f30766c;

        /* renamed from: d  reason: collision with root package name */
        private final String f30767d;

        /* renamed from: e  reason: collision with root package name */
        private final int f30768e;

        /* renamed from: f  reason: collision with root package name */
        private final int f30769f;

        public C0338d(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f30764a = str;
            this.f30765b = i10;
            this.f30766c = z10;
            this.f30767d = str2;
            this.f30768e = i11;
            this.f30769f = i12;
        }

        public String a() {
            return this.f30764a;
        }

        public int b() {
            return this.f30769f;
        }

        public int c() {
            return this.f30768e;
        }

        public String d() {
            return this.f30767d;
        }

        public int e() {
            return this.f30765b;
        }

        public boolean f() {
            return this.f30766c;
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements b {

        /* renamed from: a  reason: collision with root package name */
        private final a0.e f30770a;

        /* renamed from: b  reason: collision with root package name */
        private final a0.e f30771b;

        /* renamed from: c  reason: collision with root package name */
        private final int f30772c;

        /* renamed from: d  reason: collision with root package name */
        private final int f30773d;

        /* renamed from: e  reason: collision with root package name */
        private final String f30774e;

        public e(a0.e eVar, a0.e eVar2, int i10, int i11, String str) {
            this.f30770a = eVar;
            this.f30771b = eVar2;
            this.f30773d = i10;
            this.f30772c = i11;
            this.f30774e = str;
        }

        public a0.e a() {
            return this.f30771b;
        }

        public int b() {
            return this.f30773d;
        }

        public a0.e c() {
            return this.f30770a;
        }

        public String d() {
            return this.f30774e;
        }

        public int e() {
            return this.f30772c;
        }
    }

    private static int a(TypedArray typedArray, int i10) {
        return a.a(typedArray, i10);
    }

    public static b b(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List c(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(obtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < obtainTypedArray.length(); i11++) {
                    int resourceId = obtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    private static b d(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static b e(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), t.g.f29749h);
        String string = obtainAttributes.getString(t.g.f29750i);
        String string2 = obtainAttributes.getString(t.g.f29755n);
        String string3 = obtainAttributes.getString(t.g.f29756o);
        String string4 = obtainAttributes.getString(t.g.f29752k);
        int resourceId = obtainAttributes.getResourceId(t.g.f29751j, 0);
        int integer = obtainAttributes.getInteger(t.g.f29753l, 1);
        int integer2 = obtainAttributes.getInteger(t.g.f29754m, 500);
        String string5 = obtainAttributes.getString(t.g.f29757p);
        obtainAttributes.recycle();
        a0.e eVar = null;
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            List c10 = c(resources, resourceId);
            if (string4 != null) {
                eVar = new a0.e(string, string2, string4, c10);
            }
            return new e(new a0.e(string, string2, string3, c10), eVar, integer, integer2, string5);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(Font.PREFIX_FONT_META)) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((C0338d[]) arrayList.toArray(new C0338d[0]));
    }

    private static C0338d f(XmlPullParser xmlPullParser, Resources resources) {
        int i10;
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), t.g.f29758q);
        if (obtainAttributes.hasValue(t.g.f29767z)) {
            i10 = t.g.f29767z;
        } else {
            i10 = t.g.f29760s;
        }
        int i15 = obtainAttributes.getInt(i10, 400);
        if (obtainAttributes.hasValue(t.g.f29765x)) {
            i11 = t.g.f29765x;
        } else {
            i11 = t.g.f29761t;
        }
        if (1 == obtainAttributes.getInt(i11, 0)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (obtainAttributes.hasValue(t.g.A)) {
            i12 = t.g.A;
        } else {
            i12 = t.g.f29762u;
        }
        if (obtainAttributes.hasValue(t.g.f29766y)) {
            i13 = t.g.f29766y;
        } else {
            i13 = t.g.f29763v;
        }
        String string = obtainAttributes.getString(i13);
        int i16 = obtainAttributes.getInt(i12, 0);
        if (obtainAttributes.hasValue(t.g.f29764w)) {
            i14 = t.g.f29764w;
        } else {
            i14 = t.g.f29759r;
        }
        int resourceId = obtainAttributes.getResourceId(i14, 0);
        String string2 = obtainAttributes.getString(i14);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new C0338d(string2, i15, z10, string, i16, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next != 2) {
                if (next == 3) {
                    i10--;
                }
            } else {
                i10++;
            }
        }
    }

    private static List h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
