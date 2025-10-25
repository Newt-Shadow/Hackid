package org.apache.tika.detect;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.CharArrayWriter;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.KotlinVersion;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
/* loaded from: classes2.dex */
public class MagicDetector implements Detector {
    private final boolean isRegex;
    private final boolean isStringIgnoreCase;
    private final int length;
    private final byte[] mask;
    private final int offsetRangeBegin;
    private final int offsetRangeEnd;
    private final byte[] pattern;
    private final int patternLength;
    private final MediaType type;

    public MagicDetector(MediaType mediaType, byte[] bArr) {
        this(mediaType, bArr, 0);
    }

    private static byte[] decodeString(String str, String str2) {
        int i10 = 0;
        if (str.startsWith("0x")) {
            int length = (str.length() - 2) / 2;
            byte[] bArr = new byte[length];
            while (i10 < length) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) Integer.parseInt(str.substring(i11 + 2, i11 + 4), 16);
                i10++;
            }
            return bArr;
        }
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        int i12 = 0;
        while (i12 < str.length()) {
            if (str.charAt(i12) == '\\') {
                int i13 = i12 + 1;
                if (str.charAt(i13) == '\\') {
                    charArrayWriter.write(92);
                } else if (str.charAt(i13) == 'x') {
                    charArrayWriter.write(Integer.parseInt(str.substring(i12 + 2, i12 + 4), 16));
                    i12 += 3;
                } else if (str.charAt(i13) == 'r') {
                    charArrayWriter.write(13);
                } else if (str.charAt(i13) == 'n') {
                    charArrayWriter.write(10);
                } else {
                    int i14 = i13;
                    while (i14 < i12 + 4 && i14 < str.length() && Character.isDigit(str.charAt(i14))) {
                        i14++;
                    }
                    charArrayWriter.write(Short.decode(CommonUrlParts.Values.FALSE_INTEGER + str.substring(i13, i14)).byteValue());
                    i12 = i14 + (-1);
                }
                i12 = i13;
            } else {
                charArrayWriter.write(str.charAt(i12));
            }
            i12++;
        }
        char[] charArray = charArrayWriter.toCharArray();
        if ("unicodeLE".equals(str2)) {
            byte[] bArr2 = new byte[charArray.length * 2];
            while (i10 < charArray.length) {
                int i15 = i10 * 2;
                char c10 = charArray[i10];
                bArr2[i15] = (byte) (c10 & 255);
                bArr2[i15 + 1] = (byte) (c10 >> '\b');
                i10++;
            }
            return bArr2;
        } else if ("unicodeBE".equals(str2)) {
            byte[] bArr3 = new byte[charArray.length * 2];
            while (i10 < charArray.length) {
                int i16 = i10 * 2;
                char c11 = charArray[i10];
                bArr3[i16] = (byte) (c11 >> '\b');
                bArr3[i16 + 1] = (byte) (c11 & 255);
                i10++;
            }
            return bArr3;
        } else {
            int length2 = charArray.length;
            byte[] bArr4 = new byte[length2];
            while (i10 < length2) {
                bArr4[i10] = (byte) charArray[i10];
                i10++;
            }
            return bArr4;
        }
    }

    private static byte[] decodeValue(String str, String str2) {
        String str3;
        int i10;
        if (str == null || str2 == null) {
            return null;
        }
        if (str.startsWith("0x")) {
            str3 = str.substring(2);
            i10 = 16;
        } else {
            str3 = str;
            i10 = 8;
        }
        char c10 = 65535;
        switch (str2.hashCode()) {
            case -1211485747:
                if (str2.equals("host16")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1211485689:
                if (str2.equals("host32")) {
                    c10 = 1;
                    break;
                }
                break;
            case -944685088:
                if (str2.equals("unicodeBE")) {
                    c10 = 2;
                    break;
                }
                break;
            case -944684778:
                if (str2.equals("unicodeLE")) {
                    c10 = 3;
                    break;
                }
                break;
            case -891985903:
                if (str2.equals("string")) {
                    c10 = 4;
                    break;
                }
                break;
            case -548372781:
                if (str2.equals("stringignorecase")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3039496:
                if (str2.equals("byte")) {
                    c10 = 6;
                    break;
                }
                break;
            case 93733669:
                if (str2.equals("big16")) {
                    c10 = 7;
                    break;
                }
                break;
            case 93733727:
                if (str2.equals("big32")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 108392519:
                if (str2.equals("regex")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1374987163:
                if (str2.equals("little16")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1374987221:
                if (str2.equals("little32")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case '\n':
                int parseInt = Integer.parseInt(str3, i10);
                return new byte[]{(byte) (parseInt & KotlinVersion.MAX_COMPONENT_VALUE), (byte) (parseInt >> 8)};
            case 1:
            case 11:
                long parseLong = Long.parseLong(str3, i10);
                return new byte[]{(byte) (parseLong & 255), (byte) ((parseLong & 65280) >> 8), (byte) ((parseLong & 16711680) >> 16), (byte) ((parseLong & (-16777216)) >> 24)};
            case 2:
            case 3:
            case 4:
            case '\t':
                return decodeString(str, str2);
            case 5:
                return decodeString(str.toLowerCase(Locale.ROOT), str2);
            case 6:
                return str3.getBytes(StandardCharsets.UTF_8);
            case 7:
                int parseInt2 = Integer.parseInt(str3, i10);
                return new byte[]{(byte) (parseInt2 >> 8), (byte) (parseInt2 & KotlinVersion.MAX_COMPONENT_VALUE)};
            case '\b':
                long parseLong2 = Long.parseLong(str3, i10);
                return new byte[]{(byte) ((parseLong2 & (-16777216)) >> 24), (byte) ((parseLong2 & 16711680) >> 16), (byte) ((parseLong2 & 65280) >> 8), (byte) (parseLong2 & 255)};
            default:
                return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.tika.detect.MagicDetector parse(org.apache.tika.mime.MediaType r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            r0 = 0
            if (r11 == 0) goto L26
            r1 = 58
            int r1 = r11.indexOf(r1)
            r2 = -1
            if (r1 != r2) goto L11
            int r0 = java.lang.Integer.parseInt(r11)
            goto L26
        L11:
            java.lang.String r0 = r11.substring(r0, r1)
            int r0 = java.lang.Integer.parseInt(r0)
            int r1 = r1 + 1
            java.lang.String r11 = r11.substring(r1)
            int r11 = java.lang.Integer.parseInt(r11)
            r8 = r11
            r7 = r0
            goto L28
        L26:
            r7 = r0
            r8 = r7
        L28:
            byte[] r3 = decodeValue(r12, r10)
            if (r13 == 0) goto L33
            byte[] r11 = decodeValue(r13, r10)
            goto L34
        L33:
            r11 = 0
        L34:
            r4 = r11
            org.apache.tika.detect.MagicDetector r11 = new org.apache.tika.detect.MagicDetector
            java.lang.String r12 = "regex"
            boolean r5 = r10.equals(r12)
            java.lang.String r12 = "stringignorecase"
            boolean r6 = r10.equals(r12)
            r1 = r11
            r2 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.detect.MagicDetector.parse(org.apache.tika.mime.MediaType, java.lang.String, java.lang.String, java.lang.String, java.lang.String):org.apache.tika.detect.MagicDetector");
    }

    @Override // org.apache.tika.detect.Detector
    public MediaType detect(InputStream inputStream, Metadata metadata) {
        int i10;
        if (inputStream == null) {
            return MediaType.OCTET_STREAM;
        }
        inputStream.mark(this.offsetRangeEnd + this.length);
        int i11 = 0;
        while (true) {
            try {
                int i12 = this.offsetRangeBegin;
                if (i11 < i12) {
                    long skip = inputStream.skip(i12 - i11);
                    if (skip > 0) {
                        i11 = (int) (i11 + skip);
                    } else if (inputStream.read() != -1) {
                        i11++;
                    } else {
                        return MediaType.OCTET_STREAM;
                    }
                } else {
                    int i13 = this.length + (this.offsetRangeEnd - i12);
                    byte[] bArr = new byte[i13];
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        i11 += read;
                    }
                    while (read != -1 && i11 < this.offsetRangeEnd + this.length) {
                        int i14 = i11 - this.offsetRangeBegin;
                        read = inputStream.read(bArr, i14, i13 - i14);
                        if (read > 0) {
                            i11 += read;
                        }
                    }
                    if (this.isRegex) {
                        if (this.isStringIgnoreCase) {
                            i10 = 2;
                        } else {
                            i10 = 0;
                        }
                        Matcher matcher = Pattern.compile(new String(this.pattern, StandardCharsets.UTF_8), i10).matcher(StandardCharsets.ISO_8859_1.decode(ByteBuffer.wrap(bArr)));
                        for (int i15 = 0; i15 <= this.offsetRangeEnd - this.offsetRangeBegin; i15++) {
                            matcher.region(i15, this.length + i15);
                            if (matcher.lookingAt()) {
                                return this.type;
                            }
                        }
                    } else if (i11 < this.offsetRangeBegin + this.length) {
                        return MediaType.OCTET_STREAM;
                    } else {
                        for (int i16 = 0; i16 <= this.offsetRangeEnd - this.offsetRangeBegin; i16++) {
                            boolean z10 = true;
                            for (int i17 = 0; z10 && i17 < this.length; i17++) {
                                int i18 = bArr[i16 + i17] & this.mask[i17];
                                if (this.isStringIgnoreCase) {
                                    i18 = Character.toLowerCase(i18);
                                }
                                if (i18 == this.pattern[i17]) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                            }
                            if (z10) {
                                return this.type;
                            }
                        }
                    }
                    return MediaType.OCTET_STREAM;
                }
            } finally {
                inputStream.reset();
            }
        }
    }

    public int getLength() {
        return this.patternLength;
    }

    public String toString() {
        MediaType mediaType = this.type;
        byte[] bArr = this.pattern;
        int length = bArr.length;
        String arrays = Arrays.toString(bArr);
        String arrays2 = Arrays.toString(this.mask);
        return "Magic Detection for " + mediaType + " looking for " + length + " bytes = " + arrays + " mask = " + arrays2;
    }

    public MagicDetector(MediaType mediaType, byte[] bArr, int i10) {
        this(mediaType, bArr, null, i10, i10);
    }

    public MagicDetector(MediaType mediaType, byte[] bArr, byte[] bArr2, int i10, int i11) {
        this(mediaType, bArr, bArr2, false, i10, i11);
    }

    public MagicDetector(MediaType mediaType, byte[] bArr, byte[] bArr2, boolean z10, int i10, int i11) {
        this(mediaType, bArr, bArr2, z10, false, i10, i11);
    }

    public MagicDetector(MediaType mediaType, byte[] bArr, byte[] bArr2, boolean z10, boolean z11, int i10, int i11) {
        if (mediaType == null) {
            throw new IllegalArgumentException("Matching media type is null");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Magic match pattern is null");
        }
        if (i10 >= 0 && i11 >= i10) {
            this.type = mediaType;
            this.isRegex = z10;
            this.isStringIgnoreCase = z11;
            int max = Math.max(bArr.length, bArr2 != null ? bArr2.length : 0);
            this.patternLength = max;
            if (z10) {
                this.length = 8192;
            } else {
                this.length = max;
            }
            this.mask = new byte[max];
            this.pattern = new byte[max];
            for (int i12 = 0; i12 < this.patternLength; i12++) {
                if (bArr2 != null && i12 < bArr2.length) {
                    this.mask[i12] = bArr2[i12];
                } else {
                    this.mask[i12] = -1;
                }
                if (i12 < bArr.length) {
                    this.pattern[i12] = (byte) (bArr[i12] & this.mask[i12]);
                } else {
                    this.pattern[i12] = 0;
                }
            }
            this.offsetRangeBegin = i10;
            this.offsetRangeEnd = i11;
            return;
        }
        throw new IllegalArgumentException("Invalid offset range: [" + i10 + StringUtils.COMMA + i11 + "]");
    }
}
