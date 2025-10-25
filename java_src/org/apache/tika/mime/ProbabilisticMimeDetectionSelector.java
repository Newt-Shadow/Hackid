package org.apache.tika.mime;

import java.util.List;
import org.apache.tika.detect.Detector;
/* loaded from: classes2.dex */
public class ProbabilisticMimeDetectionSelector implements Detector {
    private static final float DEFAULT_EXTENSION_TRUST = 0.8f;
    private static final float DEFAULT_MAGIC_TRUST = 0.9f;
    private static final float DEFAULT_META_TRUST = 0.8f;
    private static final long serialVersionUID = 224589862960269260L;
    private final float changeRate;
    private float extension_neg;
    private float extension_trust;
    private float magic_neg;
    private float magic_trust;
    private float meta_neg;
    private float meta_trust;
    private final MimeTypes mimeTypes;
    private float priorExtensionFileType;
    private float priorMagicFileType;
    private float priorMetaFileType;
    private final MediaType rootMediaType;
    private float threshold;

    /* loaded from: classes2.dex */
    public static class Builder {
        private float extension_neg;
        private float extension_trust;
        private float magic_neg;
        private float magic_trust;
        private float meta_neg;
        private float meta_trust;
        private float priorExtensionFileType;
        private float priorMagicFileType;
        private float priorMetaFileType;
        private float threshold;

        public ProbabilisticMimeDetectionSelector build2() {
            return new ProbabilisticMimeDetectionSelector(this);
        }

        public synchronized Builder extension_neg(float f10) {
            this.extension_neg = f10;
            return this;
        }

        public synchronized Builder extension_trust(float f10) {
            this.extension_trust = f10;
            return this;
        }

        public synchronized Builder magic_neg(float f10) {
            this.magic_neg = f10;
            return this;
        }

        public synchronized Builder magic_trust(float f10) {
            this.magic_trust = f10;
            return this;
        }

        public synchronized Builder meta_neg(float f10) {
            this.meta_neg = f10;
            return this;
        }

        public synchronized Builder meta_trust(float f10) {
            this.meta_trust = f10;
            return this;
        }

        public synchronized Builder priorExtensionFileType(float f10) {
            this.priorExtensionFileType = f10;
            return this;
        }

        public synchronized Builder priorMagicFileType(float f10) {
            this.priorMagicFileType = f10;
            return this;
        }

        public synchronized Builder priorMetaFileType(float f10) {
            this.priorMetaFileType = f10;
            return this;
        }

        public synchronized Builder threshold(float f10) {
            this.threshold = f10;
            return this;
        }
    }

    public ProbabilisticMimeDetectionSelector() {
        this(MimeTypes.getDefaultMimeTypes(), null);
    }

