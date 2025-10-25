package j4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import b3.e3;
import b3.s;
import b3.x1;
import f3.m;
import i4.q;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import j4.g;
import j4.h;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o6.t;
import x4.g0;
import y4.o0;
import y4.q0;
import y4.r;
import y4.v;
/* loaded from: classes.dex */
public final class j implements g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final h f24448a;

    /* renamed from: b  reason: collision with root package name */
    private final g f24449b;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f24424c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f24425d = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f24426e = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f24427f = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f24428g = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f24429h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f24430i = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f24431j = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f24432k = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f24433l = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f24434m = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f24435n = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f24436o = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f24437p = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f24438q = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f24439r = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* renamed from: s  reason: collision with root package name */
    private static final Pattern f24440s = c("CAN-SKIP-DATERANGES");

    /* renamed from: t  reason: collision with root package name */
    private static final Pattern f24441t = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f24442u = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f24443v = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: w  reason: collision with root package name */
    private static final Pattern f24444w = c("CAN-BLOCK-RELOAD");

    /* renamed from: x  reason: collision with root package name */
    private static final Pattern f24445x = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f24446y = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f24447z = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern A = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern B = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern C = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern D = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern E = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern F = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern G = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern H = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern I = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern J = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern K = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern L = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern M = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern N = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern O = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern P = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern Q = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern R = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern S = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern T = c("AUTOSELECT");
    private static final Pattern U = c("DEFAULT");
    private static final Pattern V = c("FORCED");
    private static final Pattern W = c("INDEPENDENT");
    private static final Pattern X = c("GAP");
    private static final Pattern Y = c("PRECISE");
    private static final Pattern Z = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: a0  reason: collision with root package name */
    private static final Pattern f24422a0 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: b0  reason: collision with root package name */
    private static final Pattern f24423b0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* loaded from: classes.dex */
    public static final class a extends IOException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedReader f24450a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue f24451b;

        /* renamed from: c  reason: collision with root package name */
        private String f24452c;

        public b(Queue queue, BufferedReader bufferedReader) {
            this.f24451b = queue;
            this.f24450a = bufferedReader;
        }

        public boolean a() {
            String trim;
            if (this.f24452c != null) {
                return true;
            }
            if (!this.f24451b.isEmpty()) {
                this.f24452c = (String) y4.a.e((String) this.f24451b.poll());
                return true;
            }
            do {
                String readLine = this.f24450a.readLine();
                this.f24452c = readLine;
                if (readLine != null) {
                    trim = readLine.trim();
                    this.f24452c = trim;
                } else {
                    return false;
                }
            } while (trim.isEmpty());
            return true;
        }

        public String b() {
            if (a()) {
                String str = this.f24452c;
                this.f24452c = null;
                return str;
            }
            throw new NoSuchElementException();
        }
    }

    public j() {
        this(h.f24398n, null);
    }

    private static long A(String str, Pattern pattern) {
        return new BigDecimal(z(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static String B(String str, Map map) {
        Matcher matcher = f24423b0.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int C(BufferedReader bufferedReader, boolean z10, int i10) {
        while (i10 != -1 && Character.isWhitespace(i10) && (z10 || !q0.u0(i10))) {
            i10 = bufferedReader.read();
        }
        return i10;
    }

    private static boolean b(BufferedReader bufferedReader) {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int C2 = C(bufferedReader, true, read);
        for (int i10 = 0; i10 < 7; i10++) {
            if (C2 != "#EXTM3U".charAt(i10)) {
                return false;
            }
            C2 = bufferedReader.read();
        }
        return q0.u0(C(bufferedReader, false, C2));
    }

    private static Pattern c(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    private static m d(String str, m.b[] bVarArr) {
        m.b[] bVarArr2 = new m.b[bVarArr.length];
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            bVarArr2[i10] = bVarArr[i10].b(null);
        }
        return new m(str, bVarArr2);
    }

    private static String e(long j10, String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str2 != null) {
            return str2;
        }
        return Long.toHexString(j10);
    }

    private static h.b f(ArrayList arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            h.b bVar = (h.b) arrayList.get(i10);
            if (str.equals(bVar.f24416d)) {
                return bVar;
            }
        }
        return null;
    }

    private static h.b g(ArrayList arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            h.b bVar = (h.b) arrayList.get(i10);
            if (str.equals(bVar.f24417e)) {
                return bVar;
            }
        }
        return null;
    }

    private static h.b h(ArrayList arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            h.b bVar = (h.b) arrayList.get(i10);
            if (str.equals(bVar.f24415c)) {
                return bVar;
            }
        }
        return null;
    }

    private static double j(String str, Pattern pattern) {
        return Double.parseDouble(z(str, pattern, Collections.emptyMap()));
    }

    private static m.b k(String str, String str2, Map map) {
        String u10 = u(str, J, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String z10 = z(str, K, map);
            return new m.b(s.f4354d, "video/mp4", Base64.decode(z10.substring(z10.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new m.b(s.f4354d, "hls", q0.l0(str));
        } else {
            if ("com.microsoft.playready".equals(str2) && "1".equals(u10)) {
                String z11 = z(str, K, map);
                byte[] decode = Base64.decode(z11.substring(z11.indexOf(44)), 0);
                UUID uuid = s.f4355e;
                return new m.b(uuid, "video/mp4", o3.l.a(uuid, decode));
            }
            return null;
        }
    }

    private static String l(String str) {
        if (!"SAMPLE-AES-CENC".equals(str) && !"SAMPLE-AES-CTR".equals(str)) {
            return "cbcs";
        }
        return "cenc";
    }

    private static int m(String str, Pattern pattern) {
        return Integer.parseInt(z(str, pattern, Collections.emptyMap()));
    }

    private static long n(String str, Pattern pattern) {
        return Long.parseLong(z(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static g o(h hVar, g gVar, b bVar, String str) {
        boolean z10;
        List list;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        long j10;
        boolean z11;
        int i10;
        g.b bVar2;
        boolean z12;
        int i11;
        String v10;
        long j11;
        boolean z13;
        long j12;
        long j13;
        long j14;
        long j15;
        boolean z14;
        Object obj;
        g.d dVar;
        h hVar2 = hVar;
        g gVar2 = gVar;
        boolean z15 = hVar2.f24421c;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        g.f fVar = new g.f(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        boolean z16 = false;
        String str3 = "";
        boolean z17 = z15;
        g.f fVar2 = fVar;
        int i12 = 0;
        boolean z18 = false;
        boolean z19 = false;
        int i13 = 0;
        boolean z20 = false;
        boolean z21 = false;
        int i14 = 0;
        boolean z22 = false;
        String str4 = str3;
        String str5 = null;
        long j16 = -9223372036854775807L;
        long j17 = 0;
        long j18 = 0;
        int i15 = 1;
        long j19 = -9223372036854775807L;
        long j20 = -9223372036854775807L;
        m mVar = null;
        long j21 = 0;
        Object obj2 = null;
        long j22 = 0;
        long j23 = -1;
        String str6 = null;
        String str7 = null;
        long j24 = 0;
        long j25 = 0;
        g.d dVar2 = null;
        long j26 = 0;
        long j27 = 0;
        ArrayList arrayList7 = arrayList4;
        g.b bVar3 = null;
        while (bVar.a()) {
            String b10 = bVar.b();
            if (b10.startsWith("#EXT")) {
                arrayList6.add(b10);
            }
            if (b10.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String z23 = z(b10, f24438q, hashMap);
                if ("VOD".equals(z23)) {
                    i12 = 1;
                } else if ("EVENT".equals(z23)) {
                    i12 = 2;
                }
            } else if (b10.equals("#EXT-X-I-FRAMES-ONLY")) {
                z22 = true;
            } else if (b10.startsWith("#EXT-X-START")) {
                j16 = (long) (j(b10, C) * 1000000.0d);
                z18 = q(b10, Y, z16);
            } else if (b10.startsWith("#EXT-X-SERVER-CONTROL")) {
                fVar2 = y(b10);
            } else if (b10.startsWith("#EXT-X-PART-INF")) {
                j20 = (long) (j(b10, f24436o) * 1000000.0d);
            } else if (b10.startsWith("#EXT-X-MAP")) {
                String z24 = z(b10, K, hashMap);
                String v11 = v(b10, E, hashMap);
                if (v11 != null) {
                    String[] P0 = q0.P0(v11, "@");
                    j23 = Long.parseLong(P0[z16 ? 1 : 0]);
                    if (P0.length > 1) {
                        j21 = Long.parseLong(P0[1]);
                    }
                }
                int i16 = (j23 > (-1L) ? 1 : (j23 == (-1L) ? 0 : -1));
                if (i16 == 0) {
                    j21 = 0;
                }
                String str8 = str6;
                if (str5 != null && str8 == null) {
                    throw e3.c("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
                dVar2 = new g.d(z24, j21, j23, str5, str8);
                if (i16 != 0) {
                    j21 += j23;
                }
                str6 = str8;
                j23 = -1;
            } else {
                String str9 = str6;
                if (b10.startsWith("#EXT-X-TARGETDURATION")) {
                    j19 = 1000000 * m(b10, f24434m);
                } else {
                    if (b10.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        j25 = n(b10, f24445x);
                        str6 = str9;
                        j18 = j25;
                    } else if (b10.startsWith("#EXT-X-VERSION")) {
                        i15 = m(b10, f24437p);
                    } else {
                        if (b10.startsWith("#EXT-X-DEFINE")) {
                            String v12 = v(b10, f24422a0, hashMap);
                            if (v12 != null) {
                                String str10 = (String) hVar2.f24407l.get(v12);
                                if (str10 != null) {
                                    hashMap.put(v12, str10);
                                }
                            } else {
                                hashMap.put(z(b10, P, hashMap), z(b10, Z, hashMap));
                            }
                            arrayList = arrayList7;
                            arrayList2 = arrayList6;
                            str2 = str7;
                            j10 = j25;
                            z11 = false;
                            i10 = i12;
                        } else if (b10.startsWith("#EXTINF")) {
                            j26 = A(b10, f24446y);
                            str4 = u(b10, f24447z, str3, hashMap);
                        } else {
                            String str11 = str3;
                            if (b10.startsWith("#EXT-X-SKIP")) {
                                int m10 = m(b10, f24441t);
                                if (gVar2 != null && arrayList3.isEmpty()) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                y4.a.f(z12);
                                int i17 = (int) (j18 - ((g) q0.j(gVar)).f24363k);
                                int i18 = m10 + i17;
                                if (i17 >= 0 && i18 <= gVar2.f24370r.size()) {
                                    str3 = str11;
                                    String str12 = str9;
                                    long j28 = j24;
                                    while (i17 < i18) {
                                        g.d dVar3 = (g.d) gVar2.f24370r.get(i17);
                                        ArrayList arrayList8 = arrayList7;
                                        ArrayList arrayList9 = arrayList6;
                                        if (j18 != gVar2.f24363k) {
                                            dVar3 = dVar3.b(j28, (gVar2.f24362j - i13) + dVar3.f24385d);
                                        }
                                        arrayList3.add(dVar3);
                                        j28 += dVar3.f24384c;
                                        long j29 = dVar3.f24391j;
                                        if (j29 != -1) {
                                            i11 = i18;
                                            j21 = dVar3.f24390i + j29;
                                        } else {
                                            i11 = i18;
                                        }
                                        int i19 = dVar3.f24385d;
                                        g.d dVar4 = dVar3.f24383b;
                                        Object obj3 = dVar3.f24387f;
                                        String str13 = dVar3.f24388g;
                                        String str14 = dVar3.f24389h;
                                        if (str14 == null || !str14.equals(Long.toHexString(j25))) {
                                            str12 = dVar3.f24389h;
                                        }
                                        j25++;
                                        i17++;
                                        gVar2 = gVar;
                                        obj2 = obj3;
                                        str5 = str13;
                                        j22 = j28;
                                        i18 = i11;
                                        i14 = i19;
                                        dVar2 = dVar4;
                                        arrayList7 = arrayList8;
                                        arrayList6 = arrayList9;
                                    }
                                    hVar2 = hVar;
                                    gVar2 = gVar;
                                    j24 = j28;
                                    str6 = str12;
                                } else {
                                    throw new a();
                                }
                            } else {
                                ArrayList arrayList10 = arrayList7;
                                arrayList2 = arrayList6;
                                str3 = str11;
                                if (b10.startsWith("#EXT-X-KEY")) {
                                    String z25 = z(b10, H, hashMap);
                                    String u10 = u(b10, I, "identity", hashMap);
                                    if ("NONE".equals(z25)) {
                                        treeMap.clear();
                                        v10 = null;
                                        str5 = null;
                                    } else {
                                        v10 = v(b10, L, hashMap);
                                        if ("identity".equals(u10)) {
                                            if ("AES-128".equals(z25)) {
                                                str5 = z(b10, K, hashMap);
                                                hVar2 = hVar;
                                                gVar2 = gVar;
                                                str6 = v10;
                                            }
                                        } else {
                                            String str15 = str7;
                                            if (str15 == null) {
                                                str7 = l(z25);
                                            } else {
                                                str7 = str15;
                                            }
                                            m.b k10 = k(b10, u10, hashMap);
                                            if (k10 != null) {
                                                treeMap.put(u10, k10);
                                                str5 = null;
                                            }
                                        }
                                        str5 = null;
                                        hVar2 = hVar;
                                        gVar2 = gVar;
                                        str6 = v10;
                                    }
                                    obj2 = str5;
                                    hVar2 = hVar;
                                    gVar2 = gVar;
                                    str6 = v10;
                                } else {
                                    String str16 = str7;
                                    if (b10.startsWith("#EXT-X-BYTERANGE")) {
                                        String[] P02 = q0.P0(z(b10, D, hashMap), "@");
                                        j23 = Long.parseLong(P02[0]);
                                        if (P02.length > 1) {
                                            j21 = Long.parseLong(P02[1]);
                                        }
                                    } else if (b10.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                        i13 = Integer.parseInt(b10.substring(b10.indexOf(58) + 1));
                                        hVar2 = hVar;
                                        gVar2 = gVar;
                                        str7 = str16;
                                        str6 = str9;
                                        arrayList7 = arrayList10;
                                        arrayList6 = arrayList2;
                                        z16 = false;
                                        z19 = true;
                                    } else if (b10.equals("#EXT-X-DISCONTINUITY")) {
                                        i14++;
                                    } else {
                                        if (b10.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                            if (j17 == 0) {
                                                j17 = q0.A0(q0.H0(b10.substring(b10.indexOf(58) + 1))) - j24;
                                            } else {
                                                i10 = i12;
                                                str2 = str16;
                                            }
                                        } else if (b10.equals("#EXT-X-GAP")) {
                                            hVar2 = hVar;
                                            gVar2 = gVar;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z16 = false;
                                            z21 = true;
                                        } else if (b10.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                            hVar2 = hVar;
                                            gVar2 = gVar;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z16 = false;
                                            z17 = true;
                                        } else if (b10.equals("#EXT-X-ENDLIST")) {
                                            hVar2 = hVar;
                                            gVar2 = gVar;
                                            str7 = str16;
                                            str6 = str9;
                                            arrayList7 = arrayList10;
                                            arrayList6 = arrayList2;
                                            z16 = false;
                                            z20 = true;
                                        } else if (b10.startsWith("#EXT-X-RENDITION-REPORT")) {
                                            i10 = i12;
                                            str2 = str16;
                                            arrayList5.add(new g.c(Uri.parse(o0.d(str, z(b10, K, hashMap))), t(b10, A, -1L), s(b10, B, -1)));
                                        } else {
                                            i10 = i12;
                                            str2 = str16;
                                            if (b10.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                if (bVar3 == null && "PART".equals(z(b10, N, hashMap))) {
                                                    String z26 = z(b10, K, hashMap);
                                                    long t10 = t(b10, F, -1L);
                                                    long t11 = t(b10, G, -1L);
                                                    long j30 = j25;
                                                    String e10 = e(j30, str5, str9);
                                                    if (obj2 == null && !treeMap.isEmpty()) {
                                                        m.b[] bVarArr = (m.b[]) treeMap.values().toArray(new m.b[0]);
                                                        Object mVar2 = new m(str2, bVarArr);
                                                        if (mVar == null) {
                                                            mVar = d(str2, bVarArr);
                                                        }
                                                        obj2 = mVar2;
                                                    }
                                                    int i20 = (t10 > (-1L) ? 1 : (t10 == (-1L) ? 0 : -1));
                                                    if (i20 == 0 || t11 != -1) {
                                                        if (i20 != 0) {
                                                            j11 = t10;
                                                        } else {
                                                            j11 = 0;
                                                        }
                                                        bVar3 = new g.b(z26, dVar2, 0L, i14, j22, obj2, str5, e10, j11, t11, false, false, true);
                                                    }
                                                    hVar2 = hVar;
                                                    gVar2 = gVar;
                                                    j25 = j30;
                                                    str6 = str9;
                                                    arrayList7 = arrayList10;
                                                    i12 = i10;
                                                    arrayList6 = arrayList2;
                                                    str7 = str2;
                                                }
                                            } else {
                                                j10 = j25;
                                                if (b10.startsWith("#EXT-X-PART")) {
                                                    String e11 = e(j10, str5, str9);
                                                    String z27 = z(b10, K, hashMap);
                                                    long j31 = (long) (j(b10, f24435n) * 1000000.0d);
                                                    g.b bVar4 = bVar3;
                                                    boolean q10 = q(b10, W, false);
                                                    if (z17 && arrayList10.isEmpty()) {
                                                        z13 = true;
                                                    } else {
                                                        z13 = false;
                                                    }
                                                    boolean z28 = q10 | z13;
                                                    boolean q11 = q(b10, X, false);
                                                    String v13 = v(b10, E, hashMap);
                                                    if (v13 != null) {
                                                        String[] P03 = q0.P0(v13, "@");
                                                        j13 = Long.parseLong(P03[0]);
                                                        if (P03.length > 1) {
                                                            j27 = Long.parseLong(P03[1]);
                                                        }
                                                        j12 = -1;
                                                    } else {
                                                        j12 = -1;
                                                        j13 = -1;
                                                    }
                                                    int i21 = (j13 > j12 ? 1 : (j13 == j12 ? 0 : -1));
                                                    if (i21 == 0) {
                                                        j27 = 0;
                                                    }
                                                    if (obj2 == null && !treeMap.isEmpty()) {
                                                        m.b[] bVarArr2 = (m.b[]) treeMap.values().toArray(new m.b[0]);
                                                        Object mVar3 = new m(str2, bVarArr2);
                                                        if (mVar == null) {
                                                            mVar = d(str2, bVarArr2);
                                                        }
                                                        obj2 = mVar3;
                                                    }
                                                    arrayList10.add(new g.b(z27, dVar2, j31, i14, j22, obj2, str5, e11, j27, j13, q11, z28, false));
                                                    j22 += j31;
                                                    if (i21 != 0) {
                                                        j27 += j13;
                                                    }
                                                    hVar2 = hVar;
                                                    gVar2 = gVar;
                                                    str6 = str9;
                                                    i12 = i10;
                                                    bVar3 = bVar4;
                                                    j25 = j10;
                                                    str7 = str2;
                                                    arrayList7 = arrayList10;
                                                    arrayList6 = arrayList2;
                                                } else {
                                                    bVar2 = bVar3;
                                                    arrayList = arrayList10;
                                                    if (!b10.startsWith("#")) {
                                                        String e12 = e(j10, str5, str9);
                                                        long j32 = j10 + 1;
                                                        String B2 = B(b10, hashMap);
                                                        g.d dVar5 = (g.d) hashMap2.get(B2);
                                                        int i22 = (j23 > (-1L) ? 1 : (j23 == (-1L) ? 0 : -1));
                                                        if (i22 == 0) {
                                                            j14 = 0;
                                                        } else {
                                                            if (z22 && dVar2 == null && dVar5 == null) {
                                                                dVar5 = new g.d(B2, 0L, j21, null, null);
                                                                hashMap2.put(B2, dVar5);
                                                            }
                                                            j14 = j21;
                                                        }
                                                        if (obj2 == null && !treeMap.isEmpty()) {
                                                            j15 = j32;
                                                            z14 = false;
                                                            m.b[] bVarArr3 = (m.b[]) treeMap.values().toArray(new m.b[0]);
                                                            Object mVar4 = new m(str2, bVarArr3);
                                                            obj = mVar4;
                                                            if (mVar == null) {
                                                                mVar = d(str2, bVarArr3);
                                                                obj = mVar4;
                                                            }
                                                        } else {
                                                            j15 = j32;
                                                            z14 = false;
                                                            obj = obj2;
                                                        }
                                                        if (dVar2 != null) {
                                                            dVar = dVar2;
                                                        } else {
                                                            dVar = dVar5;
                                                        }
                                                        arrayList3.add(new g.d(B2, dVar, str4, j26, i14, j24, obj, str5, e12, j14, j23, z21, arrayList));
                                                        j22 = j24 + j26;
                                                        arrayList7 = new ArrayList();
                                                        if (i22 != 0) {
                                                            j14 += j23;
                                                        }
                                                        j21 = j14;
                                                        hVar2 = hVar;
                                                        z21 = z14;
                                                        str6 = str9;
                                                        obj2 = obj;
                                                        str4 = str3;
                                                        j24 = j22;
                                                        i12 = i10;
                                                        bVar3 = bVar2;
                                                        arrayList6 = arrayList2;
                                                        j23 = -1;
                                                        j26 = 0;
                                                        str7 = str2;
                                                        j25 = j15;
                                                        gVar2 = gVar;
                                                        z16 = z21;
                                                    } else {
                                                        z11 = false;
                                                        hVar2 = hVar;
                                                        str6 = str9;
                                                        i12 = i10;
                                                        bVar3 = bVar2;
                                                        j25 = j10;
                                                        str7 = str2;
                                                        arrayList7 = arrayList;
                                                        arrayList6 = arrayList2;
                                                        z16 = z11;
                                                        gVar2 = gVar;
                                                    }
                                                }
                                            }
                                        }
                                        arrayList = arrayList10;
                                        j10 = j25;
                                        z11 = false;
                                    }
                                    hVar2 = hVar;
                                    gVar2 = gVar;
                                    str7 = str16;
                                    str6 = str9;
                                }
                                arrayList7 = arrayList10;
                                arrayList6 = arrayList2;
                            }
                        }
                        bVar2 = bVar3;
                        hVar2 = hVar;
                        str6 = str9;
                        i12 = i10;
                        bVar3 = bVar2;
                        j25 = j10;
                        str7 = str2;
                        arrayList7 = arrayList;
                        arrayList6 = arrayList2;
                        z16 = z11;
                        gVar2 = gVar;
                    }
                    z16 = false;
                }
                str6 = str9;
                z16 = false;
            }
        }
        int i23 = i12;
        g.b bVar5 = bVar3;
        ArrayList arrayList11 = arrayList7;
        ArrayList arrayList12 = arrayList6;
        HashMap hashMap3 = new HashMap();
        for (int i24 = z16 ? 1 : 0; i24 < arrayList5.size(); i24++) {
            g.c cVar = (g.c) arrayList5.get(i24);
            long j33 = cVar.f24378b;
            if (j33 == -1) {
                j33 = (j18 + arrayList3.size()) - (arrayList11.isEmpty() ? 1L : 0L);
            }
            int i25 = cVar.f24379c;
            if (i25 == -1 && j20 != -9223372036854775807L) {
                if (arrayList11.isEmpty()) {
                    list = ((g.d) t.c(arrayList3)).f24381m;
                } else {
                    list = arrayList11;
                }
                i25 = list.size() - 1;
            }
            Uri uri = cVar.f24377a;
            hashMap3.put(uri, new g.c(uri, j33, i25));
        }
        if (bVar5 != null) {
            arrayList11.add(bVar5);
        }
        if (j17 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new g(i23, str, arrayList12, j16, z18, j17, z19, i13, j18, i15, j19, j20, z17, z20, z10, mVar, arrayList3, arrayList11, fVar2, hashMap3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    private static h p(b bVar, String str) {
        ArrayList arrayList;
        Uri e10;
        char c10;
        x1 x1Var;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2;
        ArrayList arrayList4;
        int parseInt;
        String str3;
        String str4;
        boolean z10;
        boolean z11;
        int i10;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        int i11;
        int i12;
        float f10;
        ArrayList arrayList10;
        ArrayList arrayList11;
        Uri e11;
        HashMap hashMap;
        int i13;
        String str5 = str;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        ArrayList arrayList19 = new ArrayList();
        boolean z12 = false;
        boolean z13 = false;
        while (true) {
            String str6 = "application/x-mpegURL";
            if (bVar.a()) {
                String b10 = bVar.b();
                if (b10.startsWith("#EXT")) {
                    arrayList19.add(b10);
                }
                boolean startsWith = b10.startsWith("#EXT-X-I-FRAME-STREAM-INF");
                boolean z14 = z12;
                if (b10.startsWith("#EXT-X-DEFINE")) {
                    hashMap3.put(z(b10, P, hashMap3), z(b10, Z, hashMap3));
                } else {
                    if (b10.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                        hashMap = hashMap2;
                        arrayList11 = arrayList17;
                        arrayList10 = arrayList13;
                        arrayList9 = arrayList14;
                        arrayList8 = arrayList15;
                        arrayList6 = arrayList16;
                        arrayList7 = arrayList19;
                        arrayList5 = arrayList18;
                        z12 = true;
                    } else if (b10.startsWith("#EXT-X-MEDIA")) {
                        arrayList17.add(b10);
                    } else if (b10.startsWith("#EXT-X-SESSION-KEY")) {
                        m.b k10 = k(b10, u(b10, I, "identity", hashMap3), hashMap3);
                        if (k10 != null) {
                            arrayList18.add(new m(l(z(b10, H, hashMap3)), k10));
                        }
                    } else if (b10.startsWith("#EXT-X-STREAM-INF") || startsWith) {
                        boolean contains = z13 | b10.contains("CLOSED-CAPTIONS=NONE");
                        if (startsWith) {
                            i10 = 16384;
                            z11 = contains;
                        } else {
                            z11 = contains;
                            i10 = 0;
                        }
                        int m10 = m(b10, f24429h);
                        arrayList5 = arrayList18;
                        arrayList6 = arrayList16;
                        int s10 = s(b10, f24424c, -1);
                        String v10 = v(b10, f24431j, hashMap3);
                        arrayList7 = arrayList19;
                        String v11 = v(b10, f24432k, hashMap3);
                        if (v11 != null) {
                            arrayList8 = arrayList15;
                            String[] P0 = q0.P0(v11, "x");
                            int parseInt2 = Integer.parseInt(P0[0]);
                            int parseInt3 = Integer.parseInt(P0[1]);
                            if (parseInt2 > 0 && parseInt3 > 0) {
                                i13 = parseInt2;
                            } else {
                                parseInt3 = -1;
                                i13 = -1;
                            }
                            arrayList9 = arrayList14;
                            i12 = parseInt3;
                            i11 = i13;
                        } else {
                            arrayList8 = arrayList15;
                            arrayList9 = arrayList14;
                            i11 = -1;
                            i12 = -1;
                        }
                        String v12 = v(b10, f24433l, hashMap3);
                        if (v12 != null) {
                            f10 = Float.parseFloat(v12);
                        } else {
                            f10 = -1.0f;
                        }
                        arrayList10 = arrayList13;
                        String v13 = v(b10, f24425d, hashMap3);
                        arrayList11 = arrayList17;
                        String v14 = v(b10, f24426e, hashMap3);
                        HashMap hashMap4 = hashMap2;
                        String v15 = v(b10, f24427f, hashMap3);
                        String v16 = v(b10, f24428g, hashMap3);
                        if (startsWith) {
                            e11 = o0.e(str5, z(b10, K, hashMap3));
                        } else if (bVar.a()) {
                            e11 = o0.e(str5, B(bVar.b(), hashMap3));
                        } else {
                            throw e3.c("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        arrayList12.add(new h.b(e11, new x1.b().T(arrayList12.size()).M("application/x-mpegURL").K(v10).I(s10).b0(m10).n0(i11).S(i12).R(f10).e0(i10).G(), v13, v14, v15, v16));
                        hashMap = hashMap4;
                        ArrayList arrayList20 = (ArrayList) hashMap.get(e11);
                        if (arrayList20 == null) {
                            arrayList20 = new ArrayList();
                            hashMap.put(e11, arrayList20);
                        }
                        arrayList20.add(new q.b(s10, m10, v13, v14, v15, v16));
                        z12 = z14;
                        z13 = z11;
                    }
                    hashMap2 = hashMap;
                    arrayList18 = arrayList5;
                    arrayList16 = arrayList6;
                    arrayList19 = arrayList7;
                    arrayList15 = arrayList8;
                    arrayList14 = arrayList9;
                    arrayList13 = arrayList10;
                    arrayList17 = arrayList11;
                    str5 = str;
                }
                hashMap = hashMap2;
                arrayList11 = arrayList17;
                arrayList10 = arrayList13;
                arrayList9 = arrayList14;
                arrayList8 = arrayList15;
                arrayList6 = arrayList16;
                arrayList7 = arrayList19;
                arrayList5 = arrayList18;
                z12 = z14;
                hashMap2 = hashMap;
                arrayList18 = arrayList5;
                arrayList16 = arrayList6;
                arrayList19 = arrayList7;
                arrayList15 = arrayList8;
                arrayList14 = arrayList9;
                arrayList13 = arrayList10;
                arrayList17 = arrayList11;
                str5 = str;
            } else {
                HashMap hashMap5 = hashMap2;
                ArrayList arrayList21 = arrayList17;
                ArrayList arrayList22 = arrayList13;
                ArrayList arrayList23 = arrayList14;
                ArrayList arrayList24 = arrayList15;
                ArrayList arrayList25 = arrayList16;
                ArrayList arrayList26 = arrayList19;
                boolean z15 = z12;
                ArrayList arrayList27 = arrayList18;
                ArrayList arrayList28 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i14 = 0; i14 < arrayList12.size(); i14++) {
                    h.b bVar2 = (h.b) arrayList12.get(i14);
                    if (hashSet.add(bVar2.f24413a)) {
                        if (bVar2.f24414b.f4512j == null) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        y4.a.f(z10);
                        arrayList28.add(bVar2.a(bVar2.f24414b.b().Z(new t3.a(new q(null, null, (List) y4.a.e((ArrayList) hashMap5.get(bVar2.f24413a))))).G()));
                    }
                }
                Uri uri = null;
                ArrayList arrayList29 = null;
                x1 x1Var2 = null;
                int i15 = 0;
                while (i15 < arrayList21.size()) {
                    ArrayList arrayList30 = arrayList21;
                    String str7 = (String) arrayList30.get(i15);
                    String z16 = z(str7, Q, hashMap3);
                    String z17 = z(str7, P, hashMap3);
                    x1.b X2 = new x1.b().U(z16 + ":" + z17).W(z17).M(str6).i0(x(str7)).e0(w(str7, hashMap3)).X(v(str7, O, hashMap3));
                    String v17 = v(str7, K, hashMap3);
                    if (v17 == null) {
                        e10 = uri;
                    } else {
                        e10 = o0.e(str, v17);
                    }
                    arrayList21 = arrayList30;
                    String str8 = str6;
                    t3.a aVar = new t3.a(new q(z16, z17, Collections.emptyList()));
                    String z18 = z(str7, M, hashMap3);
                    z18.hashCode();
                    switch (z18.hashCode()) {
                        case -959297733:
                            if (z18.equals("SUBTITLES")) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -333210994:
                            if (z18.equals("CLOSED-CAPTIONS")) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 62628790:
                            if (z18.equals("AUDIO")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 81665115:
                            if (z18.equals("VIDEO")) {
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
                            x1Var = x1Var2;
                            arrayList2 = arrayList23;
                            arrayList3 = arrayList22;
                            h.b g10 = g(arrayList12, z16);
                            if (g10 != null) {
                                String L2 = q0.L(g10.f24414b.f4511i, 3);
                                X2.K(L2);
                                str2 = v.g(L2);
                            } else {
                                str2 = null;
                            }
                            if (str2 == null) {
                                str2 = "text/vtt";
                            }
                            X2.g0(str2).Z(aVar);
                            if (e10 != null) {
                                h.a aVar2 = new h.a(e10, X2.G(), z16, z17);
                                arrayList4 = arrayList24;
                                arrayList4.add(aVar2);
                                break;
                            } else {
                                arrayList4 = arrayList24;
                                r.i("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                                break;
                            }
                        case 1:
                            x1Var = x1Var2;
                            arrayList2 = arrayList23;
                            arrayList3 = arrayList22;
                            String z19 = z(str7, S, hashMap3);
                            if (z19.startsWith("CC")) {
                                parseInt = Integer.parseInt(z19.substring(2));
                                str3 = "application/cea-608";
                            } else {
                                parseInt = Integer.parseInt(z19.substring(7));
                                str3 = "application/cea-708";
                            }
                            if (arrayList29 == null) {
                                arrayList29 = new ArrayList();
                            }
                            X2.g0(str3).H(parseInt);
                            arrayList29.add(X2.G());
                            arrayList4 = arrayList24;
                            break;
                        case 2:
                            arrayList3 = arrayList22;
                            h.b f11 = f(arrayList12, z16);
                            if (f11 != null) {
                                x1Var = x1Var2;
                                String L3 = q0.L(f11.f24414b.f4511i, 1);
                                X2.K(L3);
                                str4 = v.g(L3);
                            } else {
                                x1Var = x1Var2;
                                str4 = null;
                            }
                            String v18 = v(str7, f24430i, hashMap3);
                            if (v18 != null) {
                                X2.J(Integer.parseInt(q0.Q0(v18, "/")[0]));
                                if ("audio/eac3".equals(str4) && v18.endsWith("/JOC")) {
                                    X2.K("ec+3");
                                    str4 = "audio/eac3-joc";
                                }
                            }
                            X2.g0(str4);
                            if (e10 != null) {
                                X2.Z(aVar);
                                arrayList2 = arrayList23;
                                arrayList2.add(new h.a(e10, X2.G(), z16, z17));
                            } else {
                                arrayList2 = arrayList23;
                                if (f11 != null) {
                                    x1Var = X2.G();
                                }
                            }
                            arrayList4 = arrayList24;
                            break;
                        case 3:
                            h.b h10 = h(arrayList12, z16);
                            if (h10 != null) {
                                x1 x1Var3 = h10.f24414b;
                                String L4 = q0.L(x1Var3.f4511i, 2);
                                X2.K(L4).g0(v.g(L4)).n0(x1Var3.f4519q).S(x1Var3.f4520r).R(x1Var3.f4521s);
                            }
                            if (e10 != null) {
                                X2.Z(aVar);
                                arrayList3 = arrayList22;
                                arrayList3.add(new h.a(e10, X2.G(), z16, z17));
                                x1Var = x1Var2;
                                arrayList4 = arrayList24;
                                arrayList2 = arrayList23;
                                break;
                            }
                        default:
                            x1Var = x1Var2;
                            arrayList4 = arrayList24;
                            arrayList2 = arrayList23;
                            arrayList3 = arrayList22;
                            break;
                    }
                    i15++;
                    arrayList24 = arrayList4;
                    arrayList23 = arrayList2;
                    arrayList22 = arrayList3;
                    str6 = str8;
                    x1Var2 = x1Var;
                    uri = null;
                }
                x1 x1Var4 = x1Var2;
                ArrayList arrayList31 = arrayList24;
                ArrayList arrayList32 = arrayList23;
                ArrayList arrayList33 = arrayList22;
                if (z13) {
                    arrayList = Collections.emptyList();
                } else {
                    arrayList = arrayList29;
                }
                return new h(str, arrayList26, arrayList28, arrayList33, arrayList32, arrayList31, arrayList25, x1Var4, arrayList, z15, hashMap3, arrayList27);
            }
        }
    }

    private static boolean q(String str, Pattern pattern, boolean z10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return "YES".equals(matcher.group(1));
        }
        return z10;
    }

    private static double r(String str, Pattern pattern, double d10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Double.parseDouble((String) y4.a.e(matcher.group(1)));
        }
        return d10;
    }

    private static int s(String str, Pattern pattern, int i10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Integer.parseInt((String) y4.a.e(matcher.group(1)));
        }
        return i10;
    }

    private static long t(String str, Pattern pattern, long j10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Long.parseLong((String) y4.a.e(matcher.group(1)));
        }
        return j10;
    }

    private static String u(String str, Pattern pattern, String str2, Map map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) y4.a.e(matcher.group(1));
        }
        if (!map.isEmpty() && str2 != null) {
            return B(str2, map);
        }
        return str2;
    }

    private static String v(String str, Pattern pattern, Map map) {
        return u(str, pattern, null, map);
    }

    private static int w(String str, Map map) {
        String v10 = v(str, R, map);
        int i10 = 0;
        if (TextUtils.isEmpty(v10)) {
            return 0;
        }
        String[] P0 = q0.P0(v10, StringUtils.COMMA);
        if (q0.s(P0, "public.accessibility.describes-video")) {
            i10 = 512;
        }
        if (q0.s(P0, "public.accessibility.transcribes-spoken-dialog")) {
            i10 |= Base64Utils.IO_BUFFER_SIZE;
        }
        if (q0.s(P0, "public.accessibility.describes-music-and-sound")) {
            i10 |= 1024;
        }
        if (q0.s(P0, "public.easy-to-read")) {
            return i10 | 8192;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int x(String str) {
        boolean q10 = q(str, U, false);
        ?? r02 = q10;
        if (q(str, V, false)) {
            r02 = (q10 ? 1 : 0) | true;
        }
        if (q(str, T, false)) {
            return r02 | 4;
        }
        return r02;
    }

    private static g.f y(String str) {
        long j10;
        long j11;
        double r10 = r(str, f24439r, -9.223372036854776E18d);
        long j12 = -9223372036854775807L;
        if (r10 == -9.223372036854776E18d) {
            j10 = -9223372036854775807L;
        } else {
            j10 = (long) (r10 * 1000000.0d);
        }
        boolean q10 = q(str, f24440s, false);
        double r11 = r(str, f24442u, -9.223372036854776E18d);
        if (r11 == -9.223372036854776E18d) {
            j11 = -9223372036854775807L;
        } else {
            j11 = (long) (r11 * 1000000.0d);
        }
        double r12 = r(str, f24443v, -9.223372036854776E18d);
        if (r12 != -9.223372036854776E18d) {
            j12 = (long) (r12 * 1000000.0d);
        }
        return new g.f(j10, q10, j11, j12, q(str, f24444w, false));
    }

    private static String z(String str, Pattern pattern, Map map) {
        String v10 = v(str, pattern, map);
        if (v10 != null) {
            return v10;
        }
        throw e3.c("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    @Override // x4.g0.a
    /* renamed from: i */
    public i a(Uri uri, InputStream inputStream) {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (b(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (trim.startsWith("#EXT-X-STREAM-INF")) {
                                arrayDeque.add(trim);
                                return p(new b(arrayDeque, bufferedReader), uri.toString());
                            } else if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                                break;
                            } else {
                                arrayDeque.add(trim);
                            }
                        }
                    } else {
                        q0.n(bufferedReader);
                        throw e3.c("Failed to parse the playlist, could not identify any tags.", null);
                    }
                }
                arrayDeque.add(trim);
                return o(this.f24448a, this.f24449b, new b(arrayDeque, bufferedReader), uri.toString());
            }
            throw e3.c("Input does not start with the #EXTM3U header.", null);
        } finally {
            q0.n(bufferedReader);
        }
    }

    public j(h hVar, g gVar) {
        this.f24448a = hVar;
        this.f24449b = gVar;
    }
}
