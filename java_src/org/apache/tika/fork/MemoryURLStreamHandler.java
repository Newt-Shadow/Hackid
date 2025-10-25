package org.apache.tika.fork;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
class MemoryURLStreamHandler extends URLStreamHandler {
    private static final AtomicInteger counter = new AtomicInteger();
    private static final List<MemoryURLStreamRecord> records = new LinkedList();

    public static URL createURL(byte[] bArr) {
        try {
            int incrementAndGet = counter.incrementAndGet();
            URL url = new URI("tika-in-memory", "localhost", "/" + incrementAndGet).toURL();
            MemoryURLStreamRecord memoryURLStreamRecord = new MemoryURLStreamRecord();
            memoryURLStreamRecord.url = new WeakReference<>(url);
            memoryURLStreamRecord.data = bArr;
            records.add(memoryURLStreamRecord);
            return url;
        } catch (MalformedURLException | URISyntaxException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // java.net.URLStreamHandler
    protected URLConnection openConnection(URL url) {
        Iterator<MemoryURLStreamRecord> it = records.iterator();
        while (it.hasNext()) {
            MemoryURLStreamRecord next = it.next();
            URL url2 = next.url.get();
            if (url2 == null) {
                it.remove();
            } else if (url2 == url) {
                return new MemoryURLConnection(url, next.data);
            }
        }
        throw new IOException("Unknown URL: " + url);
    }
}