    private MediaType applyProbilities(List<MimeType> list, MimeType mimeType, MimeType mimeType2) {
        MediaType type;
        float f10;
        MediaType mediaType;
        MediaType mediaType2;
        int i10;
        List<MimeType> list2 = list;
        MimeType mimeType3 = mimeType;
        MimeType mimeType4 = mimeType2;
        MediaType mediaType3 = null;
        if (mimeType3 == null) {
            type = null;
        } else {
            type = mimeType.getType();
        }
        if (mimeType4 != null) {
            mediaType3 = mimeType2.getType();
        }
        int size = list.size();
        float f11 = this.magic_trust;
        float f12 = this.magic_neg;
        float f13 = this.extension_trust;
        float f14 = this.extension_neg;
        float f15 = this.meta_trust;
        float f16 = this.meta_neg;
        if (type == null || type.compareTo(this.rootMediaType) == 0) {
            f13 = 1.0f;
            f14 = 1.0f;
        }
        if (mediaType3 == null || mediaType3.compareTo(this.rootMediaType) == 0) {
            f15 = 1.0f;
            f16 = 1.0f;
        }
        MediaType mediaType4 = this.rootMediaType;
        float f17 = -1.0f;
        if (!list.isEmpty()) {
            int i11 = 0;
            while (i11 < size) {
                MediaType type2 = list2.get(i11).getType();
                int i12 = size;
                MediaTypeRegistry mediaTypeRegistry = this.mimeTypes.getMediaTypeRegistry();
                float f18 = f11;
                if (type2 != null && type2.equals(this.rootMediaType)) {
                    f11 = 1.0f;
                    f12 = 1.0f;
                } else {
                    if (type != null) {
                        if (!type.equals(type2) && !mediaTypeRegistry.isSpecializationOf(type, type2)) {
                            if (mediaTypeRegistry.isSpecializationOf(type2, type)) {
                                type = type2;
                            }
                        } else {
                            list2.set(i11, mimeType3);
                        }
                    }
                    if (mediaType3 != null) {
                        if (!mediaType3.equals(type2) && !mediaTypeRegistry.isSpecializationOf(mediaType3, type2)) {
                            if (mediaTypeRegistry.isSpecializationOf(type2, mediaType3)) {
                                mediaType3 = type2;
                            }
                        } else {
                            list2.set(i11, mimeType4);
                        }
                    }
                    f11 = f18;
                }
                float[] fArr = new float[3];
                float[] fArr2 = new float[3];
                MediaType mediaType5 = mediaType4;
                float[] fArr3 = new float[3];
                MediaType type3 = list2.get(i11).getType();
                if (i11 > 0) {
                    float f19 = this.changeRate;
                    f10 = 1.0f;
                    f11 *= 1.0f - f19;
                    f12 *= f19 + 1.0f;
                } else {
                    f10 = 1.0f;
                }
                if (type3 != null && f11 != f10) {
                    fArr2[0] = f11;
                    fArr3[0] = f12;
                    if (mediaType3 != null && f15 != f10) {
                        if (type3.equals(mediaType3)) {
                            fArr2[1] = f15;
                            fArr3[1] = f16;
                        } else {
                            fArr2[1] = f10 - f15;
                            fArr3[1] = f10 - f16;
                        }
                    } else {
                        fArr2[1] = f10;
                        fArr3[1] = f10;
                    }
                    if (type != null && f13 != f10) {
                        if (type3.equals(type)) {
                            fArr2[2] = f13;
                            fArr3[2] = f14;
                        } else {
                            fArr2[2] = f10 - f13;
                            fArr3[2] = f10 - f14;
                        }
                    } else {
                        fArr2[2] = f10;
                        fArr3[2] = f10;
                    }
                } else {
                    fArr[0] = 0.1f;
                }
                int i13 = i11;
                float[] fArr4 = new float[3];
                float[] fArr5 = new float[3];
                if (mimeType4 != null && f15 != f10) {
                    fArr4[1] = f15;
                    fArr5[1] = f16;
                    if (type3 != null && f11 != f10) {
                        if (mediaType3.equals(type3)) {
                            fArr4[0] = f11;
                            fArr5[0] = f12;
                        } else {
                            fArr4[0] = f10 - f11;
                            fArr5[0] = f10 - f12;
                        }
                    } else {
                        fArr4[0] = f10;
                        fArr5[0] = f10;
                    }
                    if (type != null && f13 != f10) {
                        if (mediaType3.equals(type)) {
                            fArr4[2] = f13;
                            fArr5[2] = f14;
                        } else {
                            fArr4[2] = f10 - f13;
                            fArr5[2] = f10 - f14;
                        }
                    } else {
                        fArr4[2] = f10;
                        fArr5[2] = f10;
                    }
                } else {
                    fArr[1] = 0.1f;
                }
                float[] fArr6 = new float[3];
                float[] fArr7 = new float[3];
                if (type != null && f13 != f10) {
                    fArr6[2] = f13;
                    fArr7[2] = f14;
                    if (type3 != null && f11 != f10) {
                        if (type3.equals(type)) {
                            fArr6[0] = f11;
                            fArr7[0] = f12;
                        } else {
                            fArr6[0] = f10 - f11;
                            fArr7[0] = f10 - f12;
                        }
                    } else {
                        fArr6[0] = f10;
                        fArr7[0] = f10;
                    }
                    if (mediaType3 != null && f15 != f10) {
                        if (mediaType3.equals(type)) {
                            fArr6[1] = f15;
                            fArr7[1] = f16;
                        } else {
                            fArr6[1] = f10 - f15;
                            fArr7[1] = f10 - f16;
                        }
                    } else {
                        fArr6[1] = f10;
                        fArr7[1] = f10;
                    }
                } else {
                    fArr[2] = 0.1f;
                }
                float f20 = this.priorMagicFileType;
                float f21 = f10 - f20;
                if (fArr[0] == 0.0f) {
                    mediaType2 = type;
                    float f22 = f21;
                    int i14 = 3;
                    mediaType = mediaType3;
                    int i15 = 0;
                    while (i15 < i14) {
                        float f23 = fArr2[i15];
                        f20 *= f23;
                        if (f23 != f10) {
                            f22 *= fArr3[i15];
                        }
                        i15++;
                        i14 = 3;
                        f10 = 1.0f;
                    }
                    i10 = 0;
                    fArr[0] = f20 / (f20 + f22);
                } else {
                    mediaType = mediaType3;
                    mediaType2 = type;
                    i10 = 0;
                }
                float f24 = fArr[i10];
                if (f17 < f24) {
                    f17 = f24;
                    mediaType5 = type3;
                }
                float f25 = this.priorMetaFileType;
                float f26 = 1.0f;
                float f27 = 1.0f - f25;
                if (fArr[1] == 0.0f) {
                    int i16 = i10;
                    while (i16 < 3) {
                        float f28 = fArr4[i16];
                        f25 *= f28;
                        if (f28 != f26) {
                            f27 *= fArr5[i16];
                        }
                        i16++;
                        f26 = 1.0f;
                    }
                    fArr[1] = f25 / (f27 + f25);
                }
                float f29 = fArr[1];
                if (f17 < f29) {
                    f17 = f29;
                    mediaType5 = mediaType;
                }
                float f30 = this.priorExtensionFileType;
                float f31 = 1.0f - f30;
                if (fArr[2] == 0.0f) {
                    for (int i17 = i10; i17 < 3; i17++) {
                        float f32 = fArr6[i17];
                        f30 *= f32;
                        if (f32 != 1.0f) {
                            f31 *= fArr7[i17];
                        }
                    }
                    fArr[2] = f30 / (f31 + f30);
                }
                float f33 = fArr[2];
                if (f17 < f33) {
                    f17 = f33;
                    mediaType4 = mediaType2;
                } else {
                    mediaType4 = mediaType5;
                }
                i11 = i13 + 1;
                list2 = list;
                mimeType3 = mimeType;
                mimeType4 = mimeType2;
                size = i12;
                mediaType3 = mediaType;
                type = mediaType2;
            }
        }
        if (f17 < this.threshold) {
            return this.rootMediaType;
        }
        return mediaType4;
    }

