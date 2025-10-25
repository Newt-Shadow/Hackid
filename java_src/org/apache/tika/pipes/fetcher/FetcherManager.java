package org.apache.tika.pipes.fetcher;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.tika.config.ConfigBase;
import org.apache.tika.config.j;
import org.apache.tika.exception.TikaConfigException;
/* loaded from: classes2.dex */
public class FetcherManager extends ConfigBase {
    private final Map<String, Fetcher> fetcherMap = new ConcurrentHashMap();

    public FetcherManager(List<Fetcher> list) {
        for (Fetcher fetcher : list) {
            String name = fetcher.getName();
            if (name != null && !j.a(name)) {
                if (!this.fetcherMap.containsKey(fetcher.getName())) {
                    this.fetcherMap.put(fetcher.getName(), fetcher);
                } else {
                    String name2 = fetcher.getName();
                    throw new TikaConfigException("Multiple fetchers cannot support the same prefix: " + name2);
                }
            } else {
                throw new TikaConfigException("fetcher name must not be blank");
            }
        }
    }

    public static FetcherManager load(Path path) {
        InputStream newInputStream;
        newInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            FetcherManager fetcherManager = (FetcherManager) ConfigBase.buildComposite("fetchers", FetcherManager.class, "fetcher", Fetcher.class, newInputStream);
            if (newInputStream != null) {
                newInputStream.close();
            }
            return fetcherManager;
        } catch (Throwable th) {
            if (newInputStream != null) {
                try {
                    newInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public Fetcher getFetcher(String str) {
        Fetcher fetcher = this.fetcherMap.get(str);
        if (fetcher != null) {
            return fetcher;
        }
        Set<String> keySet = this.fetcherMap.keySet();
        throw new IllegalArgumentException("Can't find fetcher for fetcherName: " + str + ". I've loaded: " + keySet);
    }

    public Set<String> getSupported() {
        return this.fetcherMap.keySet();
    }

    public Fetcher getFetcher() {
        if (this.fetcherMap.size() != 0) {
            if (this.fetcherMap.size() <= 1) {
                Iterator<Fetcher> it = this.fetcherMap.values().iterator();
                if (it.hasNext()) {
                    return it.next();
                }
                throw new IllegalArgumentException("fetchers size must == 0");
            }
            throw new IllegalArgumentException("need to specify 'fetcherName' if > 1 fetchers are available");
        }
        throw new IllegalArgumentException("fetchers size must == 1 for the no arg call");
    }
}
