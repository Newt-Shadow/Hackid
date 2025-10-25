package org.apache.tika.pipes.fetcher;

import java.io.InputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
/* loaded from: classes2.dex */
public interface RangeFetcher extends Fetcher {
    default InputStream fetch(String str, long j10, long j11, Metadata metadata) {
        return fetch(str, j10, j11, metadata, new ParseContext());
    }

    InputStream fetch(String str, long j10, long j11, Metadata metadata, ParseContext parseContext);
}