    private void initializeDefaultProbabilityParameters() {
        this.priorMagicFileType = 0.5f;
        this.priorExtensionFileType = 0.5f;
        this.priorMetaFileType = 0.5f;
        this.magic_trust = DEFAULT_MAGIC_TRUST;
        this.extension_trust = 0.8f;
        this.meta_trust = 0.8f;
        this.magic_neg = 0.100000024f;
        this.extension_neg = 0.19999999f;
        this.meta_neg = 0.19999999f;
        this.threshold = 0.5001f;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // org.apache.tika.detect.Detector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.tika.mime.MediaType detect(java.io.InputStream r6, org.apache.tika.metadata.Metadata r7) {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r6 == 0) goto L28
            org.apache.tika.mime.MimeTypes r1 = r5.mimeTypes
            int r1 = r1.getMinLength()
            r6.mark(r1)
            org.apache.tika.mime.MimeTypes r1 = r5.mimeTypes     // Catch: java.lang.Throwable -> L23
            byte[] r1 = r1.readMagicHeader(r6)     // Catch: java.lang.Throwable -> L23
            org.apache.tika.mime.MimeTypes r2 = r5.mimeTypes     // Catch: java.lang.Throwable -> L23
            java.util.List r1 = r2.getMimeType(r1)     // Catch: java.lang.Throwable -> L23
            r0.addAll(r1)     // Catch: java.lang.Throwable -> L23
            r6.reset()
            goto L28
        L23:
            r7 = move-exception
            r6.reset()
            throw r7
        L28:
            java.lang.String r6 = "resourceName"
            java.lang.String r6 = r7.get(r6)
            r1 = 0
            if (r6 == 0) goto L59
            java.net.URI r2 = new java.net.URI     // Catch: java.net.URISyntaxException -> L50
            r2.<init>(r6)     // Catch: java.net.URISyntaxException -> L50
            java.lang.String r2 = r2.getPath()     // Catch: java.net.URISyntaxException -> L50
            if (r2 == 0) goto L4f
            r3 = 47
            int r3 = r2.lastIndexOf(r3)     // Catch: java.net.URISyntaxException -> L50
            int r3 = r3 + 1
            int r4 = r2.length()     // Catch: java.net.URISyntaxException -> L50
            if (r3 >= r4) goto L4f
            java.lang.String r6 = r2.substring(r3)     // Catch: java.net.URISyntaxException -> L50
            goto L50
        L4f:
            r6 = r1
        L50:
            if (r6 == 0) goto L59
            org.apache.tika.mime.MimeTypes r2 = r5.mimeTypes
            org.apache.tika.mime.MimeType r6 = r2.getMimeType(r6)
            goto L5a
        L59:
            r6 = r1
        L5a:
            java.lang.String r2 = "Content-Type"
            java.lang.String r7 = r7.get(r2)
            if (r7 == 0) goto L68
            org.apache.tika.mime.MimeTypes r2 = r5.mimeTypes     // Catch: org.apache.tika.mime.MimeTypeException -> L68
            org.apache.tika.mime.MimeType r1 = r2.forName(r7)     // Catch: org.apache.tika.mime.MimeTypeException -> L68
        L68:
            org.apache.tika.mime.MediaType r6 = r5.applyProbilities(r0, r6, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.mime.ProbabilisticMimeDetectionSelector.detect(java.io.InputStream, org.apache.tika.metadata.Metadata):org.apache.tika.mime.MediaType");
    }

    public MediaTypeRegistry getMediaTypeRegistry() {
        return this.mimeTypes.getMediaTypeRegistry();
    }

    public ProbabilisticMimeDetectionSelector(Builder builder) {
        this(MimeTypes.getDefaultMimeTypes(), builder);
    }

    public ProbabilisticMimeDetectionSelector(MimeTypes mimeTypes) {
        this(mimeTypes, null);
    }

    public ProbabilisticMimeDetectionSelector(MimeTypes mimeTypes, Builder builder) {
        this.mimeTypes = mimeTypes;
        this.rootMediaType = MediaType.OCTET_STREAM;
        initializeDefaultProbabilityParameters();
        this.changeRate = 0.1f;
        if (builder != null) {
            this.priorMagicFileType = builder.priorMagicFileType == 0.0f ? this.priorMagicFileType : builder.priorMagicFileType;
            this.priorExtensionFileType = builder.priorExtensionFileType == 0.0f ? this.priorExtensionFileType : builder.priorExtensionFileType;
            this.priorMetaFileType = builder.priorMetaFileType == 0.0f ? this.priorMetaFileType : builder.priorMetaFileType;
            this.magic_trust = builder.magic_trust == 0.0f ? this.magic_trust : builder.extension_neg;
            this.extension_trust = builder.extension_trust == 0.0f ? this.extension_trust : builder.extension_trust;
            this.meta_trust = builder.meta_trust == 0.0f ? this.meta_trust : builder.meta_trust;
            this.magic_neg = builder.magic_neg == 0.0f ? this.magic_neg : builder.magic_neg;
            this.extension_neg = builder.extension_neg == 0.0f ? this.extension_neg : builder.extension_neg;
            this.meta_neg = builder.meta_neg == 0.0f ? this.meta_neg : builder.meta_neg;
            this.threshold = builder.threshold == 0.0f ? this.threshold : builder.threshold;
        }
    }
}
