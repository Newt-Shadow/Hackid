package l4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import b3.e3;
import b3.x1;
import f3.m;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import l4.a;
import o3.l;
import o3.p;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import x4.g0;
import y4.q0;
/* loaded from: classes.dex */
public class b implements g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParserFactory f25224a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f25225a;

        /* renamed from: b  reason: collision with root package name */
        private final String f25226b;

        /* renamed from: c  reason: collision with root package name */
        private final a f25227c;

        /* renamed from: d  reason: collision with root package name */
        private final List f25228d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f25227c = aVar;
            this.f25225a = str;
            this.f25226b = str2;
        }

        private a e(a aVar, String str, String str2) {
            if ("QualityLevel".equals(str)) {
                return new d(aVar, str2);
            }
            if ("Protection".equals(str)) {
                return new c(aVar, str2);
            }
            if ("StreamIndex".equals(str)) {
                return new f(aVar, str2);
            }
            return null;
        }

        protected void a(Object obj) {
        }

        protected abstract Object b();

        protected final Object c(String str) {
            for (int i10 = 0; i10 < this.f25228d.size(); i10++) {
                Pair pair = (Pair) this.f25228d.get(i10);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f25227c;
            if (aVar == null) {
                return null;
            }
            return aVar.c(str);
        }

        protected boolean d(String str) {
            return false;
        }

        public final Object f(XmlPullParser xmlPullParser) {
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType != 1) {
                    if (eventType != 2) {
                        if (eventType != 3) {
                            if (eventType == 4 && z10 && i10 == 0) {
                                o(xmlPullParser);
                            }
                        } else if (!z10) {
                            continue;
                        } else if (i10 > 0) {
                            i10--;
                        } else {
                            String name = xmlPullParser.getName();
                            h(xmlPullParser);
                            if (!d(name)) {
                                return b();
                            }
                        }
                    } else {
                        String name2 = xmlPullParser.getName();
                        if (this.f25226b.equals(name2)) {
                            n(xmlPullParser);
                            z10 = true;
                        } else if (z10) {
                            if (i10 > 0) {
                                i10++;
                            } else if (d(name2)) {
                                n(xmlPullParser);
                            } else {
                                a e10 = e(this, name2, this.f25225a);
                                if (e10 == null) {
                                    i10 = 1;
                                } else {
                                    a(e10.f(xmlPullParser));
                                }
                            }
                        }
                    }
                    xmlPullParser.next();
                } else {
                    return null;
                }
            }
        }

        protected final boolean g(XmlPullParser xmlPullParser, String str, boolean z10) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return Boolean.parseBoolean(attributeValue);
            }
            return z10;
        }

        protected void h(XmlPullParser xmlPullParser) {
        }

        protected final int i(XmlPullParser xmlPullParser, String str, int i10) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e10) {
                    throw e3.c(null, e10);
                }
            }
            return i10;
        }

        protected final long j(XmlPullParser xmlPullParser, String str, long j10) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e10) {
                    throw e3.c(null, e10);
                }
            }
            return j10;
        }

        protected final int k(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e10) {
                    throw e3.c(null, e10);
                }
            }
            throw new C0241b(str);
        }

        protected final long l(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e10) {
                    throw e3.c(null, e10);
                }
            }
            throw new C0241b(str);
        }

        protected final String m(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new C0241b(str);
        }

        protected abstract void n(XmlPullParser xmlPullParser);

        protected void o(XmlPullParser xmlPullParser) {
        }

        protected final void p(String str, Object obj) {
            this.f25228d.add(Pair.create(str, obj));
        }
    }

    /* renamed from: l4.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0241b extends e3 {
        public C0241b(String str) {
            super("Missing required field: " + str, null, true, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c extends a {

        /* renamed from: e  reason: collision with root package name */
        private boolean f25229e;

        /* renamed from: f  reason: collision with root package name */
        private UUID f25230f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f25231g;

        public c(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        private static p[] q(byte[] bArr) {
            return new p[]{new p(true, null, 8, r(bArr), 0, 0, null)};
        }

        private static byte[] r(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < bArr.length; i10 += 2) {
                sb2.append((char) bArr[i10]);
            }
            String sb3 = sb2.toString();
            byte[] decode = Base64.decode(sb3.substring(sb3.indexOf("<KID>") + 5, sb3.indexOf("</KID>")), 0);
            t(decode, 0, 3);
            t(decode, 1, 2);
            t(decode, 4, 5);
            t(decode, 6, 7);
            return decode;
        }

        private static String s(String str) {
            if (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') {
                return str.substring(1, str.length() - 1);
            }
            return str;
        }

        private static void t(byte[] bArr, int i10, int i11) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[i11];
            bArr[i11] = b10;
        }

        @Override // l4.b.a
        public Object b() {
            UUID uuid = this.f25230f;
            return new a.C0240a(uuid, l.a(uuid, this.f25231g), q(this.f25231g));
        }

        @Override // l4.b.a
        public boolean d(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override // l4.b.a
        public void h(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f25229e = false;
            }
        }

        @Override // l4.b.a
        public void n(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f25229e = true;
                this.f25230f = UUID.fromString(s(xmlPullParser.getAttributeValue(null, "SystemID")));
            }
        }

        @Override // l4.b.a
        public void o(XmlPullParser xmlPullParser) {
            if (this.f25229e) {
                this.f25231g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d extends a {

        /* renamed from: e  reason: collision with root package name */
        private x1 f25232e;

        public d(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        private static List q(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] J = q0.J(str);
                byte[][] i10 = y4.e.i(J);
                if (i10 == null) {
                    arrayList.add(J);
                } else {
                    Collections.addAll(arrayList, i10);
                }
            }
            return arrayList;
        }

        private static String r(String str) {
            if (!str.equalsIgnoreCase("H264") && !str.equalsIgnoreCase("X264") && !str.equalsIgnoreCase("AVC1") && !str.equalsIgnoreCase("DAVC")) {
                if (!str.equalsIgnoreCase("AAC") && !str.equalsIgnoreCase("AACL") && !str.equalsIgnoreCase("AACH") && !str.equalsIgnoreCase("AACP")) {
                    if (!str.equalsIgnoreCase("TTML") && !str.equalsIgnoreCase("DFXP")) {
                        if (!str.equalsIgnoreCase("ac-3") && !str.equalsIgnoreCase("dac3")) {
                            if (!str.equalsIgnoreCase("ec-3") && !str.equalsIgnoreCase("dec3")) {
                                if (str.equalsIgnoreCase("dtsc")) {
                                    return "audio/vnd.dts";
                                }
                                if (!str.equalsIgnoreCase("dtsh") && !str.equalsIgnoreCase("dtsl")) {
                                    if (str.equalsIgnoreCase("dtse")) {
                                        return "audio/vnd.dts.hd;profile=lbr";
                                    }
                                    if (str.equalsIgnoreCase("opus")) {
                                        return "audio/opus";
                                    }
                                    return null;
                                }
                                return "audio/vnd.dts.hd";
                            }
                            return "audio/eac3";
                        }
                        return "audio/ac3";
                    }
                    return "application/ttml+xml";
                }
                return "audio/mp4a-latm";
            }
            return "video/avc";
        }

        @Override // l4.b.a
        public Object b() {
            return this.f25232e;
        }

        @Override // l4.b.a
        public void n(XmlPullParser xmlPullParser) {
            int i10;
            x1.b bVar = new x1.b();
            String r10 = r(m(xmlPullParser, "FourCC"));
            int intValue = ((Integer) c("Type")).intValue();
            if (intValue == 2) {
                bVar.M("video/mp4").n0(k(xmlPullParser, "MaxWidth")).S(k(xmlPullParser, "MaxHeight")).V(q(xmlPullParser.getAttributeValue(null, "CodecPrivateData")));
            } else if (intValue == 1) {
                if (r10 == null) {
                    r10 = "audio/mp4a-latm";
                }
                int k10 = k(xmlPullParser, "Channels");
                int k11 = k(xmlPullParser, "SamplingRate");
                List q10 = q(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                if (q10.isEmpty() && "audio/mp4a-latm".equals(r10)) {
                    q10 = Collections.singletonList(d3.a.a(k11, k10));
                }
                bVar.M("audio/mp4").J(k10).h0(k11).V(q10);
            } else if (intValue == 3) {
                String str = (String) c("Subtype");
                if (str != null) {
                    if (!str.equals("CAPT")) {
                        if (str.equals("DESC")) {
                            i10 = 1024;
                        }
                    } else {
                        i10 = 64;
                    }
                    bVar.M("application/mp4").e0(i10);
                }
                i10 = 0;
                bVar.M("application/mp4").e0(i10);
            } else {
                bVar.M("application/mp4");
            }
            this.f25232e = bVar.U(xmlPullParser.getAttributeValue(null, "Index")).W((String) c("Name")).g0(r10).I(k(xmlPullParser, "Bitrate")).X((String) c("Language")).G();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class e extends a {

        /* renamed from: e  reason: collision with root package name */
        private final List f25233e;

        /* renamed from: f  reason: collision with root package name */
        private int f25234f;

        /* renamed from: g  reason: collision with root package name */
        private int f25235g;

        /* renamed from: h  reason: collision with root package name */
        private long f25236h;

        /* renamed from: i  reason: collision with root package name */
        private long f25237i;

        /* renamed from: j  reason: collision with root package name */
        private long f25238j;

        /* renamed from: k  reason: collision with root package name */
        private int f25239k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f25240l;

        /* renamed from: m  reason: collision with root package name */
        private a.C0240a f25241m;

        public e(a aVar, String str) {
            super(aVar, str, "SmoothStreamingMedia");
            this.f25239k = -1;
            this.f25241m = null;
            this.f25233e = new LinkedList();
        }

        @Override // l4.b.a
        public void a(Object obj) {
            boolean z10;
            if (obj instanceof a.b) {
                this.f25233e.add((a.b) obj);
            } else if (obj instanceof a.C0240a) {
                if (this.f25241m == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y4.a.f(z10);
                this.f25241m = (a.C0240a) obj;
            }
        }

        @Override // l4.b.a
        public Object b() {
            int size = this.f25233e.size();
            a.b[] bVarArr = new a.b[size];
            this.f25233e.toArray(bVarArr);
            if (this.f25241m != null) {
                a.C0240a c0240a = this.f25241m;
                m mVar = new m(new m.b(c0240a.f25205a, "video/mp4", c0240a.f25206b));
                for (int i10 = 0; i10 < size; i10++) {
                    a.b bVar = bVarArr[i10];
                    int i11 = bVar.f25208a;
                    if (i11 == 2 || i11 == 1) {
                        x1[] x1VarArr = bVar.f25217j;
                        for (int i12 = 0; i12 < x1VarArr.length; i12++) {
                            x1VarArr[i12] = x1VarArr[i12].b().O(mVar).G();
                        }
                    }
                }
            }
            return new l4.a(this.f25234f, this.f25235g, this.f25236h, this.f25237i, this.f25238j, this.f25239k, this.f25240l, this.f25241m, bVarArr);
        }

        @Override // l4.b.a
        public void n(XmlPullParser xmlPullParser) {
            this.f25234f = k(xmlPullParser, "MajorVersion");
            this.f25235g = k(xmlPullParser, "MinorVersion");
            this.f25236h = j(xmlPullParser, "TimeScale", 10000000L);
            this.f25237i = l(xmlPullParser, "Duration");
            this.f25238j = j(xmlPullParser, "DVRWindowLength", 0L);
            this.f25239k = i(xmlPullParser, "LookaheadCount", -1);
            this.f25240l = g(xmlPullParser, "IsLive", false);
            p("TimeScale", Long.valueOf(this.f25236h));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f extends a {

        /* renamed from: e  reason: collision with root package name */
        private final String f25242e;

        /* renamed from: f  reason: collision with root package name */
        private final List f25243f;

        /* renamed from: g  reason: collision with root package name */
        private int f25244g;

        /* renamed from: h  reason: collision with root package name */
        private String f25245h;

        /* renamed from: i  reason: collision with root package name */
        private long f25246i;

        /* renamed from: j  reason: collision with root package name */
        private String f25247j;

        /* renamed from: k  reason: collision with root package name */
        private String f25248k;

        /* renamed from: l  reason: collision with root package name */
        private int f25249l;

        /* renamed from: m  reason: collision with root package name */
        private int f25250m;

        /* renamed from: n  reason: collision with root package name */
        private int f25251n;

        /* renamed from: o  reason: collision with root package name */
        private int f25252o;

        /* renamed from: p  reason: collision with root package name */
        private String f25253p;

        /* renamed from: q  reason: collision with root package name */
        private ArrayList f25254q;

        /* renamed from: r  reason: collision with root package name */
        private long f25255r;

        public f(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f25242e = str;
            this.f25243f = new LinkedList();
        }

        private void q(XmlPullParser xmlPullParser) {
            int s10 = s(xmlPullParser);
            this.f25244g = s10;
            p("Type", Integer.valueOf(s10));
            if (this.f25244g == 3) {
                this.f25245h = m(xmlPullParser, "Subtype");
            } else {
                this.f25245h = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            p("Subtype", this.f25245h);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Name");
            this.f25247j = attributeValue;
            p("Name", attributeValue);
            this.f25248k = m(xmlPullParser, "Url");
            this.f25249l = i(xmlPullParser, "MaxWidth", -1);
            this.f25250m = i(xmlPullParser, "MaxHeight", -1);
            this.f25251n = i(xmlPullParser, "DisplayWidth", -1);
            this.f25252o = i(xmlPullParser, "DisplayHeight", -1);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
            this.f25253p = attributeValue2;
            p("Language", attributeValue2);
            long i10 = i(xmlPullParser, "TimeScale", -1);
            this.f25246i = i10;
            if (i10 == -1) {
                this.f25246i = ((Long) c("TimeScale")).longValue();
            }
            this.f25254q = new ArrayList();
        }

        private void r(XmlPullParser xmlPullParser) {
            int size = this.f25254q.size();
            long j10 = j(xmlPullParser, "t", -9223372036854775807L);
            int i10 = 1;
            if (j10 == -9223372036854775807L) {
                if (size == 0) {
                    j10 = 0;
                } else if (this.f25255r != -1) {
                    j10 = this.f25255r + ((Long) this.f25254q.get(size - 1)).longValue();
                } else {
                    throw e3.c("Unable to infer start time", null);
                }
            }
            this.f25254q.add(Long.valueOf(j10));
            this.f25255r = j(xmlPullParser, "d", -9223372036854775807L);
            long j11 = j(xmlPullParser, "r", 1L);
            if (j11 > 1 && this.f25255r == -9223372036854775807L) {
                throw e3.c("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j12 = i10;
                if (j12 < j11) {
                    this.f25254q.add(Long.valueOf((this.f25255r * j12) + j10));
                    i10++;
                } else {
                    return;
                }
            }
        }

        private int s(XmlPullParser xmlPullParser) {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue != null) {
                if ("audio".equalsIgnoreCase(attributeValue)) {
                    return 1;
                }
                if ("video".equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                if ("text".equalsIgnoreCase(attributeValue)) {
                    return 3;
                }
                throw e3.c("Invalid key value[" + attributeValue + "]", null);
            }
            throw new C0241b("Type");
        }

        @Override // l4.b.a
        public void a(Object obj) {
            if (obj instanceof x1) {
                this.f25243f.add((x1) obj);
            }
        }

        @Override // l4.b.a
        public Object b() {
            x1[] x1VarArr = new x1[this.f25243f.size()];
            this.f25243f.toArray(x1VarArr);
            return new a.b(this.f25242e, this.f25248k, this.f25244g, this.f25245h, this.f25246i, this.f25247j, this.f25249l, this.f25250m, this.f25251n, this.f25252o, this.f25253p, x1VarArr, this.f25254q, this.f25255r);
        }

        @Override // l4.b.a
        public boolean d(String str) {
            return "c".equals(str);
        }

        @Override // l4.b.a
        public void n(XmlPullParser xmlPullParser) {
            if ("c".equals(xmlPullParser.getName())) {
                r(xmlPullParser);
            } else {
                q(xmlPullParser);
            }
        }
    }

    public b() {
        try {
            this.f25224a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    @Override // x4.g0.a
    /* renamed from: b */
    public l4.a a(Uri uri, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.f25224a.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (l4.a) new e(null, uri.toString()).f(newPullParser);
        } catch (XmlPullParserException e10) {
            throw e3.c(null, e10);
        }
    }
}
