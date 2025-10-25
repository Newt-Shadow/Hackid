package org.apache.tika.detect;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
/* loaded from: classes2.dex */
public abstract class TrainedModelDetector implements Detector {
    private static final long serialVersionUID = 1;
    private final Map<MediaType, TrainedModel> MODEL_MAP = new HashMap();

    public TrainedModelDetector() {
        loadDefaultModels(getClass().getClassLoader());
    }

    private void writeHisto(float[] fArr) {
        BufferedWriter newBufferedWriter;
        newBufferedWriter = Files.newBufferedWriter(new TemporaryResources().createTempFile(), StandardCharsets.UTF_8, new OpenOption[0]);
        try {
            for (float f10 : fArr) {
                newBufferedWriter.write(f10 + "\t");
            }
            newBufferedWriter.write("\r\n");
            newBufferedWriter.close();
        } catch (Throwable th) {
            if (newBufferedWriter != null) {
                try {
                    newBufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // org.apache.tika.detect.Detector
    public MediaType detect(InputStream inputStream, Metadata metadata) {
        if (inputStream != null) {
            inputStream.mark(getMinLength());
            float[] readByteFrequencies = readByteFrequencies(inputStream);
            MediaType mediaType = MediaType.OCTET_STREAM;
            float f10 = 0.5f;
            for (Map.Entry<MediaType, TrainedModel> entry : this.MODEL_MAP.entrySet()) {
                MediaType key = entry.getKey();
                float predict = entry.getValue().predict(readByteFrequencies);
                if (f10 < predict) {
                    f10 = predict;
                    mediaType = key;
                }
            }
            inputStream.reset();
            return mediaType;
        }
        return null;
    }

    public int getMinLength() {
        return Integer.MAX_VALUE;
    }

    public abstract void loadDefaultModels(InputStream inputStream);

    public abstract void loadDefaultModels(ClassLoader classLoader);

    public void loadDefaultModels(Path path) {
        InputStream newInputStream;
        try {
            newInputStream = Files.newInputStream(path, new OpenOption[0]);
            loadDefaultModels(newInputStream);
            if (newInputStream != null) {
                newInputStream.close();
            }
        } catch (IOException e10) {
            throw new RuntimeException("Unable to read the default media type registry", e10);
        }
    }

    protected float[] readByteFrequencies(InputStream inputStream) {
        ReadableByteChannel newChannel = Channels.newChannel(inputStream);
        float[] fArr = new float[257];
        fArr[0] = 1.0f;
        ByteBuffer allocate = ByteBuffer.allocate(5120);
        float f10 = -1.0f;
        for (int read = newChannel.read(allocate); read != -1; read = newChannel.read(allocate)) {
            allocate.flip();
            while (allocate.hasRemaining()) {
                byte b10 = allocate.get();
                int i10 = b10 + 1;
                if (b10 < 0) {
                    i10 += 256;
                    fArr[i10] = fArr[i10] + 1.0f;
                } else {
                    fArr[i10] = fArr[i10] + 1.0f;
                }
                f10 = Math.max(f10, fArr[i10]);
            }
            ByteBuffer byteBuffer = (ByteBuffer) allocate.clear();
        }
        for (int i11 = 1; i11 < 257; i11++) {
            float f11 = fArr[i11] / f10;
            fArr[i11] = f11;
            fArr[i11] = (float) Math.sqrt(f11);
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerModels(MediaType mediaType, TrainedModel trainedModel) {
        this.MODEL_MAP.put(mediaType, trainedModel);
    }

    public void loadDefaultModels(File file) {
        Path path;
        path = file.toPath();
        loadDefaultModels(path);
    }
}
