package org.apache.tika.pipes;

import java.io.Serializable;
import java.util.Objects;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.pipes.extractor.EmbeddedDocumentBytesConfig;
import org.apache.tika.pipes.fetcher.FetchKey;
/* loaded from: classes2.dex */
public class FetchEmitTuple implements Serializable {
    public static final ON_PARSE_EXCEPTION DEFAULT_ON_PARSE_EXCEPTION = ON_PARSE_EXCEPTION.EMIT;
    private EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig;
    private EmitKey emitKey;
    private final FetchKey fetchKey;

    /* renamed from: id  reason: collision with root package name */
    private final String f27662id;
    private final Metadata metadata;
    private final ON_PARSE_EXCEPTION onParseException;
    private final ParseContext parseContext;

    /* loaded from: classes2.dex */
    public enum ON_PARSE_EXCEPTION {
        SKIP,
        EMIT
    }

    public FetchEmitTuple(String str, FetchKey fetchKey, EmitKey emitKey) {
        this(str, fetchKey, emitKey, new Metadata());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FetchEmitTuple fetchEmitTuple = (FetchEmitTuple) obj;
        if (Objects.equals(this.f27662id, fetchEmitTuple.f27662id) && Objects.equals(this.fetchKey, fetchEmitTuple.fetchKey) && Objects.equals(this.emitKey, fetchEmitTuple.emitKey) && Objects.equals(this.metadata, fetchEmitTuple.metadata) && Objects.equals(this.parseContext, fetchEmitTuple.parseContext) && this.onParseException == fetchEmitTuple.onParseException && Objects.equals(this.embeddedDocumentBytesConfig, fetchEmitTuple.embeddedDocumentBytesConfig)) {
            return true;
        }
        return false;
    }

    public EmitKey getEmitKey() {
        return this.emitKey;
    }

    public FetchKey getFetchKey() {
        return this.fetchKey;
    }

    public String getId() {
        return this.f27662id;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public ON_PARSE_EXCEPTION getOnParseException() {
        return this.onParseException;
    }

    public ParseContext getParseContext() {
        return this.parseContext;
    }

    public int hashCode() {
        return (((((((((((Objects.hashCode(this.f27662id) * 31) + Objects.hashCode(this.fetchKey)) * 31) + Objects.hashCode(this.emitKey)) * 31) + Objects.hashCode(this.metadata)) * 31) + Objects.hashCode(this.parseContext)) * 31) + Objects.hashCode(this.onParseException)) * 31) + Objects.hashCode(this.embeddedDocumentBytesConfig);
    }

    public void setEmitKey(EmitKey emitKey) {
        this.emitKey = emitKey;
    }

    public String toString() {
        String str = this.f27662id;
        FetchKey fetchKey = this.fetchKey;
        EmitKey emitKey = this.emitKey;
        Metadata metadata = this.metadata;
        ParseContext parseContext = this.parseContext;
        ON_PARSE_EXCEPTION on_parse_exception = this.onParseException;
        EmbeddedDocumentBytesConfig embeddedDocumentBytesConfig = this.embeddedDocumentBytesConfig;
        return "FetchEmitTuple{id='" + str + "', fetchKey=" + fetchKey + ", emitKey=" + emitKey + ", metadata=" + metadata + ", parseContext=" + parseContext + ", onParseException=" + on_parse_exception + ", embeddedDocumentBytesConfig=" + embeddedDocumentBytesConfig + "}";
    }

    public FetchEmitTuple(String str, FetchKey fetchKey, EmitKey emitKey, Metadata metadata) {
        this(str, fetchKey, emitKey, metadata, new ParseContext());
    }

    public FetchEmitTuple(String str, FetchKey fetchKey, EmitKey emitKey, Metadata metadata, ParseContext parseContext) {
        this(str, fetchKey, emitKey, metadata, parseContext, ON_PARSE_EXCEPTION.EMIT);
    }

    public FetchEmitTuple(String str, FetchKey fetchKey, EmitKey emitKey, Metadata metadata, ParseContext parseContext, ON_PARSE_EXCEPTION on_parse_exception) {
        this.f27662id = str;
        this.fetchKey = fetchKey;
        this.emitKey = emitKey;
        this.metadata = metadata;
        this.parseContext = parseContext;
        this.onParseException = on_parse_exception;
    }
}
