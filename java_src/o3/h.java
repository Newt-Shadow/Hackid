package o3;

import b3.x1;
import g3.v;
import kotlin.KotlinVersion;
import t3.a;
import y4.e0;
/* loaded from: classes.dex */
abstract class h {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f27234a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    private static y3.e a(int i10, e0 e0Var) {
        int p10 = e0Var.p();
        if (e0Var.p() == 1684108385) {
            e0Var.U(8);
            String B = e0Var.B(p10 - 16);
            return new y3.e("und", B, B);
        }
        y4.r.i("MetadataUtil", "Failed to parse comment attribute: " + a.a(i10));
        return null;
    }

    private static y3.a b(e0 e0Var) {
        String str;
        int p10 = e0Var.p();
        if (e0Var.p() == 1684108385) {
            int b10 = a.b(e0Var.p());
            if (b10 == 13) {
                str = "image/jpeg";
            } else if (b10 == 14) {
                str = "image/png";
            } else {
                str = null;
            }
            if (str == null) {
                y4.r.i("MetadataUtil", "Unrecognized cover art flags: " + b10);
                return null;
            }
            e0Var.U(4);
            int i10 = p10 - 16;
            byte[] bArr = new byte[i10];
            e0Var.l(bArr, 0, i10);
            return new y3.a(str, null, 3, bArr);
        }
        y4.r.i("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    public static a.b c(e0 e0Var) {
        int f10 = e0Var.f() + e0Var.p();
        int p10 = e0Var.p();
        int i10 = (p10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE;
        try {
            if (i10 != 169 && i10 != 253) {
                if (p10 == 1735291493) {
                    return g(e0Var);
                }
                if (p10 == 1684632427) {
                    return d(p10, "TPOS", e0Var);
                }
                if (p10 == 1953655662) {
                    return d(p10, "TRCK", e0Var);
                }
                if (p10 == 1953329263) {
                    return i(p10, "TBPM", e0Var, true, false);
                }
                if (p10 == 1668311404) {
                    return i(p10, "TCMP", e0Var, true, true);
                }
                if (p10 == 1668249202) {
                    return b(e0Var);
                }
                if (p10 == 1631670868) {
                    return h(p10, "TPE2", e0Var);
                }
                if (p10 == 1936682605) {
                    return h(p10, "TSOT", e0Var);
                }
                if (p10 == 1936679276) {
                    return h(p10, "TSO2", e0Var);
                }
                if (p10 == 1936679282) {
                    return h(p10, "TSOA", e0Var);
                }
                if (p10 == 1936679265) {
                    return h(p10, "TSOP", e0Var);
                }
                if (p10 == 1936679791) {
                    return h(p10, "TSOC", e0Var);
                }
                if (p10 == 1920233063) {
                    return i(p10, "ITUNESADVISORY", e0Var, false, false);
                }
                if (p10 == 1885823344) {
                    return i(p10, "ITUNESGAPLESS", e0Var, false, true);
                }
                if (p10 == 1936683886) {
                    return h(p10, "TVSHOWSORT", e0Var);
                }
                if (p10 == 1953919848) {
                    return h(p10, "TVSHOW", e0Var);
                }
                if (p10 == 757935405) {
                    return e(e0Var, f10);
                }
            } else {
                int i11 = 16777215 & p10;
                if (i11 == 6516084) {
                    return a(p10, e0Var);
                }
                if (i11 != 7233901 && i11 != 7631467) {
                    if (i11 != 6516589 && i11 != 7828084) {
                        if (i11 == 6578553) {
                            return h(p10, "TDRC", e0Var);
                        }
                        if (i11 == 4280916) {
                            return h(p10, "TPE1", e0Var);
                        }
                        if (i11 == 7630703) {
                            return h(p10, "TSSE", e0Var);
                        }
                        if (i11 == 6384738) {
                            return h(p10, "TALB", e0Var);
                        }
                        if (i11 == 7108978) {
                            return h(p10, "USLT", e0Var);
                        }
                        if (i11 == 6776174) {
                            return h(p10, "TCON", e0Var);
                        }
                        if (i11 == 6779504) {
                            return h(p10, "TIT1", e0Var);
                        }
                    } else {
                        return h(p10, "TCOM", e0Var);
                    }
                } else {
                    return h(p10, "TIT2", e0Var);
                }
            }
            y4.r.b("MetadataUtil", "Skipped unknown metadata entry: " + a.a(p10));
            e0Var.T(f10);
            return null;
        } finally {
            e0Var.T(f10);
        }
    }

    private static y3.m d(int i10, String str, e0 e0Var) {
        int p10 = e0Var.p();
        if (e0Var.p() == 1684108385 && p10 >= 22) {
            e0Var.U(10);
            int M = e0Var.M();
            if (M > 0) {
                String str2 = "" + M;
                int M2 = e0Var.M();
                if (M2 > 0) {
                    str2 = str2 + "/" + M2;
                }
                return new y3.m(str, null, o6.q.F(str2));
            }
        }
        y4.r.i("MetadataUtil", "Failed to parse index/count attribute: " + a.a(i10));
        return null;
    }

    private static y3.i e(e0 e0Var, int i10) {
        String str = null;
        String str2 = null;
        int i11 = -1;
        int i12 = -1;
        while (e0Var.f() < i10) {
            int f10 = e0Var.f();
            int p10 = e0Var.p();
            int p11 = e0Var.p();
            e0Var.U(4);
            if (p11 == 1835360622) {
                str = e0Var.B(p10 - 12);
            } else if (p11 == 1851878757) {
                str2 = e0Var.B(p10 - 12);
            } else {
                if (p11 == 1684108385) {
                    i11 = f10;
                    i12 = p10;
                }
                e0Var.U(p10 - 12);
            }
        }
        if (str == null || str2 == null || i11 == -1) {
            return null;
        }
        e0Var.T(i11);
        e0Var.U(16);
        return new y3.j(str, str2, e0Var.B(i12 - 16));
    }

    public static z3.a f(e0 e0Var, int i10, String str) {
        while (true) {
            int f10 = e0Var.f();
            if (f10 < i10) {
                int p10 = e0Var.p();
                if (e0Var.p() == 1684108385) {
                    int p11 = e0Var.p();
                    int p12 = e0Var.p();
                    int i11 = p10 - 16;
                    byte[] bArr = new byte[i11];
                    e0Var.l(bArr, 0, i11);
                    return new z3.a(str, bArr, p12, p11);
                }
                e0Var.T(f10 + p10);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static y3.m g(y4.e0 r3) {
        /*
            int r3 = j(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = o3.h.f27234a
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L20
            y3.m r1 = new y3.m
            java.lang.String r2 = "TCON"
            o6.q r3 = o6.q.F(r3)
            r1.<init>(r2, r0, r3)
            return r1
        L20:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            y4.r.i(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.h.g(y4.e0):y3.m");
    }

    private static y3.m h(int i10, String str, e0 e0Var) {
        int p10 = e0Var.p();
        if (e0Var.p() == 1684108385) {
            e0Var.U(8);
            return new y3.m(str, null, o6.q.F(e0Var.B(p10 - 16)));
        }
        y4.r.i("MetadataUtil", "Failed to parse text attribute: " + a.a(i10));
        return null;
    }

    private static y3.i i(int i10, String str, e0 e0Var, boolean z10, boolean z11) {
        int j10 = j(e0Var);
        if (z11) {
            j10 = Math.min(1, j10);
        }
        if (j10 >= 0) {
            if (z10) {
                return new y3.m(str, null, o6.q.F(Integer.toString(j10)));
            }
            return new y3.e("und", str, Integer.toString(j10));
        }
        y4.r.i("MetadataUtil", "Failed to parse uint8 attribute: " + a.a(i10));
        return null;
    }

    private static int j(e0 e0Var) {
        e0Var.U(4);
        if (e0Var.p() == 1684108385) {
            e0Var.U(8);
            return e0Var.G();
        }
        y4.r.i("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i10, v vVar, x1.b bVar) {
        if (i10 == 1 && vVar.a()) {
            bVar.P(vVar.f16244a).Q(vVar.f16245b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r6 != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void l(int r5, t3.a r6, t3.a r7, b3.x1.b r8, t3.a... r9) {
        /*
            t3.a r0 = new t3.a
            r1 = 0
            t3.a$b[] r2 = new t3.a.b[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = r1
        L14:
            int r6 = r7.e()
            if (r5 >= r6) goto L3c
            t3.a$b r6 = r7.d(r5)
            boolean r3 = r6 instanceof z3.a
            if (r3 == 0) goto L39
            z3.a r6 = (z3.a) r6
            java.lang.String r3 = r6.f33376a
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            t3.a r5 = new t3.a
            t3.a$b[] r7 = new t3.a.b[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            t3.a r6 = r6.b(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.e()
            if (r5 <= 0) goto L52
            r8.Z(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.h.l(int, t3.a, t3.a, b3.x1$b, t3.a[]):void");
    }
}
