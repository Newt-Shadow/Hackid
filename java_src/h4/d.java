package h4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Xml;
import b3.e3;
import b3.s;
import b3.x1;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.MediaInformation;
import f3.m;
import h4.k;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o6.q;
import o6.w;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import x4.g0;
import y4.o0;
import y4.q0;
import y4.r;
import y4.r0;
import y4.v;
/* loaded from: classes.dex */
public class d extends DefaultHandler implements g0.a {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f16773b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f16774c = Pattern.compile("CC([1-4])=.*");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f16775d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f16776e = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParserFactory f16777a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final x1 f16778a;

        /* renamed from: b  reason: collision with root package name */
        public final q f16779b;

        /* renamed from: c  reason: collision with root package name */
        public final k f16780c;

        /* renamed from: d  reason: collision with root package name */
        public final String f16781d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList f16782e;

        /* renamed from: f  reason: collision with root package name */
        public final ArrayList f16783f;

        /* renamed from: g  reason: collision with root package name */
        public final long f16784g;

        /* renamed from: h  reason: collision with root package name */
        public final List f16785h;

        /* renamed from: i  reason: collision with root package name */
        public final List f16786i;

        public a(x1 x1Var, List list, k kVar, String str, ArrayList arrayList, ArrayList arrayList2, List list2, List list3, long j10) {
            this.f16778a = x1Var;
            this.f16779b = q.t(list);
            this.f16780c = kVar;
            this.f16781d = str;
            this.f16782e = arrayList;
            this.f16783f = arrayList2;
            this.f16785h = list2;
            this.f16786i = list3;
            this.f16784g = j10;
        }
    }

    public d() {
        try {
            this.f16777a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    protected static int D(List list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f16787a) && (str = eVar.f16788b) != null) {
                Matcher matcher = f16774c.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                r.i("MpdParser", "Unable to parse CEA-608 channel number from: " + eVar.f16788b);
            }
        }
        return -1;
    }

    protected static int E(List list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f16787a) && (str = eVar.f16788b) != null) {
                Matcher matcher = f16775d.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                r.i("MpdParser", "Unable to parse CEA-708 service block number from: " + eVar.f16788b);
            }
        }
        return -1;
    }

    protected static long H(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j10;
        }
        return q0.H0(attributeValue);
    }

    protected static e I(XmlPullParser xmlPullParser, String str) {
        String r02 = r0(xmlPullParser, "schemeIdUri", "");
        String r03 = r0(xmlPullParser, "value", null);
        String r04 = r0(xmlPullParser, Chapter.KEY_ID, null);
        do {
            xmlPullParser.next();
        } while (!r0.d(xmlPullParser, str));
        return new e(r02, r03, r04);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected static int J(XmlPullParser xmlPullParser) {
        char c10;
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null) {
            return -1;
        }
        String e10 = n6.c.e(attributeValue);
        e10.hashCode();
        switch (e10.hashCode()) {
            case 1596796:
                if (e10.equals("4000")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 2937391:
                if (e10.equals("a000")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3094035:
                if (e10.equals("f801")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 3133436:
                if (e10.equals("fa01")) {
                    c10 = 3;
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
                return 1;
            case 1:
                return 2;
            case 2:
                return 6;
            case 3:
                return 8;
            default:
                return -1;
        }
    }

    protected static int K(XmlPullParser xmlPullParser) {
        int U = U(xmlPullParser, "value", -1);
        if (U <= 0 || U >= 33) {
            return -1;
        }
        return U;
    }

    protected static int L(XmlPullParser xmlPullParser) {
        int bitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null || (bitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return bitCount;
    }

    protected static long M(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j10;
        }
        return q0.I0(attributeValue);
    }

    protected static String N(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            String str = eVar.f16787a;
            if (!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) || !"JOC".equals(eVar.f16788b)) {
                if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(eVar.f16788b)) {
                    return "audio/eac3-joc";
                }
            } else {
                return "audio/eac3-joc";
            }
        }
        return "audio/eac3";
    }

    protected static float R(XmlPullParser xmlPullParser, String str, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Float.parseFloat(attributeValue);
        }
        return f10;
    }

    protected static float S(XmlPullParser xmlPullParser, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = f16773b.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                String group = matcher.group(2);
                if (!TextUtils.isEmpty(group)) {
                    return parseInt / Integer.parseInt(group);
                }
                return parseInt;
            }
            return f10;
        }
        return f10;
    }

    protected static int U(XmlPullParser xmlPullParser, String str, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Integer.parseInt(attributeValue);
        }
        return i10;
    }

    protected static long W(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if (n6.c.a("http://dashif.org/guidelines/last-segment-number", eVar.f16787a)) {
                return Long.parseLong(eVar.f16788b);
            }
        }
        return -1L;
    }

    protected static long X(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Long.parseLong(attributeValue);
        }
        return j10;
    }

    protected static int Z(XmlPullParser xmlPullParser) {
        int U = U(xmlPullParser, "value", -1);
        if (U < 0) {
            return -1;
        }
        int[] iArr = f16776e;
        if (U >= iArr.length) {
            return -1;
        }
        return iArr[U];
    }

    private long b(List list, long j10, long j11, int i10, long j12) {
        int m10;
        if (i10 >= 0) {
            m10 = i10 + 1;
        } else {
            m10 = (int) q0.m(j12 - j10, j11);
        }
        for (int i11 = 0; i11 < m10; i11++) {
            list.add(m(j10, j11));
            j10 += j11;
        }
        return j10;
    }

    private static int p(int i10, int i11) {
        boolean z10;
        if (i10 == -1) {
            return i11;
        }
        if (i11 == -1) {
            return i10;
        }
        if (i10 == i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        return i10;
    }

    private static String q(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        y4.a.f(str.equals(str2));
        return str;
    }

    private static void r(ArrayList arrayList) {
        String str;
        int i10 = 0;
        while (true) {
            if (i10 < arrayList.size()) {
                m.b bVar = (m.b) arrayList.get(i10);
                if (s.f4353c.equals(bVar.f15719b) && (str = bVar.f15720c) != null) {
                    arrayList.remove(i10);
                    break;
                }
                i10++;
            } else {
                str = null;
                break;
            }
        }
        if (str == null) {
            return;
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            m.b bVar2 = (m.b) arrayList.get(i11);
            if (s.f4352b.equals(bVar2.f15719b) && bVar2.f15720c == null) {
                arrayList.set(i11, new m.b(s.f4353c, str, bVar2.f15721d, bVar2.f15722e));
            }
        }
    }

    protected static String r0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return attributeValue;
        }
        return str2;
    }

    private static void s(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            m.b bVar = (m.b) arrayList.get(size);
            if (!bVar.c()) {
                int i10 = 0;
                while (true) {
                    if (i10 >= arrayList.size()) {
                        break;
                    } else if (((m.b) arrayList.get(i10)).a(bVar)) {
                        arrayList.remove(size);
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
    }

    protected static String s0(XmlPullParser xmlPullParser, String str) {
        String str2 = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                str2 = xmlPullParser.getText();
            } else {
                w(xmlPullParser);
            }
        } while (!r0.d(xmlPullParser, str));
        return str2;
    }

    private static long t(long j10, long j11) {
        if (j11 != -9223372036854775807L) {
            j10 = j11;
        }
        if (j10 == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j10;
    }

    private static String u(String str, String str2) {
        if (v.o(str)) {
            return v.c(str2);
        }
        if (v.s(str)) {
            return v.n(str2);
        }
        if (v.r(str)) {
            return str;
        }
        if (v.p(str)) {
            return str;
        }
        if ("application/mp4".equals(str)) {
            String g10 = v.g(str2);
            if ("text/vtt".equals(g10)) {
                return "application/x-mp4-vtt";
            }
            return g10;
        }
        return null;
    }

    private boolean v(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    public static void w(XmlPullParser xmlPullParser) {
        if (!r0.e(xmlPullParser)) {
            return;
        }
        int i10 = 1;
        while (i10 != 0) {
            xmlPullParser.next();
            if (r0.e(xmlPullParser)) {
                i10++;
            } else if (r0.c(xmlPullParser)) {
                i10--;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected int A(XmlPullParser xmlPullParser) {
        char c10;
        String r02 = r0(xmlPullParser, "schemeIdUri", null);
        r02.hashCode();
        int i10 = -1;
        switch (r02.hashCode()) {
            case -2128649360:
                if (r02.equals("urn:dts:dash:audio_channel_configuration:2012")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1352850286:
                if (r02.equals("urn:mpeg:dash:23003:3:audio_channel_configuration:2011")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1138141449:
                if (r02.equals("tag:dolby.com,2014:dash:audio_channel_configuration:2011")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -986633423:
                if (r02.equals("urn:mpeg:mpegB:cicp:ChannelConfiguration")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -79006963:
                if (r02.equals("tag:dts.com,2014:dash:audio_channel_configuration:2012")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 312179081:
                if (r02.equals("tag:dts.com,2018:uhd:audio_channel_configuration")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 2036691300:
                if (r02.equals("urn:dolby:dash:audio_channel_configuration:2011")) {
                    c10 = 6;
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
            case 4:
                i10 = K(xmlPullParser);
                break;
            case 1:
                i10 = U(xmlPullParser, "value", -1);
                break;
            case 2:
            case 6:
                i10 = J(xmlPullParser);
                break;
            case 3:
                i10 = Z(xmlPullParser);
                break;
            case 5:
                i10 = L(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!r0.d(xmlPullParser, "AudioChannelConfiguration"));
        return i10;
    }

    protected long B(XmlPullParser xmlPullParser, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j10;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return Float.parseFloat(attributeValue) * 1000000.0f;
    }

    protected List C(XmlPullParser xmlPullParser, List list, boolean z10) {
        int i10;
        String str;
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i11 = 1;
        if (attributeValue != null) {
            i10 = Integer.parseInt(attributeValue);
        } else if (z10) {
            i10 = 1;
        } else {
            i10 = Integer.MIN_VALUE;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        if (attributeValue2 != null) {
            i11 = Integer.parseInt(attributeValue2);
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String s02 = s0(xmlPullParser, "BaseURL");
        if (o0.b(s02)) {
            if (attributeValue3 == null) {
                attributeValue3 = s02;
            }
            return w.j(new b(s02, attributeValue3, i10, i11));
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = (b) list.get(i12);
            String d10 = o0.d(bVar.f16756a, s02);
            if (attributeValue3 == null) {
                str = d10;
            } else {
                str = attributeValue3;
            }
            if (z10) {
                i10 = bVar.f16758c;
                i11 = bVar.f16759d;
                str = bVar.f16757b;
            }
            arrayList.add(new b(d10, str, i10, i11));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.util.Pair F(org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h4.d.F(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    protected int G(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        if (!"image".equals(attributeValue)) {
            return -1;
        }
        return 4;
    }

    protected Pair O(XmlPullParser xmlPullParser, String str, String str2, long j10, long j11, ByteArrayOutputStream byteArrayOutputStream) {
        long X = X(xmlPullParser, Chapter.KEY_ID, 0L);
        long X2 = X(xmlPullParser, MediaInformation.KEY_DURATION, -9223372036854775807L);
        long X3 = X(xmlPullParser, "presentationTime", 0L);
        long M0 = q0.M0(X2, 1000L, j10);
        long M02 = q0.M0(X3 - j11, 1000000L, j10);
        String r02 = r0(xmlPullParser, "messageData", null);
        byte[] P = P(xmlPullParser, byteArrayOutputStream);
        Long valueOf = Long.valueOf(M02);
        if (r02 != null) {
            P = q0.l0(r02);
        }
        return Pair.create(valueOf, d(str, str2, X, M0, P));
    }

    protected byte[] P(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) {
        byteArrayOutputStream.reset();
        XmlSerializer newSerializer = Xml.newSerializer();
        newSerializer.setOutput(byteArrayOutputStream, n6.e.f26427c.name());
        xmlPullParser.nextToken();
        while (!r0.d(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    newSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    newSerializer.endDocument();
                    break;
                case 2:
                    newSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
                        newSerializer.attribute(xmlPullParser.getAttributeNamespace(i10), xmlPullParser.getAttributeName(i10), xmlPullParser.getAttributeValue(i10));
                    }
                    break;
                case 3:
                    newSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    newSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    newSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    newSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    newSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    newSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    newSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    newSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        newSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected f Q(XmlPullParser xmlPullParser) {
        ByteArrayOutputStream byteArrayOutputStream;
        long j10;
        ArrayList arrayList;
        String r02 = r0(xmlPullParser, "schemeIdUri", "");
        String r03 = r0(xmlPullParser, "value", "");
        long X = X(xmlPullParser, "timescale", 1L);
        long X2 = X(xmlPullParser, "presentationTimeOffset", 0L);
        ArrayList arrayList2 = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(512);
        while (true) {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Event")) {
                byteArrayOutputStream = byteArrayOutputStream2;
                long j11 = X2;
                j10 = X2;
                arrayList = arrayList2;
                arrayList.add(O(xmlPullParser, r02, r03, X, j11, byteArrayOutputStream));
            } else {
                byteArrayOutputStream = byteArrayOutputStream2;
                j10 = X2;
                arrayList = arrayList2;
                w(xmlPullParser);
            }
            if (r0.d(xmlPullParser, "EventStream")) {
                break;
            }
            arrayList2 = arrayList;
            byteArrayOutputStream2 = byteArrayOutputStream;
            X2 = j10;
        }
        long[] jArr = new long[arrayList.size()];
        v3.a[] aVarArr = new v3.a[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Pair pair = (Pair) arrayList.get(i10);
            jArr[i10] = ((Long) pair.first).longValue();
            aVarArr[i10] = (v3.a) pair.second;
        }
        return e(r02, r03, X, jArr, aVarArr);
    }

    protected i T(XmlPullParser xmlPullParser) {
        return d0(xmlPullParser, "sourceURL", "range");
    }

    protected String V(XmlPullParser xmlPullParser) {
        return s0(xmlPullParser, "Label");
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e5 A[LOOP:0: B:24:0x00a2->B:81:0x01e5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected h4.c Y(org.xmlpull.v1.XmlPullParser r47, android.net.Uri r48) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h4.d.Y(org.xmlpull.v1.XmlPullParser, android.net.Uri):h4.c");
    }

    protected Pair a0(XmlPullParser xmlPullParser, List list, long j10, long j11, long j12, long j13, boolean z10) {
        long j14;
        long j15;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Object obj;
        long j16;
        k l02;
        ArrayList arrayList4;
        d dVar = this;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, Chapter.KEY_ID);
        long M = M(xmlPullParser2, Chapter.KEY_START, j10);
        long j17 = -9223372036854775807L;
        if (j12 != -9223372036854775807L) {
            j14 = j12 + M;
        } else {
            j14 = -9223372036854775807L;
        }
        long M2 = M(xmlPullParser2, MediaInformation.KEY_DURATION, -9223372036854775807L);
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        long j18 = j11;
        boolean z11 = false;
        long j19 = -9223372036854775807L;
        k.e eVar = null;
        e eVar2 = null;
        while (true) {
            xmlPullParser.next();
            if (r0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    j18 = dVar.B(xmlPullParser2, j18);
                    z11 = true;
                }
                arrayList7.addAll(dVar.C(xmlPullParser2, list, z10));
                arrayList3 = arrayList6;
                arrayList = arrayList7;
                j16 = j17;
                obj = obj2;
                arrayList2 = arrayList5;
            } else {
                if (r0.f(xmlPullParser2, "AdaptationSet")) {
                    if (!arrayList7.isEmpty()) {
                        arrayList4 = arrayList7;
                    } else {
                        arrayList4 = list;
                    }
                    j15 = j18;
                    arrayList = arrayList7;
                    arrayList2 = arrayList5;
                    arrayList2.add(y(xmlPullParser, arrayList4, eVar, M2, j18, j19, j14, j13, z10));
                    xmlPullParser2 = xmlPullParser;
                    arrayList3 = arrayList6;
                } else {
                    j15 = j18;
                    ArrayList arrayList8 = arrayList6;
                    arrayList = arrayList7;
                    arrayList2 = arrayList5;
                    xmlPullParser2 = xmlPullParser;
                    if (r0.f(xmlPullParser2, "EventStream")) {
                        arrayList8.add(Q(xmlPullParser));
                        arrayList3 = arrayList8;
                    } else if (r0.f(xmlPullParser2, "SegmentBase")) {
                        arrayList3 = arrayList8;
                        eVar = j0(xmlPullParser2, null);
                        obj = null;
                        j18 = j15;
                        j16 = -9223372036854775807L;
                    } else {
                        arrayList3 = arrayList8;
                        if (r0.f(xmlPullParser2, "SegmentList")) {
                            long B = B(xmlPullParser2, -9223372036854775807L);
                            obj = null;
                            l02 = k0(xmlPullParser, null, j14, M2, j15, B, j13);
                            j19 = B;
                            j18 = j15;
                            j16 = -9223372036854775807L;
                        } else {
                            obj = null;
                            if (r0.f(xmlPullParser2, "SegmentTemplate")) {
                                long B2 = B(xmlPullParser2, -9223372036854775807L);
                                j16 = -9223372036854775807L;
                                l02 = l0(xmlPullParser, null, q.D(), j14, M2, j15, B2, j13);
                                j19 = B2;
                                j18 = j15;
                            } else {
                                j16 = -9223372036854775807L;
                                if (r0.f(xmlPullParser2, "AssetIdentifier")) {
                                    eVar2 = I(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    w(xmlPullParser);
                                }
                                j18 = j15;
                            }
                        }
                        eVar = l02;
                    }
                }
                obj = null;
                j16 = -9223372036854775807L;
                j18 = j15;
            }
            if (r0.d(xmlPullParser2, "Period")) {
                return Pair.create(h(attributeValue, M, arrayList2, arrayList3, eVar2), Long.valueOf(M2));
            }
            arrayList5 = arrayList2;
            arrayList7 = arrayList;
            obj2 = obj;
            arrayList6 = arrayList3;
            j17 = j16;
            dVar = this;
        }
    }

    protected String[] b0(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return strArr;
        }
        return attributeValue.split(StringUtils.COMMA);
    }

    protected h4.a c(int i10, int i11, List list, List list2, List list3, List list4) {
        return new h4.a(i10, i11, list, list2, list3, list4);
    }

    protected h c0(XmlPullParser xmlPullParser) {
        String str = null;
        String r02 = r0(xmlPullParser, "moreInformationURL", null);
        String r03 = r0(xmlPullParser, "lang", null);
        String str2 = null;
        String str3 = null;
        while (true) {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Title")) {
                str = xmlPullParser.nextText();
            } else if (r0.f(xmlPullParser, "Source")) {
                str2 = xmlPullParser.nextText();
            } else if (r0.f(xmlPullParser, "Copyright")) {
                str3 = xmlPullParser.nextText();
            } else {
                w(xmlPullParser);
            }
            String str4 = str3;
            if (r0.d(xmlPullParser, "ProgramInformation")) {
                return new h(str, str2, str4, r02, r03);
            }
            str3 = str4;
        }
    }

    protected v3.a d(String str, String str2, long j10, long j11, byte[] bArr) {
        return new v3.a(str, str2, j11, j10, bArr);
    }

    protected i d0(XmlPullParser xmlPullParser, String str, String str2) {
        long j10;
        long j11;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j10 = Long.parseLong(split[0]);
            if (split.length == 2) {
                j11 = (Long.parseLong(split[1]) - j10) + 1;
                return i(attributeValue, j10, j11);
            }
        } else {
            j10 = 0;
        }
        j11 = -1;
        return i(attributeValue, j10, j11);
    }

    protected f e(String str, String str2, long j10, long[] jArr, v3.a[] aVarArr) {
        return new f(str, str2, j10, jArr, aVarArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01ee A[LOOP:0: B:3:0x006a->B:57:0x01ee, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0198 A[EDGE_INSN: B:58:0x0198->B:47:0x0198 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected h4.d.a e0(org.xmlpull.v1.XmlPullParser r36, java.util.List r37, java.lang.String r38, java.lang.String r39, int r40, int r41, float r42, int r43, int r44, java.lang.String r45, java.util.List r46, java.util.List r47, java.util.List r48, java.util.List r49, h4.k r50, long r51, long r53, long r55, long r57, long r59, boolean r61) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h4.d.e0(org.xmlpull.v1.XmlPullParser, java.util.List, java.lang.String, java.lang.String, int, int, float, int, int, java.lang.String, java.util.List, java.util.List, java.util.List, java.util.List, h4.k, long, long, long, long, long, boolean):h4.d$a");
    }

    protected x1 f(String str, String str2, int i10, int i11, float f10, int i12, int i13, int i14, String str3, List list, List list2, String str4, List list3, List list4) {
        int i15;
        int i16;
        String str5 = str4;
        String u10 = u(str2, str5);
        if ("audio/eac3".equals(u10)) {
            u10 = N(list4);
            if ("audio/eac3-joc".equals(u10)) {
                str5 = "ec+3";
            }
        }
        int p02 = p0(list);
        int i02 = i0(list) | f0(list2) | h0(list3) | h0(list4);
        Pair t02 = t0(list3);
        x1.b X = new x1.b().U(str).M(str2).g0(u10).K(str5).b0(i14).i0(p02).e0(i02).X(str3);
        int i17 = -1;
        if (t02 != null) {
            i15 = ((Integer) t02.first).intValue();
        } else {
            i15 = -1;
        }
        x1.b l02 = X.l0(i15);
        if (t02 != null) {
            i16 = ((Integer) t02.second).intValue();
        } else {
            i16 = -1;
        }
        x1.b m02 = l02.m0(i16);
        if (v.s(u10)) {
            m02.n0(i10).S(i11).R(f10);
        } else if (v.o(u10)) {
            m02.J(i12).h0(i13);
        } else if (v.r(u10)) {
            if ("application/cea-608".equals(u10)) {
                i17 = D(list2);
            } else if ("application/cea-708".equals(u10)) {
                i17 = E(list2);
            }
            m02.H(i17);
        } else if (v.p(u10)) {
            m02.n0(i10).S(i11);
        }
        return m02.G();
    }

    protected int f0(List list) {
        int u02;
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (n6.c.a("urn:mpeg:dash:role:2011", eVar.f16787a)) {
                u02 = g0(eVar.f16788b);
            } else if (n6.c.a("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar.f16787a)) {
                u02 = u0(eVar.f16788b);
            }
            i10 |= u02;
        }
        return i10;
    }

    protected c g(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, o oVar, l lVar, Uri uri, List list) {
        return new c(j10, j11, j12, z10, j13, j14, j15, j16, hVar, oVar, lVar, uri, list);
    }

    protected int g0(String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals("subtitle")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1724546052:
                if (str.equals("description")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1574842690:
                if (str.equals("forced_subtitle")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1396432756:
                if (str.equals("forced-subtitle")) {
                    c10 = 5;
                    break;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
            case 5:
                return 128;
            case 1:
                return 512;
            case 2:
                return 2048;
            case 4:
                return 2;
            case 6:
                return 16;
            case 7:
                return 1;
            case '\b':
                return 256;
            case '\t':
                return 64;
            case '\n':
                return 8;
            case 11:
                return 32;
            case '\f':
                return 4;
            default:
                return 0;
        }
    }

    protected g h(String str, long j10, List list, List list2, e eVar) {
        return new g(str, j10, list, list2, eVar);
    }

    protected int h0(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (n6.c.a("http://dashif.org/guidelines/trickmode", ((e) list.get(i11)).f16787a)) {
                i10 |= 16384;
            }
        }
        return i10;
    }

    protected i i(String str, long j10, long j11) {
        return new i(str, j10, j11);
    }

    protected int i0(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (n6.c.a("urn:mpeg:dash:role:2011", eVar.f16787a)) {
                i10 |= g0(eVar.f16788b);
            }
        }
        return i10;
    }

    protected j j(a aVar, String str, String str2, ArrayList arrayList, ArrayList arrayList2) {
        x1.b b10 = aVar.f16778a.b();
        if (str != null) {
            b10.W(str);
        }
        String str3 = aVar.f16781d;
        if (str3 != null) {
            str2 = str3;
        }
        ArrayList arrayList3 = aVar.f16782e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            r(arrayList3);
            s(arrayList3);
            b10.O(new f3.m(str2, arrayList3));
        }
        ArrayList arrayList4 = aVar.f16783f;
        arrayList4.addAll(arrayList2);
        return j.o(aVar.f16784g, b10.G(), aVar.f16779b, aVar.f16780c, arrayList4, aVar.f16785h, aVar.f16786i, null);
    }

    protected k.e j0(XmlPullParser xmlPullParser, k.e eVar) {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        if (eVar != null) {
            j10 = eVar.f16824b;
        } else {
            j10 = 1;
        }
        long X = X(xmlPullParser, "timescale", j10);
        long j15 = 0;
        if (eVar != null) {
            j11 = eVar.f16825c;
        } else {
            j11 = 0;
        }
        long X2 = X(xmlPullParser, "presentationTimeOffset", j11);
        if (eVar != null) {
            j12 = eVar.f16838d;
        } else {
            j12 = 0;
        }
        if (eVar != null) {
            j15 = eVar.f16839e;
        }
        i iVar = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            j14 = Long.parseLong(split[0]);
            j13 = (Long.parseLong(split[1]) - j14) + 1;
        } else {
            j13 = j15;
            j14 = j12;
        }
        if (eVar != null) {
            iVar = eVar.f16823a;
        }
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Initialization")) {
                iVar = T(xmlPullParser);
            } else {
                w(xmlPullParser);
            }
        } while (!r0.d(xmlPullParser, "SegmentBase"));
        return n(iVar, X, X2, j14, j13);
    }

    protected k.b k(i iVar, long j10, long j11, long j12, long j13, List list, long j14, List list2, long j15, long j16) {
        return new k.b(iVar, j10, j11, j12, j13, list, j14, list2, q0.A0(j15), q0.A0(j16));
    }

    protected k.b k0(XmlPullParser xmlPullParser, k.b bVar, long j10, long j11, long j12, long j13, long j14) {
        long j15;
        long j16;
        long j17;
        long j18 = 1;
        if (bVar != null) {
            j15 = bVar.f16824b;
        } else {
            j15 = 1;
        }
        long X = X(xmlPullParser, "timescale", j15);
        if (bVar != null) {
            j16 = bVar.f16825c;
        } else {
            j16 = 0;
        }
        long X2 = X(xmlPullParser, "presentationTimeOffset", j16);
        if (bVar != null) {
            j17 = bVar.f16827e;
        } else {
            j17 = -9223372036854775807L;
        }
        long X3 = X(xmlPullParser, MediaInformation.KEY_DURATION, j17);
        if (bVar != null) {
            j18 = bVar.f16826d;
        }
        long X4 = X(xmlPullParser, "startNumber", j18);
        long t10 = t(j12, j13);
        List list = null;
        List list2 = null;
        i iVar = null;
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Initialization")) {
                iVar = T(xmlPullParser);
            } else if (r0.f(xmlPullParser, "SegmentTimeline")) {
                list = m0(xmlPullParser, X, j11);
            } else if (r0.f(xmlPullParser, "SegmentURL")) {
                if (list2 == null) {
                    list2 = new ArrayList();
                }
                list2.add(n0(xmlPullParser));
            } else {
                w(xmlPullParser);
            }
        } while (!r0.d(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (iVar == null) {
                iVar = bVar.f16823a;
            }
            if (list == null) {
                list = bVar.f16828f;
            }
            if (list2 == null) {
                list2 = bVar.f16832j;
            }
        }
        return k(iVar, X, X2, X4, X3, list, t10, list2, j14, j10);
    }

    protected k.c l(i iVar, long j10, long j11, long j12, long j13, long j14, List list, long j15, n nVar, n nVar2, long j16, long j17) {
        return new k.c(iVar, j10, j11, j12, j13, j14, list, j15, nVar, nVar2, q0.A0(j16), q0.A0(j17));
    }

    protected k.c l0(XmlPullParser xmlPullParser, k.c cVar, List list, long j10, long j11, long j12, long j13, long j14) {
        long j15;
        long j16;
        long j17;
        n nVar;
        n nVar2;
        long j18 = 1;
        if (cVar != null) {
            j15 = cVar.f16824b;
        } else {
            j15 = 1;
        }
        long X = X(xmlPullParser, "timescale", j15);
        if (cVar != null) {
            j16 = cVar.f16825c;
        } else {
            j16 = 0;
        }
        long X2 = X(xmlPullParser, "presentationTimeOffset", j16);
        if (cVar != null) {
            j17 = cVar.f16827e;
        } else {
            j17 = -9223372036854775807L;
        }
        long X3 = X(xmlPullParser, MediaInformation.KEY_DURATION, j17);
        if (cVar != null) {
            j18 = cVar.f16826d;
        }
        long X4 = X(xmlPullParser, "startNumber", j18);
        long W = W(list);
        long t10 = t(j12, j13);
        List list2 = null;
        if (cVar != null) {
            nVar = cVar.f16834k;
        } else {
            nVar = null;
        }
        n v02 = v0(xmlPullParser, "media", nVar);
        if (cVar != null) {
            nVar2 = cVar.f16833j;
        } else {
            nVar2 = null;
        }
        n v03 = v0(xmlPullParser, "initialization", nVar2);
        i iVar = null;
        while (true) {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Initialization")) {
                iVar = T(xmlPullParser);
            } else if (r0.f(xmlPullParser, "SegmentTimeline")) {
                list2 = m0(xmlPullParser, X, j11);
            } else {
                w(xmlPullParser);
            }
            if (r0.d(xmlPullParser, "SegmentTemplate")) {
                break;
            }
        }
        if (cVar != null) {
            if (iVar == null) {
                iVar = cVar.f16823a;
            }
            if (list2 == null) {
                list2 = cVar.f16828f;
            }
        }
        return l(iVar, X, X2, X4, W, X3, list2, t10, v03, v02, j14, j10);
    }

    protected k.d m(long j10, long j11) {
        return new k.d(j10, j11);
    }

    protected List m0(XmlPullParser xmlPullParser, long j10, long j11) {
        ArrayList arrayList = new ArrayList();
        long j12 = 0;
        long j13 = -9223372036854775807L;
        boolean z10 = false;
        int i10 = 0;
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "S")) {
                long X = X(xmlPullParser, "t", -9223372036854775807L);
                if (z10) {
                    j12 = b(arrayList, j12, j13, i10, X);
                }
                if (X == -9223372036854775807L) {
                    X = j12;
                }
                j13 = X(xmlPullParser, "d", -9223372036854775807L);
                i10 = U(xmlPullParser, "r", 0);
                z10 = true;
                j12 = X;
            } else {
                w(xmlPullParser);
            }
        } while (!r0.d(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            b(arrayList, j12, j13, i10, q0.M0(j11, j10, 1000L));
        }
        return arrayList;
    }

    protected k.e n(i iVar, long j10, long j11, long j12, long j13) {
        return new k.e(iVar, j10, j11, j12, j13);
    }

    protected i n0(XmlPullParser xmlPullParser) {
        return d0(xmlPullParser, "media", "mediaRange");
    }

    protected o o(String str, String str2) {
        return new o(str, str2);
    }

    protected int o0(String str) {
        if (str == null) {
            return 0;
        }
        if (!str.equals("forced_subtitle") && !str.equals("forced-subtitle")) {
            return 0;
        }
        return 2;
    }

    protected int p0(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (n6.c.a("urn:mpeg:dash:role:2011", eVar.f16787a)) {
                i10 |= o0(eVar.f16788b);
            }
        }
        return i10;
    }

    protected l q0(XmlPullParser xmlPullParser) {
        long j10 = -9223372036854775807L;
        long j11 = -9223372036854775807L;
        long j12 = -9223372036854775807L;
        float f10 = -3.4028235E38f;
        float f11 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, "Latency")) {
                j10 = X(xmlPullParser, "target", -9223372036854775807L);
                j11 = X(xmlPullParser, "min", -9223372036854775807L);
                j12 = X(xmlPullParser, "max", -9223372036854775807L);
            } else if (r0.f(xmlPullParser, "PlaybackRate")) {
                f10 = R(xmlPullParser, "min", -3.4028235E38f);
                f11 = R(xmlPullParser, "max", -3.4028235E38f);
            }
            long j13 = j10;
            long j14 = j11;
            long j15 = j12;
            float f12 = f10;
            float f13 = f11;
            if (r0.d(xmlPullParser, "ServiceDescription")) {
                return new l(j13, j14, j15, f12, f13);
            }
            j10 = j13;
            j11 = j14;
            j12 = j15;
            f10 = f12;
            f11 = f13;
        }
    }

    protected Pair t0(List list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if ((n6.c.a("http://dashif.org/thumbnail_tile", eVar.f16787a) || n6.c.a("http://dashif.org/guidelines/thumbnail_tile", eVar.f16787a)) && (str = eVar.f16788b) != null) {
                String[] P0 = q0.P0(str, "x");
                if (P0.length == 2) {
                    try {
                        return Pair.create(Integer.valueOf(Integer.parseInt(P0[0])), Integer.valueOf(Integer.parseInt(P0[1])));
                    } catch (NumberFormatException unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    protected int u0(String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c10 = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c10 = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c10 = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 512;
            case 1:
                return 2048;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    protected n v0(XmlPullParser xmlPullParser, String str, n nVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return n.b(attributeValue);
        }
        return nVar;
    }

    protected o w0(XmlPullParser xmlPullParser) {
        return o(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    @Override // x4.g0.a
    /* renamed from: x */
    public c a(Uri uri, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.f16777a.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return Y(newPullParser, uri);
            }
            throw e3.c("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e10) {
            throw e3.c(null, e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x030e A[LOOP:0: B:3:0x007c->B:71:0x030e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02ce A[EDGE_INSN: B:72:0x02ce->B:65:0x02ce ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected h4.a y(org.xmlpull.v1.XmlPullParser r55, java.util.List r56, h4.k r57, long r58, long r60, long r62, long r64, long r66, boolean r68) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h4.d.y(org.xmlpull.v1.XmlPullParser, java.util.List, h4.k, long, long, long, long, long, boolean):h4.a");
    }

    protected void z(XmlPullParser xmlPullParser) {
        w(xmlPullParser);
    }
}
