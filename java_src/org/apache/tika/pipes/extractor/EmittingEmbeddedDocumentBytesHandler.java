package org.apache.tika.pipes.extractor;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.extractor.AbstractEmbeddedDocumentBytesHandler;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.pipes.FetchEmitTuple;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.pipes.emitter.Emitter;
import org.apache.tika.pipes.emitter.EmitterManager;
import org.apache.tika.pipes.emitter.StreamEmitter;
import org.apache.tika.pipes.emitter.TikaEmitterException;
/* loaded from: classes2.dex */
public class EmittingEmbeddedDocumentBytesHandler extends AbstractEmbeddedDocumentBytesHandler {
    private static final Metadata METADATA = new Metadata();
    private static final ParseContext PARSE_CONTEXT = new ParseContext();
    private final EmitKey containerEmitKey;
    private final EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig;
    private final StreamEmitter emitter;

    public EmittingEmbeddedDocumentBytesHandler(FetchEmitTuple fetchEmitTuple, EmitterManager emitterManager) {
        this.containerEmitKey = fetchEmitTuple.getEmitKey();
        EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig = (EmbeddedDocumentBytesConfig) fetchEmitTuple.getParseContext().get(EmbeddedDocumentBytesConfig.class);
        this.embeddedDocumentBytesConfig = embeddedDocumentBytesConfig;
        if (embeddedDocumentBytesConfig != null) {
            Emitter emitter = emitterManager.getEmitter(embeddedDocumentBytesConfig.getEmitter());
            if (emitter instanceof StreamEmitter) {
                this.emitter = (StreamEmitter) emitter;
                return;
            }
            String emitter2 = embeddedDocumentBytesConfig.getEmitter();
            throw new TikaConfigException("Emitter " + emitter2 + " must implement a StreamEmitter");
        }
        throw new TikaConfigException("EmbeddedDocumentBytesConfig must not be null!");
    }

    @Override // org.apache.tika.extractor.AbstractEmbeddedDocumentBytesHandler, org.apache.tika.extractor.EmbeddedDocumentBytesHandler
    public void add(int i10, Metadata metadata, InputStream inputStream) {
        try {
            this.emitter.emit(getEmitKey(this.containerEmitKey.getEmitKey(), i10, this.embeddedDocumentBytesConfig, metadata), inputStream, METADATA, PARSE_CONTEXT);
        } catch (TikaEmitterException e10) {
            throw new IOException(e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        StreamEmitter streamEmitter = this.emitter;
        if (streamEmitter instanceof Closeable) {
            ((Closeable) streamEmitter).close();
        }
    }
}
