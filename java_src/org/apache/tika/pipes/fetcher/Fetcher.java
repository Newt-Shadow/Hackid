package org.apache.tika.pipes.fetcher;

import java.io.InputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
/* loaded from: classes2.dex */
public interface Fetcher {
    InputStream fetch(String str, Metadata metadata, ParseContext parseContext);

    String getName();
}
