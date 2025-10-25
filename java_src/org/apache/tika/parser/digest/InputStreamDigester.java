package org.apache.tika.parser.digest;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import org.apache.tika.exception.TikaException;
import org.apache.tika.io.BoundedInputStream;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.HttpHeaders;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.DigestingParser;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class InputStreamDigester implements DigestingParser.Digester {
    private final String algorithm;
    private final String algorithmKeyName;
    private final DigestingParser.Encoder encoder;
    private final int markLimit;

    public InputStreamDigester(int i10, String str, DigestingParser.Encoder encoder) {
        this(i10, str, str, encoder);
    }

    private void digestFile(File file, long j10, Metadata metadata) {
        if (StringUtils.isBlank(metadata.get(HttpHeaders.CONTENT_LENGTH))) {
            if (j10 < 0) {
                j10 = file.length();
            }
            setContentLength(j10, metadata);
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            digestStream(fileInputStream, metadata);
            fileInputStream.close();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private boolean digestStream(InputStream inputStream, Metadata metadata) {
        MessageDigest newMessageDigest = newMessageDigest();
        updateDigest(newMessageDigest, inputStream, metadata);
        byte[] digest = newMessageDigest.digest();
        if ((inputStream instanceof BoundedInputStream) && ((BoundedInputStream) inputStream).hasHitBound()) {
            return false;
        }
        metadata.set(getMetadataKey(), this.encoder.encode(digest));
        return true;
    }

    private String getMetadataKey() {
        String str = this.algorithmKeyName;
        return "X-TIKA:digest:" + str;
    }

    private MessageDigest newMessageDigest() {
        try {
            Provider provider = getProvider();
            if (provider == null) {
                return MessageDigest.getInstance(this.algorithm);
            }
            return MessageDigest.getInstance(this.algorithm, provider);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    private static void setContentLength(long j10, Metadata metadata) {
        if (StringUtils.isBlank(metadata.get(HttpHeaders.CONTENT_LENGTH))) {
            metadata.set(HttpHeaders.CONTENT_LENGTH, Long.toString(j10));
        }
    }

    private static MessageDigest updateDigest(MessageDigest messageDigest, InputStream inputStream, Metadata metadata) {
        byte[] bArr = new byte[1024];
        int read = inputStream.read(bArr, 0, 1024);
        long j10 = 0;
        while (read > -1) {
            messageDigest.update(bArr, 0, read);
            j10 += read;
            read = inputStream.read(bArr, 0, 1024);
        }
        setContentLength(j10, metadata);
        return messageDigest;
    }

    @Override // org.apache.tika.parser.DigestingParser.Digester
    public void digest(InputStream inputStream, Metadata metadata, ParseContext parseContext) {
        long j10;
        TikaInputStream cast = TikaInputStream.cast(inputStream);
        if (cast != null && cast.hasFile()) {
            if (cast.hasFile()) {
                j10 = cast.getLength();
            } else {
                j10 = -1;
            }
            if (j10 > this.markLimit) {
                digestFile(cast.getFile(), j10, metadata);
                return;
            }
        }
        BoundedInputStream boundedInputStream = new BoundedInputStream(this.markLimit, inputStream);
        boundedInputStream.mark(this.markLimit + 1);
        boolean digestStream = digestStream(boundedInputStream, metadata);
        boundedInputStream.reset();
        if (digestStream) {
            return;
        }
        if (cast != null) {
            digestFile(cast.getFile(), -1L, metadata);
            return;
        }
        TemporaryResources temporaryResources = new TemporaryResources();
        try {
            digestFile(TikaInputStream.get(inputStream, temporaryResources, metadata).getFile(), -1L, metadata);
            try {
                temporaryResources.dispose();
            } catch (TikaException e10) {
                throw new IOException(e10);
            }
        } catch (Throwable th) {
            try {
                temporaryResources.dispose();
                throw th;
            } catch (TikaException e11) {
                throw new IOException(e11);
            }
        }
    }

    protected Provider getProvider() {
        return null;
    }

    public InputStreamDigester(int i10, String str, String str2, DigestingParser.Encoder encoder) {
        this.algorithm = str;
        this.algorithmKeyName = str2;
        this.encoder = encoder;
        this.markLimit = i10;
        if (i10 < 0) {
            throw new IllegalArgumentException("markLimit must be >= 0");
        }
    }
}
