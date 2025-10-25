package org.apache.tika.mime;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class MediaTypeRegistry implements Serializable {
    private static final long serialVersionUID = 4710974869988895410L;
    private final Map<MediaType, MediaType> registry = new ConcurrentHashMap();
    private final Map<MediaType, MediaType> inheritance = new HashMap();

    public static MediaTypeRegistry getDefaultRegistry() {
        return MimeTypes.getDefaultMimeTypes().getMediaTypeRegistry();
    }

    public void addAlias(MediaType mediaType, MediaType mediaType2) {
        this.registry.put(mediaType2, mediaType);
    }

    public void addSuperType(MediaType mediaType, MediaType mediaType2) {
        this.inheritance.put(mediaType, mediaType2);
    }

    public void addType(MediaType mediaType) {
        this.registry.put(mediaType, mediaType);
    }

    public SortedSet<MediaType> getAliases(MediaType mediaType) {
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<MediaType, MediaType> entry : this.registry.entrySet()) {
            if (entry.getValue().equals(mediaType) && !entry.getKey().equals(mediaType)) {
                treeSet.add(entry.getKey());
            }
        }
        return treeSet;
    }

    public SortedSet<MediaType> getChildTypes(MediaType mediaType) {
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<MediaType, MediaType> entry : this.inheritance.entrySet()) {
            if (entry.getValue().equals(mediaType)) {
                treeSet.add(entry.getKey());
            }
        }
        return treeSet;
    }

    public MediaType getSupertype(MediaType mediaType) {
        if (mediaType == null) {
            return null;
        }
        if (this.inheritance.containsKey(mediaType)) {
            return this.inheritance.get(mediaType);
        }
        if (mediaType.hasParameters()) {
            return mediaType.getBaseType();
        }
        if (mediaType.getSubtype().endsWith("+xml")) {
            return MediaType.APPLICATION_XML;
        }
        if (mediaType.getSubtype().endsWith("+zip")) {
            return MediaType.APPLICATION_ZIP;
        }
        if ("text".equals(mediaType.getType())) {
            MediaType mediaType2 = MediaType.TEXT_PLAIN;
            if (!mediaType2.equals(mediaType)) {
                return mediaType2;
            }
        }
        if (mediaType.getType().contains("empty")) {
            MediaType mediaType3 = MediaType.EMPTY;
            if (!mediaType3.equals(mediaType)) {
                return mediaType3;
            }
        }
        MediaType mediaType4 = MediaType.OCTET_STREAM;
        if (mediaType4.equals(mediaType)) {
            return null;
        }
        return mediaType4;
    }

    public SortedSet<MediaType> getTypes() {
        return new TreeSet(this.registry.values());
    }

    public boolean isInstanceOf(MediaType mediaType, MediaType mediaType2) {
        return mediaType != null && (mediaType.equals(mediaType2) || isSpecializationOf(mediaType, mediaType2));
    }

    public boolean isSpecializationOf(MediaType mediaType, MediaType mediaType2) {
        return isInstanceOf(getSupertype(mediaType), mediaType2);
    }

    public MediaType normalize(MediaType mediaType) {
        if (mediaType == null) {
            return null;
        }
        MediaType mediaType2 = this.registry.get(mediaType.getBaseType());
        if (mediaType2 == null) {
            return mediaType;
        }
        if (mediaType.hasParameters()) {
            return new MediaType(mediaType2, mediaType.getParameters());
        }
        return mediaType2;
    }

    public boolean isInstanceOf(String str, MediaType mediaType) {
        return isInstanceOf(normalize(MediaType.parse(str)), mediaType);
    }
}
