package org.apache.tika.detect;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
/* loaded from: classes2.dex */
public class CompositeEncodingDetector implements EncodingDetector, Serializable {
    private static final long serialVersionUID = 5980683158436430252L;
    private final List<EncodingDetector> detectors;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeEncodingDetector(List<EncodingDetector> list, Collection<Class<? extends EncodingDetector>> collection) {
        this.detectors = new LinkedList();
        for (EncodingDetector encodingDetector : list) {
            if (!isExcluded(collection, encodingDetector.getClass())) {
                this.detectors.add(encodingDetector);
            }
        }
    }

    private boolean assignableFrom(Collection<Class<? extends EncodingDetector>> collection, Class<? extends EncodingDetector> cls) {
        for (Class<? extends EncodingDetector> cls2 : collection) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean isExcluded(Collection<Class<? extends EncodingDetector>> collection, Class<? extends EncodingDetector> cls) {
        if (!collection.contains(cls) && !assignableFrom(collection, cls)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.tika.detect.EncodingDetector
    public Charset detect(InputStream inputStream, Metadata metadata) {
        for (EncodingDetector encodingDetector : getDetectors()) {
            Charset detect = encodingDetector.detect(inputStream, metadata);
            if (detect != null) {
                metadata.set(TikaCoreProperties.DETECTED_ENCODING, detect.name());
                if (!encodingDetector.getClass().getSimpleName().equals("CompositeEncodingDetector")) {
                    metadata.set(TikaCoreProperties.ENCODING_DETECTOR, encodingDetector.getClass().getSimpleName());
                }
                return detect;
            }
        }
        return null;
    }

    public List<EncodingDetector> getDetectors() {
        return Collections.unmodifiableList(this.detectors);
    }

    public CompositeEncodingDetector(List<EncodingDetector> list) {
        LinkedList linkedList = new LinkedList();
        this.detectors = linkedList;
        linkedList.addAll(list);
    }
}
