package t4;

import android.text.Layout;
import com.arthenica.ffmpegkit.Chapter;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m4.j;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
import org.apache.tika.utils.StringUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import y4.q0;
import y4.r;
import y4.r0;
/* loaded from: classes.dex */
public final class c extends m4.g {

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f29868p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f29869q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f29870r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: s  reason: collision with root package name */
    static final Pattern f29871s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: t  reason: collision with root package name */
    static final Pattern f29872t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f29873u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f29874v = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: w  reason: collision with root package name */
    private static final b f29875w = new b(30.0f, 1, 1);

    /* renamed from: x  reason: collision with root package name */
    private static final a f29876x = new a(32, 15);

    /* renamed from: o  reason: collision with root package name */
    private final XmlPullParserFactory f29877o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f29878a;

        /* renamed from: b  reason: collision with root package name */
        final int f29879b;

        a(int i10, int i11) {
            this.f29878a = i10;
            this.f29879b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f29880a;

        /* renamed from: b  reason: collision with root package name */
        final int f29881b;

        /* renamed from: c  reason: collision with root package name */
        final int f29882c;

        b(float f10, int i10, int i11) {
            this.f29880a = f10;
            this.f29881b = i10;
            this.f29882c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t4.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0316c {

        /* renamed from: a  reason: collision with root package name */
        final int f29883a;

        /* renamed from: b  reason: collision with root package name */
        final int f29884b;

        C0316c(int i10, int i11) {
            this.f29883a = i10;
            this.f29884b = i11;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f29877o = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    private static g B(g gVar) {
        if (gVar == null) {
            return new g();
        }
        return gVar;
    }

    private static boolean C(String str) {
        if (!str.equals("tt") && !str.equals("head") && !str.equals("body") && !str.equals("div") && !str.equals("p") && !str.equals("span") && !str.equals("br") && !str.equals("style") && !str.equals("styling") && !str.equals("layout") && !str.equals("region") && !str.equals(ExternalParsersConfigReaderMetKeys.METADATA_TAG) && !str.equals("image") && !str.equals("data") && !str.equals(Constants.INFORMATION)) {
            return false;
        }
        return true;
    }

    private static Layout.Alignment D(String str) {
        String e10 = n6.c.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case -1364013995:
                if (e10.equals("center")) {
                    c10 = 0;
                    break;
                }
                break;
            case 100571:
                if (e10.equals(Chapter.KEY_END)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (e10.equals("left")) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (e10.equals("right")) {
                    c10 = 3;
                    break;
                }
                break;
            case 109757538:
                if (e10.equals(Chapter.KEY_START)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    private static a E(XmlPullParser xmlPullParser, a aVar) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f29874v.matcher(attributeValue);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt((String) y4.a.e(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) y4.a.e(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new a(parseInt, parseInt2);
            }
            throw new j("Invalid cell resolution " + parseInt + StringUtils.SPACE + parseInt2);
        } catch (NumberFormatException unused) {
            r.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void F(String str, g gVar) {
        Matcher matcher;
        String[] P0 = q0.P0(str, "\\s+");
        if (P0.length == 1) {
            matcher = f29870r.matcher(str);
        } else if (P0.length == 2) {
            matcher = f29870r.matcher(P0[1]);
            r.i("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new j("Invalid number of entries for fontSize: " + P0.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) y4.a.e(matcher.group(3));
            str2.hashCode();
            char c10 = 65535;
            switch (str2.hashCode()) {
                case 37:
                    if (str2.equals("%")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (str2.equals("em")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (str2.equals("px")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    gVar.z(3);
                    break;
                case 1:
                    gVar.z(2);
                    break;
                case 2:
                    gVar.z(1);
                    break;
                default:
                    throw new j("Invalid unit for fontSize: '" + str2 + "'.");
            }
            gVar.y(Float.parseFloat((String) y4.a.e(matcher.group(1))));
            return;
        }
        throw new j("Invalid expression for fontSize: '" + str + "'.");
    }

    private static b G(XmlPullParser xmlPullParser) {
        int i10;
        float f10;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        if (attributeValue != null) {
            i10 = Integer.parseInt(attributeValue);
        } else {
            i10 = 30;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] P0 = q0.P0(attributeValue2, StringUtils.SPACE);
            if (P0.length == 2) {
                f10 = Integer.parseInt(P0[0]) / Integer.parseInt(P0[1]);
            } else {
                throw new j("frameRateMultiplier doesn't have 2 parts");
            }
        } else {
            f10 = 1.0f;
        }
        b bVar = f29875w;
        int i11 = bVar.f29881b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        int i12 = bVar.f29882c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i12 = Integer.parseInt(attributeValue4);
        }
        return new b(i10 * f10, i11, i12);
    }

    private static Map H(XmlPullParser xmlPullParser, Map map, a aVar, C0316c c0316c, Map map2, Map map3) {
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "style")) {
                String a10 = r0.a(xmlPullParser, "style");
                g M = M(xmlPullParser, new g());
                if (a10 != null) {
                    for (String str : N(a10)) {
                        M.a((g) map.get(str));
                    }
                }
                String g10 = M.g();
                if (g10 != null) {
                    map.put(g10, M);
                }
            } else if (r0.f(xmlPullParser, "region")) {
                e K = K(xmlPullParser, aVar, c0316c);
                if (K != null) {
                    map2.put(K.f29898a, K);
                }
            } else if (r0.f(xmlPullParser, ExternalParsersConfigReaderMetKeys.METADATA_TAG)) {
                I(xmlPullParser, map3);
            }
        } while (!r0.d(xmlPullParser, "head"));
        return map;
    }

    private static void I(XmlPullParser xmlPullParser, Map map) {
        String a10;
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "image") && (a10 = r0.a(xmlPullParser, Chapter.KEY_ID)) != null) {
                map.put(a10, xmlPullParser.nextText());
            }
        } while (!r0.d(xmlPullParser, ExternalParsersConfigReaderMetKeys.METADATA_TAG));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static d J(XmlPullParser xmlPullParser, d dVar, Map map, b bVar) {
        long j10;
        long j11;
        char c10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g M = M(xmlPullParser, null);
        String[] strArr = null;
        String str = null;
        String str2 = "";
        long j12 = -9223372036854775807L;
        long j13 = -9223372036854775807L;
        long j14 = -9223372036854775807L;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals(Chapter.KEY_END)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    if (map.containsKey(attributeValue)) {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j14 = O(attributeValue, bVar);
                    break;
                case 2:
                    j13 = O(attributeValue, bVar);
                    break;
                case 3:
                    j12 = O(attributeValue, bVar);
                    break;
                case 4:
                    String[] N = N(attributeValue);
                    if (N.length > 0) {
                        strArr = N;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j15 = dVar.f29888d;
            j10 = -9223372036854775807L;
            if (j15 != -9223372036854775807L) {
                if (j12 != -9223372036854775807L) {
                    j12 += j15;
                }
                if (j13 != -9223372036854775807L) {
                    j13 += j15;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        long j16 = j12;
        if (j13 == j10) {
            if (j14 != j10) {
                j11 = j16 + j14;
            } else if (dVar != null) {
                long j17 = dVar.f29889e;
                if (j17 != j10) {
                    j11 = j17;
                }
            }
            return d.c(xmlPullParser.getName(), j16, j11, M, strArr, str2, str, dVar);
        }
        j11 = j13;
        return d.c(xmlPullParser.getName(), j16, j11, M, strArr, str2, str, dVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01a9, code lost:
        if (r0.equals("tb") == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static t4.e K(org.xmlpull.v1.XmlPullParser r17, t4.c.a r18, t4.c.C0316c r19) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.c.K(org.xmlpull.v1.XmlPullParser, t4.c$a, t4.c$c):t4.e");
    }

    private static float L(String str) {
        Matcher matcher = f29871s.matcher(str);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) y4.a.e(matcher.group(1)))));
        } catch (NumberFormatException e10) {
            r.j("TtmlDecoder", "Failed to parse shear: " + str, e10);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01e0, code lost:
        if (r3.equals("text") == false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static t4.g M(org.xmlpull.v1.XmlPullParser r12, t4.g r13) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.c.M(org.xmlpull.v1.XmlPullParser, t4.g):t4.g");
    }

    private static String[] N(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        return q0.P0(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bc, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long O(java.lang.String r13, t4.c.b r14) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.c.O(java.lang.String, t4.c$b):long");
    }

    private static C0316c P(XmlPullParser xmlPullParser) {
        String a10 = r0.a(xmlPullParser, "extent");
        if (a10 == null) {
            return null;
        }
        Matcher matcher = f29873u.matcher(a10);
        if (!matcher.matches()) {
            r.i("TtmlDecoder", "Ignoring non-pixel tts extent: " + a10);
            return null;
        }
        try {
            return new C0316c(Integer.parseInt((String) y4.a.e(matcher.group(1))), Integer.parseInt((String) y4.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            r.i("TtmlDecoder", "Ignoring malformed tts extent: " + a10);
            return null;
        }
    }

    @Override // m4.g
    protected m4.h z(byte[] bArr, int i10, boolean z10) {
        b bVar;
        try {
            XmlPullParser newPullParser = this.f29877o.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0316c c0316c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i10), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = f29875w;
            a aVar = f29876x;
            int i11 = 0;
            h hVar = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i11 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            bVar2 = G(newPullParser);
                            aVar = E(newPullParser, f29876x);
                            c0316c = P(newPullParser);
                        }
                        C0316c c0316c2 = c0316c;
                        b bVar3 = bVar2;
                        a aVar2 = aVar;
                        if (!C(name)) {
                            r.f("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i11++;
                            bVar2 = bVar3;
                        } else {
                            if ("head".equals(name)) {
                                bVar = bVar3;
                                H(newPullParser, hashMap, aVar2, c0316c2, hashMap2, hashMap3);
                            } else {
                                bVar = bVar3;
                                try {
                                    d J = J(newPullParser, dVar, hashMap2, bVar);
                                    arrayDeque.push(J);
                                    if (dVar != null) {
                                        dVar.a(J);
                                    }
                                } catch (j e10) {
                                    r.j("TtmlDecoder", "Suppressing parser error", e10);
                                    i11++;
                                }
                            }
                            bVar2 = bVar;
                        }
                        c0316c = c0316c2;
                        aVar = aVar2;
                    } else if (eventType == 4) {
                        ((d) y4.a.e(dVar)).a(d.d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            hVar = new h((d) y4.a.e((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i11++;
                } else if (eventType == 3) {
                    i11--;
                }
                newPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new j("No TTML subtitles found");
        } catch (IOException e11) {
            throw new IllegalStateException("Unexpected error when reading input.", e11);
        } catch (XmlPullParserException e12) {
            throw new j("Unable to decode source", e12);
        }
    }
}
