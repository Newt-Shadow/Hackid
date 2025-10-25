package org.apache.tika.detect;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.mime.MediaType;
/* loaded from: classes2.dex */
public class NameDetector implements Detector {
    private final Map<Pattern, MediaType> patterns;

    public NameDetector(Map<Pattern, MediaType> map) {
        this.patterns = map;
    }

    @Override // org.apache.tika.detect.Detector
    public MediaType detect(InputStream inputStream, Metadata metadata) {
        String str = metadata.get(TikaCoreProperties.RESOURCE_NAME_KEY);
        if (str != null) {
            int indexOf = str.indexOf(63);
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf != -1) {
                str = str.substring(lastIndexOf + 1);
            }
            int lastIndexOf2 = str.lastIndexOf(92);
            if (lastIndexOf2 != -1) {
                str = str.substring(lastIndexOf2 + 1);
            }
            int lastIndexOf3 = str.lastIndexOf(35);
            int lastIndexOf4 = str.lastIndexOf(46);
            if (lastIndexOf3 != -1 && (lastIndexOf4 == -1 || lastIndexOf3 > lastIndexOf4)) {
                str = str.substring(0, lastIndexOf3);
            }
            if (str.indexOf(37) != -1) {
                try {
                    str = URLDecoder.decode(str, StandardCharsets.UTF_8.name());
                } catch (UnsupportedEncodingException e10) {
                    throw new IllegalStateException("UTF-8 not supported", e10);
                }
            }
            String trim = str.trim();
            if (trim.length() > 0) {
                for (Map.Entry<Pattern, MediaType> entry : this.patterns.entrySet()) {
                    if (entry.getKey().matcher(trim).matches()) {
                        return entry.getValue();
                    }
                }
            }
        }
        return MediaType.OCTET_STREAM;
    }
}
