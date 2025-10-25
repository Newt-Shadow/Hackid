package l3;

import b3.e3;
import java.io.StringReader;
import l3.b;
import o6.q;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import y4.r;
import y4.r0;
/* loaded from: classes.dex */
abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f25194a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f25195b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f25196c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static b a(String str) {
        try {
            return b(str);
        } catch (e3 | NumberFormatException | XmlPullParserException unused) {
            r.i("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    private static b b(String str) {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (r0.f(newPullParser, "x:xmpmeta")) {
            q D = q.D();
            long j10 = -9223372036854775807L;
            do {
                newPullParser.next();
                if (r0.f(newPullParser, "rdf:Description")) {
                    if (!d(newPullParser)) {
                        return null;
                    }
                    j10 = e(newPullParser);
                    D = c(newPullParser);
                } else if (r0.f(newPullParser, "Container:Directory")) {
                    D = f(newPullParser, "Container", "Item");
                } else if (r0.f(newPullParser, "GContainer:Directory")) {
                    D = f(newPullParser, "GContainer", "GContainerItem");
                }
            } while (!r0.d(newPullParser, "x:xmpmeta"));
            if (D.isEmpty()) {
                return null;
            }
            return new b(j10, D);
        }
        throw e3.a("Couldn't find xmp metadata", null);
    }

    private static q c(XmlPullParser xmlPullParser) {
        for (String str : f25196c) {
            String a10 = r0.a(xmlPullParser, str);
            if (a10 != null) {
                return q.G(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a("video/mp4", "MotionPhoto", Long.parseLong(a10), 0L));
            }
        }
        return q.D();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : f25194a) {
            String a10 = r0.a(xmlPullParser, str);
            if (a10 != null) {
                if (Integer.parseInt(a10) != 1) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : f25195b) {
            String a10 = r0.a(xmlPullParser, str);
            if (a10 != null) {
                long parseLong = Long.parseLong(a10);
                if (parseLong == -1) {
                    return -9223372036854775807L;
                }
                return parseLong;
            }
        }
        return -9223372036854775807L;
    }

    private static q f(XmlPullParser xmlPullParser, String str, String str2) {
        long j10;
        long j11;
        q.a r10 = q.r();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (r0.f(xmlPullParser, str3)) {
                String a10 = r0.a(xmlPullParser, str2 + ":Mime");
                String a11 = r0.a(xmlPullParser, str2 + ":Semantic");
                String a12 = r0.a(xmlPullParser, str2 + ":Length");
                String a13 = r0.a(xmlPullParser, str2 + ":Padding");
                if (a10 != null && a11 != null) {
                    if (a12 != null) {
                        j10 = Long.parseLong(a12);
                    } else {
                        j10 = 0;
                    }
                    if (a13 != null) {
                        j11 = Long.parseLong(a13);
                    } else {
                        j11 = 0;
                    }
                    r10.a(new b.a(a10, a11, j10, j11));
                } else {
                    return q.D();
                }
            }
        } while (!r0.d(xmlPullParser, str4));
        return r10.k();
    }
}
